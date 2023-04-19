import serial
from messages import *
from parse import parse
import time
from time import sleep
import numpy as np
from random import *
from port import get_controller_port
import math
import Queue

class adcvalue(object):

	def __init__(self,ch,d):
		self.channel = ch
		self.div = d
		self.volt = 0
		self.current = 0
		if (d > 0):
			self.unit = 'mA' 
		else:
			self.unit = 'V'
		#todo hex value

	def set_val(self,value):
		self.volt = value/1000.0
		if (self.div > 0):
			self.current = float(value)/self.div

	def get_val(self):
		if (self.div > 0):
			return {'val':self.current,'unit':self.unit}
		else:
			return {'val':self.volt,'unit':self.unit}

	def get_channel(self):
		return self.channel

class fpga:

####################################################################################################
# allgemeine Kommunikation mit FPGA
####################################################################################################

	def __init__(self, fpgaid, baudrate=921600, timeout=1, DEBUG = False):
		self.debug = DEBUG
		self.ser = serial.Serial(get_controller_port(fpgaid,baudrate),baudrate=baudrate)
		# create queue for commands
		self.queue = Queue.Queue()
		self.fpgaid = fpgaid
		# shift frequency
		self.shift_freq = 200000

	def close(self):
		self.ser.close()

	def write(self, command):
		self.queue.put(command+'\n')
		if self.debug:
			debugmessage("Queued command on {:d}: {:s}".format(self.queue.qsize(),command), file="fpga_control.py")
		#self.ser.write(command + "\r\n")

	def readline(self):
		response = self.ser.readline()
		while ((response[:1] in ['#', '\0']) or (response in ['\r\n','\r'])):
			if self.debug:
				debugmessage("Received message: %s" % response.replace('\r','').replace('\n',''), file="fpga_control.py")
			response = self.ser.readline()
		return response.replace('\r','').replace('\n','')

	def readid(self):
		##
		# Read FPGA ID set with switches

		self.write("i")
		self.worker(loop = False)
		response = self.readline()
		parseres = parse("ID {}", response)
		fpgaid = int(parseres[0],16)
		status("FPGA ID = {:X}".format(fpgaid))
		self.WaitForReady()

	def WaitForReady(self,printmessages=False):	
		## 
		# read ready from FPGA

		text = ''
		while (text != 'Ready') :
			if (self.debug or printmessages):
				debugmessage("Waiting...	" + text)
			text = self.readline()
			sleep(0.0001)
		if self.debug:
			debugmessage("Done waiting.")

	def quitlistener(self):
		# send command to fpga which is echoed back, so that listener is quitting its loop
		#self.ser.write('q\r\n')
		self.write('q')

	def worker(self,loop = True):
		##
		# function to execute commands listed on queue
		# loop = Flag to loop execution (default = True)

		statuscolor("Worker for FPGA {:d} started".format(self.fpgaid),self.fpgaid)
		while(True):
			cmd = self.queue.get() # blocking queue read
			if self.debug:
				debugmessage("Execute queued command at {:d}: {:s}".format(self.queue.qsize(),cmd))
			self.ser.write(cmd)
			# quit loop if termination command was sent
			if (cmd == 'q\n'):
				status("Quit worker")
				break
			# give FPGA some time to handle last command
			sleep(0.005) 
			# break loop if flag is not set and queue is empty
			if (loop == False) and self.queue.empty():
				break

		if self.debug:
			debugmessage("End of worker")

		
		
#####################################################################################################
# ADC und DAC Kommunikation
#####################################################################################################

	adcchannels = {
			'Vsup':adcvalue('11',0),
			'Vsup+':adcvalue('11',0),
			'Vsup-':adcvalue('12',0),
			'Isup':adcvalue('13',100),
			'Isup_max':adcvalue('14',100),

			'Uby':adcvalue('15',0),
			'Uby+':adcvalue('15',0),
			'Uby-':adcvalue('16',0),
			'Iby':adcvalue('17',200),
			'Iby+':adcvalue('17',200),
			'Iby-':adcvalue('18',200),
			'ThTemp':adcvalue('21',0),
			'ThMod':adcvalue('22',0),
			'Vglobal':adcvalue('23',0),
			'VDD_D':adcvalue('24',0),
			'Vref':adcvalue('25',0),
			'Vbg':adcvalue('26',0),
			'VDD_A':adcvalue('27',0),
			'Vint':adcvalue('28',0),
			'Vos':adcvalue('31',0),
			'Iref':adcvalue('32',0),
			'Temp0':adcvalue('33',0),
			'Temp1':adcvalue('34',0),
      'VDD_SEU':adcvalue('35',0)
			}
		
	# DAC channels
	dacchannels = {
			'Vsup':'41',
			'Vby':'42',
			'Temp0':'51',
			'Temp1':'52',
			'Vmod':'61',
			'Iby':'62',
			'Viext':'71',
			}
	dacvals = {
			'Vsup':0,
			'Vby':0,
			'Temp1':0,
			'Temp0':0,
			'Vmod':0,
			'Iby':0,
			'Viext':0,
			}

	def ADC(self, number = 1, channel = 1):
		nu = str(number)
		ch = str(channel)

		if ( 1 <= number <= 3 and 1 <= channel <= 8): #ADCs sind die Slaves 1 bis 3 
			self.write('a '+nu + ch)
			self.worker(loop=False)

			resp = self.readline()
			res = parse("ADC: Slave {} Channel {} Voltage {}", resp)
			self.WaitForReady() 
			return int(res[2]) # return voltage value
		elif(number < 1 or number > 3):
			print "No valid ADC slave number: {}".format(number)
		elif(channel < 1 or channel > 8):
			print "No valid ADC channel: {} for ADC: {}".format(channel, number)

	def set_DAC(self, number=1, channel=1, value=0):
		nu = str(number)
		ch = str(channel)
		vl=str(value)
		while(len(vl)!= 4):
			vl="0"+vl
		if(number < 4 or number > 7):
			print "No valid DAC slave number: {}".format(number)
		if(channel < 1 or channel > 2):
			print "No valid DAC channel: %d for DAC: %d".format(channel,number)
		self.write('d '+nu+ch+' '+vl)
		self.worker(loop = False)
		resp=self.readline()
		res = parse("DAC: Slave {} Channel {} Voltage {}", resp)
		self.WaitForReady()
		return res[2] # return set voltage

	def reset_DACs(self):
		self.write("d off")

	def read_monitoring_adc(self):
		# read all adc channels used to monitor chip parameters
		self.write('A')

	def read_all_adc(self):
		# read all adc channels used to monitor chip parameters
		self.write('B')

	def read_monitoring_adc_data(self):
		resp = self.readline()
		if (self.debug):
			debugmessage(resp)
		valstr = resp.split(' ')
		if (len(valstr) < 8):
			warning("ADC Communication error")
		else:
			# convert values to voltages
			vals = [float(int(x,16))*2500.0/4096.0 for x in valstr[1:]]
			# convert current
			vals[1] = vals[1]/100.0
      #vals[13] = vals[13]/200.0
			# write voltages and currents to log file
			status("V_sup = {:.3f}mV\tI_sup = {:.3f}mA\tVdd_a = {:.3f}mV\tVdd_d = {:.3f}mV\t".format(
								vals[0],vals[1],vals[2],vals[3])+
						 "V_ref = {:.3f}mV\t V_bg = {:.3f}mV\tV_int = {:.3f}mV".format(
								vals[4],vals[5],vals[6]))
		
	def read_adc(self, chname):
		# read adc channel by name
		if chname in self.adcchannels.keys():
			self.write('a ' + self.adcchannels[chname].get_channel())
			self.worker(loop=False)
			resp = self.readline()
			if (self.debug):
				debugmessage(resp)
			res = parse("ADC: Slave {} Channel {} Voltage {}", resp)
			self.adcchannels[chname].set_val(int(res[2]))
			self.WaitForReady()
			return self.adcchannels[chname].get_val()
		# read all adc channels
		elif chname in ['all']:
			for s in self.adcchannels.keys():
				self.write('a ' + self.adcchannels[s].get_channel())
				self.worker(loop=False)
				resp = self.readline()
				if (self.debug):
					debugmessage(resp)
				res = parse("ADC: Slave {} Channel {} Voltage {}", resp)
				self.adcchannels[s].set_val(int(res[2]))
				self.WaitForReady()
			return {'val':-2} # TODO implement return of list with all values
		else:
			warning('Unknown ADC channel!')
			return {'val':-1} 

	def set_dac(self,chname,value):
		##
		# set DAC channel 
		# @param chname: DAC channel name from dictionary
		# @param value: voltage value to set as integer
		if chname in self.dacchannels.keys():
			# limit voltage applied to analog input channels
			if (chname in ['Temp0','Temp1','Vmod','Iref','Vos']) and (value > 1000):
				warning('DAC %s should not be over 1000mV! Limited to 1V'.format(chname,value))
				value = 1000
			elif (value > 2500):
				warning('DAC %s should not be over 2500mV! Limited to 1V'.format(chname,value))
				value = 2500
			self.write('d ' + self.dacchannels[chname] + ' {:04d}'.format(value)) 
			self.worker(loop=False)
			resp=self.readline()
			debugmessage(resp)
			res = parse("DAC: Slave {} Channel {} Voltage {}", resp)
			return int(res[2]) # return the set voltage
		else:
			warning('Unknown DAC channel!')
			return -1
				
	################################################################################################################
	# SCB Communication
	################################################################################################################
	
	def scb_list_chips(self):
		##
		# List all chips that are responding on the bus
		self.write('s l')
		self.worker(loop=False)
		self.WaitForReady(printmessages=True)

	def scb_read_reg(self,pspp,reg):
		##
		# read register(s) from PSPP/PATT
		# @param pspp: chip address
		# @param reg : register to read (hex value 0-E or 'all','' to read all registers

		# read all registers
		if ((reg == "all") or (reg == "")):
			self.write('s D {:x}'.format(pspp))
		elif (reg == "regs"):
			self.write('s G {:x}'.format(pspp))
		else:
			reg = int(reg,16)
			self.write('s R {:x} {:x}'.format(pspp,reg))

	def scb_read_reg_data(self):
		##
		# read return data for scb_read_reg command

		response = self.readline()
		if response[:1] in ['D','G']:
			infostring = response.split(' ')
			if (len(infostring) < 17):
				warning("SCB Not enough data: {:s}".format(infostring))
			else:
				info = [int(x,16) for x in infostring[1:]]
				print 'PATT {:X} registers:'.format(info[0])
				for n in range(15):
					print 'Reg {:X} = {:02X} / {:08b}'.format(n,info[n+1],info[n+1])
				if (len(infostring) == 25):
					for n in range(8):
						print 'ADC {:X} = {:.3f} ({:03X})'.format(n,info[n+15]/1024.0,info[n+15])

		elif response[:1] in ['R']:
			# handle anser for single register read
			infostring = parse('R {} {} {}',response)
			if (infostring[2] == 'error'):
				warning("SCB Not enough data")
			else:
				info = [int(x,16) for x in infostring]
				print 'PATT {:X} register {:X} = {:02X} / {:08b}:'.format(info[0],info[1],info[2],info[2])
		# wait for FPGA becoming idle
		self.WaitForReady()
					

	def scb_read_mon(self,pspp):
		##
		# read monitoring data from PSPP/PATT
		# @param pspp: chip address

		# read all registers
		self.write('s M {:x}'.format(pspp))

	def scb_read_mon_data(self):
		##
		# read return data fro scb_read_mon command

		response = self.readline()
		infostring = response.split(' ')
		if (len(infostring) < 6):
			warning("SCB Not enough monitoring data")
		else:
			info = [int(x,16) for x in infostring[1:]]
			print 'PATT {:X} Monitoring data:'.format(info[0])
			# calculate module voltage
			volt = info[1]/1024.0*1.1
			print 'Module Voltage = {:.3f}V ({:02X} ADC)'.format(volt,info[1])
			# calulate temperature 0
			vdda = 1.45
			vt = info[2]/1024.0*1.1
			if (vt > 0):
				Rntc = 10e3*(vdda-vt)/vt
				t = 3435/(math.log(Rntc/10e3)+3435/298.15) - 273.15
			else:
				Rntc = -1
				t = -100
			print 'Temp0  = {:.3f}C, Rntc = {:.3f}kOhm, Vt = {:.3f}V ({:02X} ADC)'.format(t,Rntc/1e3,vt,info[2])
			# calulate temperature 1
			vdda = 1.45
			vt = info[3]/1024.0*1.1
			if (vt > 0):
				Rntc = 10e3*(vdda-vt)/vt
				t = 3435/(math.log(Rntc/10e3)+3435/298.15) - 273.15
			else:
				Rntc = -1
				t = -100
			print 'Temp0  = {:.3f}C, Rntc = {:.3f}kOhm, Vt = {:.3f}V ({:02X} ADC)'.format(t,Rntc/1e3,vt,info[3])
			# bypass register
			print 'Bypass register = {:02X} / {:08b}'.format(info[4],info[4])
		# wait for FPGA becoming idle
		self.WaitForReady()
					
	def scb_write_reg(self,pspp,reg,value):
		##
		# read register(s) from PSPP/PATT
		# @param pspp: chip address
		# @param reg : register to read (hex value 0-E)
		# @param value: register value

		self.write('s w {:x} {:x} {:02x}'.format(pspp,reg,value))

	def scb_write_reg_response(self):
		##
		# read response to write register command
		response = self.readline()
		com = parse("Bytes sent: {}, Bytes received: {}",response)
		txrxbytes = [int(x,16) for x in com]
		if (txrxbytes[0] != 2) or (txrxbytes[1] != 0):
			warning("SCB write failed." + response)
		else:
			status("SCB written")
		self.WaitForReady()


	def scb_read_adc(self,pspp,channel):
		##
		# read register(s) from PSPP/PATT
		# @param pspp: chip address
		# @param channel: channel to read (0-7)

		self.write('s A {:x} {:x}'.format(pspp,channel))
		self.worker(loop=False)
		self.WaitForReady()

	################################################################################################################
	# GPIO communication
	################################################################################################################

	def gpio_read(self):
		##
		# read gpio inputs

		self.write('g i')

	def gpio_read_response(self):
		## 
		# read response from gpio read command

		response = self.readline()
		com = parse("GPIO: Value {}",response)
		gpio = int(com[0],16)
		debugmessage('GPIO = {:2X}'.format(gpio))
		status('Dout = {:b} / POR = {:b} / Comp Mod = {:b}, Temp0 = {:b}, Temp1 = {:b} / Bypass Ctrl = {:b}'\
				.format(gpio & 1, gpio>>1&1, gpio>>3&1, gpio>>2&1, gpio>>5&1, gpio>>4&1))
		self.WaitForReady()

	################################################################################################################
	# SEU IP Kommunikation
	################################################################################################################

	# einstellen der Shift Frequenz in Hz
	def set_clk(self,freq):								
		self.shift_freq = freq
		self.write("Sf {:d}".format(freq))

	# loescht fifo simple und tmr und setzt counter zurueck 
	def clear_ip(self):							
		self.write("Sc")
		self.worker(loop=False)
		self.WaitForReady()

	def shift(self,data):
		# shift once with given data
		# fpga returns data automatically
		self.write("S {:08X}".format(data))

	def shift_rnd(self):
		# shift once with random data
		# fpga returns data automatically
		rnd = randint(0,0xFFFFFFFF)
		# set frequency to 200kHz during readout
		if (self.shift_freq < 200000):
			self.write("Sf {:d}".format(200000))
		# perform shift
		self.write("S {:08X}".format(rnd))
		# set frequency back to original value	
		if (self.shift_freq < 200000):
			self.write("Sf {:d}".format(self.shift_freq))
		return rnd
	
	def read_shift_data(self):
		tmr = 'Ready'
		# ignore 'Ready' responses received
		while (tmr == 'Ready'):
			tmr	= self.readline()
		simple	= self.readline()
		counters	= self.readline().split(' ')
		#debugmessage("Received shift data:\n{}\n{}\n{}".format(tmr,simple,counters))
		# check string length
		if (len(tmr) < 751):
			warning("Not enough SEU data from tmr register")
		if (len(simple) < 751):
			warning("Not enough SEU data from simple register")
		if (len(counters) < 5):
			warning("Not enough SEU counter data")
		# convert counter values
		values = [int(x,16) for x in counters[1:]]
		temp_s_seus = values[0]+values[1]
		temp_t_seus = values[2]+values[3]
		# print data
		print "TMR: \t\t" + tmr[1:]
		print "Simple: \t" + simple[1:]
		print("Number of SEUs in Simple:\ttotal\t: {:d}\t\t0to1\t: {:d}\t\t1to0\t: {:d}".format(
						temp_s_seus,values[0],values[1]))
		print("Number of SEUs in TMR:\t\ttotal\t: {:d}\t\t0to1\t: {:d}\t\t1to0\t: {:d}".format(
						temp_t_seus,values[2],values[3]))
		self.WaitForReady()

if __name__ == '__main__':
	f = fpga()
	f.WaitForReady()
