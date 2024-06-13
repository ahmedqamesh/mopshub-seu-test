from datetime import datetime
import os.path
import time
import serial
from serial import SerialException
from serial_port import get_controller_port
from logging_messages import *
from parse import parse
import math


class listener():
	# create and open file to store data
	datadir = ''

	# seu counters
	simple_seus = 0
	tmr_seus = 0
	simple_high = 0
	simple_low = 0
	tmr_high = 0
	tmr_low = 0

	def __init__(self, fpgaid, baudrate=921600, DEBUG=False, test="SEU_Hold_Test"):
		
		self.se = serial.Serial(get_controller_port(fpgaid, baudrate=baudrate), baudrate=baudrate)
		self.debug = DEBUG
		
		self.filenameVOLTS = '/' + test + '_Voltages.txt'
		self.filenameVOLTSHEX = '/' + test + '_VoltagesHex.txt'
		self.filenamePSPPMON = '/' + test + '_PSPPmonitoring.txt'
		self.filenamePSPPREGS = '/' + test + '_PSPPregisters.txt'
		self.filenameDATA_IN = '/' + test + '_DataIN.txt'
		self.filenameDATA_S = '/' + test + '_DataSIMPLE.txt'
		self.filenameDATA_TMR = '/' + test + '_DataTMR.txt'
		self.filenameINFO = '/' + test + '_Info.txt'
		self.filenameDIG = '/' + test + '_DigitalSignals.txt'		
		# read id from fpga
		# self.se.write("i\n")
		self.se.write("i\n".encode('utf-8'))  # replaced by Qamesh  to convert the Unicode string to bytes using the UTF-8 encoding. 
		# response = self.se.readline()
		
		response = self.readline()
		parseres = parse("ID {}", response['line'])
		self.fpgaid = int(parseres[0], 16)
		
		if (fpgaid != self.fpgaid):
			error("FPGA has wrong ID! Please check.")
		self.datadir = ""

	def readline(self):
		try: 
			response = self.se.readline()
		except SerialException:
			self.write_info(line['timestamp'], self.simple_seus, self.simple_high, self.simple_low, \
					self.tmr_seus, self.tmr_high, self.tmr_low, \
					'0', 'Serial Port Exeption')
			self.se.close()
			self.se = serial.Serial(self.port, self.baud)
			response = 'empty'
		timestamp = time.time()
		while ((response[:1] in ['#', '\0']) or (response in ['\r\n', '\r'])):
			if (self.debug):
				debugmessage("ignored string: " + response.replace('\r', '').replace('\n', ''))
			response = self.se.readline()
		response = response.decode('utf-8')
		response = response.replace('\r', '').replace('\n', '')
		if (self.debug):
			debugmessage(response)
		return {'line':response, 'timestamp':timestamp}

	def init_holdtest(self, chipID, periode_holdshift, shift_frequency, periode_adcmon, periode_psppmonvalues, periode_psppregisters, periode_psppwrite):
		# create directory
		self.datadir = os.path.abspath('') + '/irradiation_data/' + datetime.now().strftime('%Y-%m-%d_%H:%M:%S_') + \
				'FPGA{:d}_Chip{:d}'.format(self.fpgaid, chipID)
										
		if not os.path.exists(self.datadir):
			os.makedirs(self.datadir)
		if (self.debug):
			debugmessage('Data directory: ' + self.datadir)

		# info file
		datafile = open(self.datadir + self.filenameINFO, 'w')
		datafile.write("SEU Hold Test \tDate: " + 	datetime.now().strftime('%Y-%m-%d_%H:%M:%S\n'))
		datafile.write("Chip ID: {:d}\r\n".format(chipID))
		datafile.write("Shift periode: {:.3f}s\tClock Frequency: {:.3f}Hz\r\n".format(\
				periode_holdshift, shift_frequency))
		datafile.write("ADC Intervall: {:.3f}s\r\n".format(periode_adcmon))
		datafile.write("MOPSHub monitoring interval: {:.3f}s\tMOPSHub register interval: {:.3f}"\
				"\tMOPSHub write interval:{:.3f}\r\n".format(\
				periode_psppmonvalues, periode_psppregisters, periode_psppwrite))
		
		datafile.write("Time[s]\t#SEU_s\t#SEU_s 0to1\t#SEU_s 1to0\t#SEU_t\t#SEU_t 0to1\t#SEU_t 1to0\tMOPSHuberror\tComment\r\n")
		datafile.close()

		# pspp voltages
		datafile = open(self.datadir + self.filenameVOLTSHEX, 'w')  # header in txt datei
		datafile.write("Time[s]\tV_sup\tI_sup\tVdd_a\tVdd_d\tV_ref\tV_bg\tV_int\tTemp0\tTemp1\tThTemp\tThMod\tVglobal\tVdd_SEU\tIby\tGND\n")
		datafile.close()

		# SEU data sent
		datafile = open(self.datadir + self.filenameDATA_IN, 'w')  # header in txt datei
		datafile.write("Time[s]\tData_in\n")
		datafile.close()

		# SEU data from simple register
		datafile = open(self.datadir + self.filenameDATA_S, 'w')  # header in txt datei
		datafile.write("Time[s]\tData_simple\n")
		datafile.close()

		# SEU data from TMR register
		datafile = open(self.datadir + self.filenameDATA_TMR, 'w')  # header in txt datei
		datafile.write("Time[s]\tData_tmr\n")
		datafile.close()

		# PSPP registers
		datafile = open(self.datadir + self.filenamePSPPREGS, 'w')  # header in txt datei
		datafile.write("\tRegisters\t\t\t\t\t\t\t\t\t\t\t\t\t\t\tADCs\t\t\t\t\t\t\n")
		datafile.write("Time[s]\t0\t1\t2\t3\t4\t5\t6\t7\t8\t9\t10\t11\t12\t13\t14\t0\t1\t2\t3\t4\t5\t6\t7\n")
		datafile.close()

		# PSPP monitoring data
		datafile = open(self.datadir + self.filenamePSPPMON, 'w')  # header in txt datei
		datafile.write("Time[s]\tMod. Volt\tTemp0\tTemp1\tBypass Reg\n")
		datafile.close()

		# Digital outputs from PSPP
		datafile = open(self.datadir + self.filenameDIG, 'w')  # header in txt datei
		datafile.write("Time[s]\tComp Mod\tComp Temp0\tComp Temp1\tPOR\tBypass Ctrl\tClkDetect\n")
		datafile.close()

	def write_shiftdata(self, filename, timestamp, data):
		# # 
		# write data from SEU shift register
		# @param filename = which file to write
		# @param timestamp = time for entry
		# @param data = string with data

		f = open(self.datadir + filename, 'a')
		f.write('{:f}\t'.format(timestamp))  # write timestamp
		f.write('{:s}\r\n'.format(data))  # write received bites
		f.close()

	def write_info(self, timestamp, s_nb, s_high, s_low, t_nb, t_high, t_low, scberr, comment):
		# # 
		# write data to the info log file
		# @param timestamp = time for entry
		# @param s_nb = Simple total SEU number
		# @param s_high = Simple SEUs from 0 to 1
		# @param s_low = Simple SEUs from 1 to 0
		# @param t_nb = TMR total SEU number
		# @param t_high = TMR SEUs from 0 to 1
		# @param t_low = TMR SEUs from 1 to 0
		# @param scberr = MOPSHuberror occured
		# @param comment = String for comments

		f = open(self.datadir + self.filenameINFO, 'a')
		f.write("{:f}\t{:d}\t{:d}\t{:d}\t{:d}\t{:d}\t{:d}\t{:s}\t{:s}\n".format(timestamp,
			s_nb, s_high, s_low, t_nb, t_high, t_low, scberr, comment))
		f.close()

	def write_regs(self, timestamp, regs):
		# # 
		# write PSPP logic registers
		# @param timestamp = time for entry
		# @param regs = list with register values as strings

		f = open(self.datadir + self.filenamePSPPREGS, 'a')
		f.write("{:f}".format(timestamp))
		for r in regs[0:15]:
			f.write("\t{:02X}".format(r))
		for r in regs[15:23]:
			f.write("\t{:03X}".format(r))
		f.write("\n")
		f.close()

	def write_pspp_monitoring(self, timestamp, values):
		# # 
		# write PSPP monitoring value
		# @param timestamp = time for entry
		# @param values = list with monitoring values (volt,temp0,temp1,bypass) as strings

		f = open(self.datadir + self.filenamePSPPMON, 'a')
		f.write("{:f}".format(timestamp))
		for v in values:
			f.write("\t{:02X}".format(v))
		f.write("\n")
		f.close()

	def write_adc_monitoring(self, timestamp, values):
		# #
		# write ADC values
		# @param timestamp = time for entry
		# @param values = list with monitoring values (volt,temp0,temp1,bypass) as strings

		# write hex values to log file
		f = open(self.datadir + self.filenameVOLTSHEX, 'a')
		f.write("{:f}".format(timestamp))
		for v in values:
			f.write("\t{:s}".format(v))
		f.write("\n")
		f.close()

	def write_dig_signals(self, timestamp, val):
		# #
		# write digital signal values
		# @param timestamp = time for entry
		# @param val = hex value with 1 bit per IO
		# 						 bit 7-4: unused
		# 							bit 3: Comp Mod
		# 							bit 2: Comp Temp
		# 							bit 1: unused
		# 							bit 0: Dout (reconnected to Clk Detect)

		f = open(self.datadir + self.filenameDIG, 'a')
		f.write("{:f}".format(timestamp))  # 				01234567
		bit = "{:08b}".format(val)  # convert value to bitstring 76543210
		#     bit  3     2      5     1     4     0
		#         cmod ctemp0 ctemp1 POR  ByCtrl Dout
		f.write("\t{:s}\t{:s}\t{:s}\t{:s}\t{:s}\t{:s}\n".format(bit[4], bit[5], bit[2], bit[6], bit[3], bit[7]))
		f.close()

	def listen(self):
		# # 
		# function listening on serial port and interpreting the received data string
		# data is stored in log files
		#

		statuscolor("Listener for FPGA {:d} started".format(self.fpgaid), self.fpgaid)
		i = 0
		while(1):
			line = self.readline()
			i = i+1
			# stop listener
			if line['line'] in ['q']:
				self.write_info(line['timestamp'], self.simple_seus, self.simple_high, self.simple_low,
						self.tmr_seus, self.tmr_high, self.tmr_low,
						'0', 'End of Test')
				status("Listener stopped")
				return 

			# read TMR SEU data
			elif line['line'][:1] in ['T']:
				if (len(line['line']) < 751):
					warning("FPGA{:d} ".format(self.fpgaid) + "Not enough SEU data from tmr register")
					self.write_info(line['timestamp'], self.simple_seus, self.simple_high, self.simple_low,
							self.tmr_seus, self.tmr_high, self.tmr_low,
							'0', 'Not enough tmr SEU data received')
				# convert line to bytestring
				bytestring = line['line'][1:]
				self.write_shiftdata(self.filenameDATA_TMR, line['timestamp'], bytestring)
				if (self.debug):
					debugmessage(line['line'][:1] + bytestring)

			# read Simple SEU data
			elif line['line'][:1] in ['S']:
				if (len(line['line']) < 751):
					warning("FPGA{:d} ".format(self.fpgaid) + "Not enough SEU data from simple register")
					self.write_info(line['timestamp'], self.simple_seus, self.simple_high, self.simple_low,
							self.tmr_seus, self.tmr_high, self.tmr_low,
							'0', 'Not enough simple SEU data received')
				else:
					# convert line to bytestring
					bytestring = line['line'][1:]
					self.write_shiftdata(self.filenameDATA_S, line['timestamp'], bytestring)
					if (self.debug):
						debugmessage(line['line'][:1] + bytestring)

			# read SEU counter values
			elif line['line'][:1] in ['C']:
				valstr = line['line'].split(' ')
				if (len(valstr) < 5):
					warning("FPGA{:d} ".format(self.fpgaid) + "Not enough SEU counter data")
					self.write_info(line['timestamp'], self.simple_seus, self.simple_high, self.simple_low,
							self.tmr_seus, self.tmr_high, self.tmr_low,
							'0', 'Not enough SEU counter data received')
				else:
					values = [int(x, 16) for x in valstr[1:]]
					temp_s_seus = values[0] + values[1]
					temp_t_seus = values[2] + values[3]
					# print monitoring state of SEU
					statuscolor("["+str(i)+"]FPGA{:d} ".format(self.fpgaid) + "# of SEUs in Simple:\t total\t: " + \
							"{:d}\t\t0to1\t: {:d}\t\t1to0\t: {:d}".format(\
							temp_s_seus, values[0], values[1]), textcolor=self.fpgaid)
					statuscolor("["+str(i)+"]FPGA{:d} ".format(self.fpgaid) + "# of SEUs in TMR:\t total\t: " + \
							"{:d}\t\t0to1\t: {:d}\t\t1to0\t: {:d}".format(\
							temp_t_seus, values[2], values[3]), textcolor=self.fpgaid)

					# update seus counters
					if ((self.simple_seus < temp_s_seus) or (self.tmr_seus < temp_t_seus)):
						# update seus counters
						self.simple_seus = temp_s_seus
						self.tmr_seus = temp_t_seus
						self.simple_high = values[0]
						self.simple_low = values[1]
						self.tmr_high = values[2]
						self.tmr_low = values[3]
						# write to info log file
						self.write_info(line['timestamp'],self.simple_seus,self.simple_high,self.simple_low,
								self.tmr_seus,self.tmr_high,self.tmr_low,
								'0','SEU occurred')
						warning(f'SEU occurred: [Simple SEU = {self.simple_seus}, TMR SEU = {self.tmr_seus}]')
			# read PSPP registers
			elif line['line'][:1] in ['D']:
				infostring = line['line'].split(' ')
				if (len(infostring) < 25):
					warning("=================================================== [FPGA{:d} ".format(self.fpgaid) + "MOPSHub Communication error ][registers]===================================================")
					self.write_info(line['timestamp'], self.simple_seus, self.simple_high, self.simple_low,
							self.tmr_seus, self.tmr_high, self.tmr_low,
							'1', 'MOPSHubread all registers failed. Not enough data')
				else:
					info = [int(x, 16) for x in infostring[2:]]
					self.write_regs(line['timestamp'], info)
				
			# read SCB monitoring values
			elif line['line'][:1] in ['M']:
				infostring = line['line'].split(' ')
				if (len(infostring) < 6):
					pass
     # warning("=================================================== [FPGA{:d} ".format(self.fpgaid)+"SCB Communication error][monitoring]===================================================")
     # self.write_info(line['timestamp'],self.simple_seus,self.simple_high,self.simple_low,
     # 		self.tmr_seus,self.tmr_high,self.tmr_low,
     # 		'1','SCB monitoring failed. Not enough data')
				else:
					info = [int(x, 16) for x in infostring[2:]]
					self.write_pspp_monitoring(line['timestamp'], info)
					# print MOPSHub monitoring info on terminal
					statuscolor("FPGA{:d} ".format(self.fpgaid) + \
						"SCB Monitoring Data:\tVmod\t= {:03X}\t\tTemp0\t= {:03X}\t\tTemp1\t= {:03X}\t\tBypass\t= {:02X}"\
						.format(info[0], info[1], info[2], info[3]), textcolor=self.fpgaid)

			# read response from PSPP register write command
			elif line['line'][:1] in ['W']:
				infostring = line['line'].split(' ')
				if self.debug:
					debugmessage("write response: {:s}".format(line['line']))
				if (len(infostring) < 4):
					warning("FPGA{:d} ".format(self.fpgaid) + "PSPP Communication errror")
					self.write_info(line['timestamp'], self.simple_seus, self.simple_high, self.simple_low, \
							self.tmr_seus, self.tmr_high, self.tmr_low, \
							'1', 'PSPP write register failed. Not enough data')
				else:
					self.write_info(line['timestamp'], self.simple_seus, self.simple_high, self.simple_low, \
							self.tmr_seus, self.tmr_high, self.tmr_low, \
							'0', "PSPP write register: {:s} with {:s}"\
							.format(infostring[2], infostring[3]))
				
			# read chip monitoring values from ADC
			elif line['line'][:1] in ['A']:
				valstr = line['line'].split(' ')
				if (len(valstr) < 16):
					warning("FPGA{:d} ".format(self.fpgaid) + "ADC Communication error")
					self.write_info(line['timestamp'], self.simple_seus, self.simple_high, self.simple_low, \
							self.tmr_seus, self.tmr_high, self.tmr_low, \
							'0', 'ADC readout failed. Not enough data')
				else:
					self.write_adc_monitoring(line['timestamp'], valstr[1:])
					# convert values to voltages
					vals = [float(int(x, 16)) * 2.5 / 4096.0 for x in valstr[1:]]

					# convert Supply current
					Isup = vals[1] * 10.0  # /100 Ohm * 1000 to have in mA
					Iby = vals[13] * 5.0
					# print monitoring state
					# statuscolor("FPGA{:d} Chip supply:\t\t".format(self.fpgaid)+\
					# 		"Vsup\t= {:.3f}V\tIsup\t= {:.3f}mA\tVdd_SEU\t= {:.3f}V\tIby\t= {:.3f}mA".format(vals[0],Isup,vals[12],Iby),textcolor=self.fpgaid)
					# statuscolor("FPGA{:d} Chip voltages:\t\t".format(self.fpgaid)+\
					# 	"Vdda\t= {:.3f}V\tVddd\t= {:.3f}V\tVref\t= {:.3f}V\tVbg\t= {:.3f}V\tVint\t= {:.3f}V".format(\
				# 		vals[2],vals[3],vals[4],vals[5],vals[6]),textcolor=self.fpgaid)
					# Calculate temperature
					if (vals[4] > vals[7]) and (vals[7] > 0):
						temp0 = 3435 / (math.log(vals[7] / (vals[4] - vals[7])) + 3435 / 298.15) - 273.15
					else:
						temp0 = 99.99
					if (vals[4] > vals[8]) and (vals[8] > 0):
						temp1 = 3435 / (math.log(vals[8] / (vals[4] - vals[8])) + 3435 / 298.15) - 273.15
					else:
						temp1 = 99.99
					# print temperature
					# statuscolor("FPGA{:d} Temperature:\t\t".format(self.fpgaid)+\
				# 		"Vt0\t= {:.3f}V\tVt1\t= {:.3f}V\tTemp0\t= {:.3f}C\tTemp1\t= {:.3f}C".format(\
				# 		vals[7],vals[8],temp0,temp1),textcolor=self.fpgaid)

			# read GPIO
			elif line['line'][:1] in ['G']:
				if (len(line['line']) < 14):
					warning("FPGA{:d} ".format(self.fpgaid) + "GPIO Communication errror")
					self.write_info(line['timestamp'], self.simple_seus, self.simple_high, self.simple_low, \
							self.tmr_seus, self.tmr_high, self.tmr_low, \
							'0', 'GPIO read failed. Not enough data')
				else:
					parseres = parse("GPIO: Value {}", line['line'])
					gpio = int(parseres[0], 16)
					self.write_dig_signals(line['timestamp'], gpio)
					# print GPIO information
					statuscolor("FPGA{:d} Digital Signals\t\t".format(self.fpgaid) + \
							"ClkDetect\t= {:b}\t\tPOR\t= {:b}\t\tCompM\t= {:b}\t\tCompT0\t= {:b}\t\tCompT1\t= {:b}\t\tBypass Ctrl\t= {:b}"\
							.format(gpio & 1, gpio >> 1 & 1, gpio >> 3 & 1, gpio >> 2 & 1, gpio >> 5 & 1, gpio >> 4 & 1), \
							textcolor=self.fpgaid)

			elif line['line'] in ['Ready']:
				if self.debug:
					debugmessage(datetime.now().strftime('%Y-%m-%d_%H:%M:%S.%f')[:-3] + ": " + line['line'])
				None
			else:
				if self.debug:
					debugmessage(datetime.now().strftime('%Y-%m-%d_%H:%M:%S.%f')[:-3] + ": " + line['line'])


if __name__ == '__main__':
	l = listener()
	print ("start")
	l.listen()
	print ("end")
