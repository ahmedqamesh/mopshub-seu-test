from messages import *
from port import get_controller_port
import fpga_control

curfpga = 0
numfpga = 1
f = []

def cmd_help():
	##
	# print help for all defined commands
	for s in sorted(commands.iterkeys()):
		print s + "\t\t: " + commands[s]['help']
	return True

def cmd_quit():
	##
	# reset DACs and quit programm
	for fp in f:
		fp.reset_DACs()
		fp.worker(loop=False)
		fp.WaitForReady()
		fp.close()
	print "bye bye"
	exit()

def cmd_version():
	##
	# print FPGA FW version
	f[curfpga].write('v')
	print f[curfpga].readline()
	f[curfpga].WaitForReady()
	return True

def cmd_shift():
	##
	# Shift with given data
	data = raw_input('Shift data (8 hex): ')
	if (data == ''):
		data = 0
	else:
		data = int(data,16)
	f[curfpga].shift(data)
	f[curfpga].worker(loop=False)
	f[curfpga].read_shift_data()
	return True

def cmd_shiftrnd():
	##
	# Shift with random data
	f[curfpga].shift_rnd()
	f[curfpga].worker(loop=False)
	f[curfpga].read_shift_data()
	return True

def cmd_starttest():
	##
	# exit manual mode and start test routine
	f[curfpga].close()
	print "Start test"
	return False

def cmd_powerchip():
	##
	# Set Vsup DAC to power chip
	f[curfpga].set_dac('Temp0',500)
	f[curfpga].WaitForReady()
	f[curfpga].set_dac('Temp1',500)
	f[curfpga].WaitForReady()
	f[curfpga].set_dac('Viext',1200)
	f[curfpga].WaitForReady()
	f[curfpga].set_dac('Vsup',2000)
	f[curfpga].WaitForReady()
	f[curfpga].set_dac('Iby',2500)
	f[curfpga].WaitForReady()
	f[curfpga].set_dac('Vby',923)
	f[curfpga].WaitForReady()
	return True

def cmd_adclist():
	##
	# List available ADC channels
	print 'Available ADC channels: '
	for s in sorted(f[curfpga].adcchannels.keys()):
		v = f[curfpga].adcchannels[s].get_val()
		print s + " = {:.3f}{:s}".format(v['val'],v['unit'])
	return True

def cmd_adcread():
	##
	# Read value from ADC
	ch = raw_input('ADC channel name ("all" for all channels = default): ')
	if (ch == ''):
		ch = 'all'
	val = f[curfpga].read_adc(ch)
	if (val['val']>=0):
		# read twice to get updated value
		print ch + " = {:.3f}{:s}".format(val['val'],val['unit'])

	if (ch == 'all'):
		cmd_adclist()
	return True

def cmd_daclist():
	##
	# List available DAC channels
	print 'Available DAC channels: '
	for s in f[curfpga].dacchannels.keys():
		print s
	return True

def cmd_dacset():
	##
	# Set DAC voltage
	ch = raw_input('DAC channel name: ')
	v = int(raw_input('DAC voltage (0-2500mV): '),10)
	val = f[curfpga].set_dac(ch,v)
	print ch + " = {:d}".format(val)
	f[curfpga].WaitForReady()
	return True

def cmd_pspplist():
	##
	# List all connected PSPPs
	f[curfpga].scb_list_chips()
	return True

def cmd_psppregread():
	##
	# Read registers from PSPP/PATT
	p = raw_input('PSPP/PATT address (default 0): ')
	if (p == ""):
		p = 0
	else:
		p = int(p,16)
	r = raw_input('Register address (0-E,all,regs = default): ')
	if (r == ""): # change all to regs to read only registers
		r = "regs"
	f[curfpga].scb_read_reg(p,r)
	f[curfpga].worker(loop=False)
	f[curfpga].scb_read_reg_data()
	return True

def cmd_psppreadmon():
	##
	# Read monitoring information from PSPP/PATT
	p = raw_input('PSPP/PATT address (default 0): ')
	if (p == ""):
		p = 0
	else:
		p = int(p,16)
	f[curfpga].scb_read_mon(p)
	f[curfpga].scb_read_mon_data()
	return True

def cmd_psppreadadc():
	##
	# Read ADC value from PSPP/PATT
	p = raw_input('PSPP/PATT address (default 0): ')
	if (p == ""):
		p = 0
	else:
		p = int(p,16)
	r = raw_input('ADC channel (0-7, default 0): ')
	if (r == ""):
		r = 0
	else:
		r = int(r,16)
	f[curfpga].scb_read_adc(p,r)
	return True

def cmd_psppregwrite():
	##
	# Write register in PSPP/PATT
	p = raw_input('PSPP/PATT address (default 0): ')
	if (p == ""):
		p = 0
	else:
		p = int(p,16)
	r = raw_input('Register address (0-E, default 0): ')
	if (r == ""):
		r = 0
	else:
		r = int(r,16)
	v = raw_input('Register value (0-FF): ')
	if (v == ""):
		warning('invalid value')
		return True
	else:
		v = int(v,16)
	f[curfpga].scb_write_reg(p,r,v)
	f[curfpga].worker(loop=False)
	f[curfpga].scb_write_reg_response()

	return True

def cmd_adcreadmon():
	##
	# Read monitoring ADC values
	f[curfpga].read_monitoring_adc()
	f[curfpga].worker(loop=False)
	f[curfpga].read_monitoring_adc_data()
	f[curfpga].WaitForReady()
	return True

def cmd_shiftclear():
	##
	# clear SEU IP counters
	f[curfpga].clear_ip()
	return True

def cmd_shiftfreq():
	##
	# set SEU IP frequency

	freq = raw_input("Enter Frequency in Hz (default = 200000Hz, max 10MHz):")
	if (freq == ""):
		freq = 200000
	else:
		freq = int(freq,10)
	f[curfpga].set_clk(freq)
	f[curfpga].worker(loop=False)
	f[curfpga].WaitForReady()
	return True

def cmd_fpgaid():
	##
	# read and print id from fpga 
	f[curfpga].readid()
	return True

def cmd_changepfga():
	##
	# change currently selected FPGA
	global curfpga
	global numfpga
	new_id = int(raw_input("Select FPGA (" + ','.join(str(e) for e in range(numfpga)) + ") : "))
	if new_id in range(numfpga):
		curfpga = new_id
	else:
		warning("invalid FPGA selected")
	return True

def cmd_readgpio():
	##
	# read gpio pins
	f[curfpga].gpio_read()
	f[curfpga].worker(loop=False)
	f[curfpga].gpio_read_response()

	return True

def cmd_poweroff():
	##
	# Reset DACs to 0 and power off chip
	f[curfpga].reset_DACs()
	f[curfpga].worker(loop=False)
	f[curfpga].WaitForReady()
	return True

def cmd_dummy():
	##
	# dummy text
	return True

# Dictionary with all possible commands
commands = {
		'a':				{'func':cmd_adcread,'help':"Read ADC voltage"},
		'A':				{'func':cmd_adcreadmon,'help':"Read ADC monitoring values"},
		'd':				{'func':cmd_dacset,'help':"Set DAC voltage"},
		'f':				{'func':cmd_changepfga,'help':"Change FPGA selected"},
		'h':				{'func':cmd_help,'help':"show help"},
		'g':				{'func':cmd_readgpio,'help':"Read GPIO"},
		'la':				{'func':cmd_adclist,'help':"List ADC channels"},
		'ld':				{'func':cmd_daclist,'help':"List DAC channels"},
		'pl':				{'func':cmd_pspplist,'help':"List connected PSPP/PATT chips"},
		'pa':				{'func':cmd_psppreadadc,'help':"Read PSPP/PATT ADC channel"},
		'pm':				{'func':cmd_psppreadmon,'help':"Read PSPP/PATT monitoring data"},
		'pr':				{'func':cmd_psppregread,'help':"Read PSPP/PATT registers"},
		'pw':				{'func':cmd_psppregwrite,'help':"Write PSPP/PATT register"},
		'q':				{'func':cmd_quit,'help':"exit program"},
		's':				{'func':cmd_shift,'help':"Perform SEU shift"},
		'sr':				{'func':cmd_shiftrnd,'help':"Perform SEU shift with random data"},
		'sc':				{'func':cmd_shiftclear,'help':"Clear SEU test ip counters"},
		'sf':				{'func':cmd_shiftfreq,'help':"Set SEU test ip shift frequency"},
		't':				{'func':cmd_starttest,'help':"Start test routine"},
		'v':				{'func':cmd_version,'help':"show version"},
		'help':			{'func':cmd_help,'help':"show help"},
		'id':				{'func':cmd_fpgaid,'help':"Show FPGA ID"},
		'ch fpga':	{'func':cmd_changepfga,'help':"Change FPGA selected"},
		'quit':			{'func':cmd_quit,'help':"exit program"},
		'power':		{'func':cmd_powerchip,'help':"Power on chip"},
		'off':			{'func':cmd_poweroff,'help':"Power off chip"},
		'power off':{'func':cmd_poweroff,'help':"Power off chip"},
		}

def mainloop(baudrate, fpgas, debug = True):
	global curfpga 
	global numfpga
	global f
	# open fpga object
	#f = fpga_control.fpga(int(1),baudrate=baudrate,DEBUG=True)
	numfpga = fpgas
	f = [fpga_control.fpga(n,baudrate=baudrate,DEBUG=debug) for n in range(numfpga)]

	run = True
	while(run):
		com = raw_input('Choose command: ')
		if com in commands.keys():
			run = commands[com]['func']()
		else:
			warning('Unkown command')

