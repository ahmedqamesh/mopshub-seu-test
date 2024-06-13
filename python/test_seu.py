import sys, getopt
import threading
from time import sleep
import time
import multiprocessing 
from logging_messages import *
from serial_port import get_controller_port
import serial_listener
import control_fpga
from board_manual import *
import queue 
	
# global variables
ta = None
ts = None
tp = None
tr = None
tw = None
l = None
f = None
debug = False
_toggledout = 0
_bypassreg = 0x0E  # automatic bypass active, reset flags, bypass off


# Help text
def parameterhelp():
	print ("test_seu.py ")
	print ("-h (help)")
	print ("-m (Manual mode)")
	print ("-d (Activate debug output)")
	print ("-c <chip id> ")
	print ("-n <number of FPGA to use> ")
	print ("-t <Shift hold time in s>")
	print ("-f <Shift Frequency in kHz>")
	print ("-F <Shift Frequency in Hz>")
	print ("-a <ADC monitoring Intervall in s>")
	print ("-r <pspp register and all adc periode in s>")
	print ("-p <pspp monitoring periode in s>")
	print ("-w <pspp write default registers and toggle dout in s>")
	print ("-i <ISUP in mA>") 
	print ("--baud <baudrate>") 


# function to execute class method in a list
def listexec(seq, method, *args, **kwargs):
	for obj in seq:
		getattr(obj, method)(*args, **kwargs)


# Timer for ADC monitoring data
def adcmon_timer(*args):
	global ta
	global l
	global f
	global debug

	periode = float(args[0])
	# restart thread
	ta = threading.Timer(periode, adcmon_timer, args)
	ta.start()
	
	if debug:
		debugmessage("Read Chip voltages " + str(time.ctime()) + " with periode " + args[0])
	listexec(f, 'read_all_adc')


# Timer for shift thread
def shift_timer(*args):
	global ts
	global l
	global f
	global debug

	periode = float(args[0])
	# restart thread
	ts = threading.Timer(periode, shift_timer, args)
	ts.start()

	if debug:
		debugmessage("Shift at " + str(time.ctime()) + " with periode " + args[0])
	# perform shift with randomd data for first fpga
	rnd = f[0].shift_rnd()
	# perform shift with same data for additional fpgas
	if (len(f) > 1):
		listexec(f[1:], 'shift', rnd)
	# write shift data to log file 
	listexec(l, 'write_shiftdata', l[0].filenameDATA_IN, time.time(), '{:08X}'.format(rnd))
	# (filenames are for all listeners equal but in separate folder. Therfore use l[0])


# Timer for PSPP monitoring data
def psppmonvalues_timer(*args):
	global tp
	global l
	global f
	global debug

	periode = float(args[0])
	# restart thread
	tp = threading.Timer(periode, psppmonvalues_timer, args)
	tp.start()
	
	if debug:
		debugmessage("Read PSPP monitoring " + str(time.ctime()) + " with periode " + args[0])
	listexec(f, 'scb_read_mon', scb_addr)


# Timer for PSPP register data
def psppregisters_timer(*args):
	global tr
	global l
	global f
	global debug

	periode = float(args[0])
	# restart thread
	tr = threading.Timer(periode, psppregisters_timer, args)
	tr.start()
	
	if debug:
		debugmessage("Read PSPP registers " + str(time.ctime()) + " with periode " + args[0])
	listexec(f, 'scb_read_reg', scb_addr, 'all')
	listexec(f, 'gpio_read')


# Timer to write PSPP registers to default value
def psppwrite_timer(*args):
	global tw
	global l
	global f
	global debug
	global _toggledout
	global _bypassreg

	periode = float(args[0])
	# restart thread
	tw = threading.Timer(periode, psppwrite_timer, args)
	tw.start()

	if debug:
		debugmessage("Write PSPP registers " + str(time.ctime()) + " with periode " + args[0])
	# toggle Dout pint
	if (_toggledout == 1):
		listexec(f, 'scb_write_reg', scb_addr, 5, 1)
		_toggledout = 0
	else:
		listexec(f, 'scb_write_reg', scb_addr, 5, 0)
		_toggledout = 1
	# write bypass register
	listexec(f, 'scb_write_reg', scb_addr, 6, _bypassreg)
	# write bg control - set to default value
	listexec(f, 'scb_write_reg', scb_addr, 10, 0x01)
	listexec(f, 'scb_write_reg', scb_addr, 11, 0x10)
	listexec(f, 'scb_write_reg', scb_addr, 12, 0x00)


# Exit
def endprogram():
	# set dac values to 0
	listexec(f, 'reset_DACs')
	listexec(f, 'worker', False)
	listexec(f, 'WaitForReady')
	listexec(f, 'close')
	print ("bye bye")
	exit()


# main program
if __name__ == '__main__':
	# get program arguments
	# Get user input for parameters
	# c = input("Enter the value for parameter1: ")
	# f = input("Enter The Shift Frequency in kHz: ")
	
	try:
		opts, args = getopt.getopt(sys.argv[1:], "hmdf:F:a:p:t:i:b:B:w:c:r:n:v:", ["frequency=", "Frequency=", "adc intervall=", "periode=", "hold time=", "Isup=", "baud=", "chip=", "reg time=", "baud="])
	except getopt.GetoptError:
		warning("Wrong parameter given")
		parameterhelp()
		exit()

	# default value
	baudrate = 921600
	numfpga = 1
	chipID = 0	
	scb_addr = 0	
	isup_in = 10		
	vsup = 2000
	periode_holdshift = 2
	shift_frequency = 200000
	periode_adcmon = 0.1
	periode_psppmonvalues = 5 
	periode_psppregisters = 10 
	periode_psppwrite = 30
	manualflag = False
	debug = False
	# configure run options from argumetns
	for opt, arg in opts:
		if opt in ("-f", "--frequency"):
			if int(arg) < 0 or int(arg) > 1000:
				print ("wrong frequency, choose between 10 and 1000kHz")
				sys.exit(2)
			shift_frequency = int(arg) * 1000
		elif opt in ("-F", "--Frequency"): 
			if int(arg) < 1 or int(arg) > 1000000:
				print ("wrong frequency, choose between 1 and 1'000'000Hz")
				sys.exit(2)
			shift_frequency = int(arg)
		elif opt in ("-t", "--hold time"):
			periode_holdshift = float(arg)
		elif opt in ("-a", "--adc intervall"):
			periode_adcmon = float(arg)
		elif opt in ("-h", "--help"):
			parameterhelp()
			exit()
		elif opt in ("-p", "--periode"):
			periode_psppmonvalues = float(arg)
		elif opt in ("-r", "--reg time"):
			periode_psppregisters = float(arg)
		elif opt in ("-w"):
			periode_psppwrite = float(arg)
		elif opt in ("-i", "--Isup"):
			isup_in = float(arg)
		elif opt in ("--baud"):
			baudrate = int(arg)
		elif opt in ("-m"):
			manualflag = True
		elif opt in ("-c", "--chip"):
			chipID = int(arg)
		elif opt in ("-d"):
			debug = True
		elif opt in ("-n"):
			numfpga = int(arg)			
		elif opt in ("-v"):
			vsup = int(arg)

	# check arguments
	if chipID == 0:
		error("Enter valid chipID")

	# Enter manual mode for test control
	if (manualflag):
		# main menu loop
		mainloop(baudrate, numfpga)

	# open a listener to get responses from FPGA
	l = [serial_listener.listener(fpgaid=n, baudrate=baudrate, DEBUG=debug, test = "SEU_Hold_Test") for n in range(numfpga)]
	# open a second serial port to write commands
	f = [control_fpga.fpga(fpgaid=n, baudrate=baudrate, DEBUG=debug) for n in range(numfpga)]

	# print (settings and ask for confirmation
	status("\n\t --------------------------------------------------------------------")
	status("Irradiation Test for MOPSHub")
	status("--------------------------------------------------------------------")
	status("SEU shift test:             interval  = {:.2f}".format(periode_holdshift))
	status("SEU shift test:             frequency = {:d}".format(shift_frequency))
	status("ADC Monitoring:             interval  = {:.2f}".format(periode_adcmon))
	#status("PSPP read monitoring data:  interval  = {:.2f}".format(periode_psppmonvalues))
	#status("PSPP read all data:         interval  = {:.2f}".format(periode_psppregisters))
	#status("PSPP reset registers:       interval  = {:.2f}".format(periode_psppwrite))
	status("--------------------------------------------------------------------")
	status("Start with any key. Abort with 'q'")
	if (input() == 'q'):
		endprogram()

	# initialise 
	# f.set_clk(shift_frequency)
	listexec(f, 'set_clk', shift_frequency)
	listexec(f, 'worker', False)
	listexec(f, 'WaitForReady')
	# shift a frist time with and fill with a fix value
	listexec(f, 'shift', 0x00000000)
	listexec(f, 'worker', False)
	listexec(f, 'WaitForReady')
	listexec(f, 'clear_ip')

	# reset seu test ip
	listexec(f, 'clear_ip')
	# create header files
	listexec(l, 'init_holdtest', chipID,
			periode_holdshift, shift_frequency, periode_adcmon,
			periode_psppmonvalues, periode_psppregisters, periode_psppwrite)
	# power chip
	status("Power on chip")
	listexec(f, 'set_dac', 'Temp0', 500)
	listexec(f, 'WaitForReady')
	listexec(f, 'set_dac', 'Temp1', 500)
	listexec(f, 'WaitForReady')
	listexec(f, 'set_dac', 'Viext', 1200)
	listexec(f, 'WaitForReady')
	listexec(f, 'set_dac', 'Vsup', vsup)
	listexec(f, 'WaitForReady')
	listexec(f, 'set_dac', 'Iby', 2500) 
	listexec(f, 'WaitForReady')
	listexec(f, 'set_dac', 'Vby', 923) 
	listexec(f, 'WaitForReady')
	sleep(1)
	listexec(f, 'set_clk', 200000)
	listexec(f, 'shift', 0x00000000)
	listexec(f, 'worker', False)
	listexec(f, 'WaitForReady')
	listexec(f, 'clear_ip')
	listexec(f, 'set_clk', shift_frequency)
	listexec(f, 'WaitForReady')
	listexec(f, 'clear_ip')
	input('press enter to start')

	pl = []
	tf = []
	for cur in l:
		# start listener processes
		pl.append(multiprocessing.Process(target=cur.listen))
		pl[-1].deamon = True
		# pl.append(threading.Thread(target=cur.listen))
		pl[-1].start()
	for cur in f:
		# start worker threads
		tf.append(threading.Thread(target=cur.worker))
		tf[-1].start()
		# pf.append(multiprocessing.Process(target=cur.worker))
		# pf[-1].deamon = True
		# pf[-1].start()

	# check parameters
	if periode_adcmon < 0.01:
		warning("ADC monitoring periode should be at least 0.01s. Set to 0.01s")
		periode_adcmon = 0.01

	status("Starting measurement ... (stop with Enter)")

	# start timers to send monitoring commands
	ts = threading.Timer(0.5, shift_timer, ["{:f}".format(periode_holdshift)])
	ts.start()
	ta = threading.Timer(periode_adcmon, adcmon_timer, ["{:f}".format(periode_adcmon)])
	ta.start()
	tp = threading.Timer(periode_psppmonvalues, psppmonvalues_timer, ["{:f}".format(periode_psppmonvalues)])
	tp.start()
	# tr = threading.Timer(periode_psppregisters, psppregisters_timer,["{:f}".format(periode_psppregisters)])
	# tr.start()
	# tw = threading.Timer(periode_psppwrite, psppwrite_timer,["{:f}".format(periode_psppwrite)])
	# tw.start()

	# wait until something is entered on keyboard
	input("quit with enter\n")
	
	# cancel timer threads
	ta.cancel()
	ts.cancel()
	tp.cancel()
	# tr.cancel()
	# tw.cancel()

	listexec(f, 'quitlistener')

	print ("quit the loop")
	# join the process
	listexec(pl, 'join')
	listexec(tf, 'join')

	endprogram()
