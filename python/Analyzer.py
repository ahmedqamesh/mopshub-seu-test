import matplotlib.pyplot as plt 
import matplotlib
import numpy as np 
import math
import os
import sys, getopt
import datetime
import time
import string
import collections 
from math import sqrt
from messages import *

matplotlib.rcParams['lines.markersize'] = 2

class Analyzer():

	# create and open file to store data
	filenameVOLTSHEX = 'PSPPv4_Xray_VoltagesHex.txt'
	filenamePSPPMON = 'PSPPv4_Xray_PSPPmonitoring.txt'
	filenamePSPPREGS = 'PSPPv4_Xray_PSPPregisters.txt'
	filenameDIG = 'PSPPv4_Xray_DigitalSignals.txt'
	filenameINFO = 'PSPPv4_Xray_Info.txt'
	plotdir = '/Plots/'

	def __init__(self, DEBUG=False):
		self.debug = DEBUG

	def read_voltages_file(self,path):
		##
		# Read text file with monitored voltages

		# convert text file to array
		self.voltshex = np.genfromtxt(path+self.filenameVOLTSHEX, skip_header=0, delimiter='\t', names=True,
				converters={x:lambda s: int(s,16) for x in range(1,16)}, usecols=range(13))

		if self.debug:
			debugmessage("Imported Data")
			print self.voltshex

	def conv_board_adc_volts(val):
		##
		# convert a hex value from the board ADC into a voltage
		# return value in Volts

		return val*2.5/4096

	def convert_voltages(self):
		##
		# convert Hex values form board ADCs to voltages

		time = self.voltshex['Time']
		v_sup = np.apply_along_axis(self.conv_board_adc_volts, 'V_sup', self.voltshex)

		print self.voltshex['V_sup']
		print v_sup

	def read_psppv4_register_file(self,path):
		## 
		# Read text file with register data

		t_reg = [('Time',float)]+[('r{}'.format(i),int) for i in range(15)]+[('a{}'.format(i),int) for i in range(8)]
		# convert text file to array
		self.psppregs = np.genfromtxt(path+self.filenamePSPPREGS, skip_header=2, delimiter='\t', 
				dtype=t_reg, converters={x:lambda s: int(s,16) for x in range(1,24)})

		if self.debug:
			debugmessage("Imported Data")
			print self.psppregs

	def plot_psppv4_adc(self):
		##
		# Plot data from PSPPv4 ADC readings

		#status("Convert PSPPv4 ADC values")

		status("Plot PSPPv4 ADC values")
		plt.figure(figsize=(10,5))
		plt.plot(self.psppregs['Time'],self.psppregs['a0'],'.',label='V_Mod',color='black')
		plt.plot(self.psppregs['Time'],self.psppregs['a1'],'.',label='Th_Mod',color='red')
		plt.plot(self.psppregs['Time'],self.psppregs['a2'],'.',label='Temp0',color='green')
		plt.plot(self.psppregs['Time'],self.psppregs['a3'],'.',label='Temp1',color='blue')
		plt.plot(self.psppregs['Time'],self.psppregs['a4'],'.',label='Th_Temp',color='yellow')
		plt.plot(self.psppregs['Time'],self.psppregs['a5'],'.',label='Vglobal',color='magenta')
		plt.plot(self.psppregs['Time'],self.psppregs['a6'],'.',label='V_int',color='cyan')
		plt.plot(self.psppregs['Time'],self.psppregs['a7'],'.',label='V_bg',color='#808080')

		plt.grid()
		plt.title('PSPPv4 ADC readings')
		plt.xlabel('time [s]')
		plt.ylabel('ADC value [bin]')
		plt.legend(loc='best')
		if self.debug:
			plt.show()

	def plot_chip_voltages(self):
		##
		# Plot chip voltages

		#self.convert_voltages()

		status("Plot Chip voltages")
		plt.figure(figsize=(10,5))
		plt.plot(self.voltshex['Time'],self.voltshex['V_sup'],'.',label='V_sup',color='black')
		plt.plot(self.voltshex['Time'],self.voltshex['I_sup'],'.',label='I_sup',color='red')
		plt.plot(self.voltshex['Time'],self.voltshex['V_byh'],'.',label='V_byh',color='green')
		plt.plot(self.voltshex['Time'],self.voltshex['V_byl'],'.',label='V_byl',color='blue')
		plt.plot(self.voltshex['Time'],self.voltshex['Vdd_a'],'.',label='Vdd_a',color='yellow')
		plt.plot(self.voltshex['Time'],self.voltshex['Vdd_d'],'.',label='Vdd_d',color='magenta')
		plt.plot(self.voltshex['Time'],self.voltshex['V_ref'],'.',label='V_ref',color='cyan')
		plt.plot(self.voltshex['Time'],self.voltshex['V_bg'],'.',label='V_bg',color='#808080')
		#plt.plot(self.psppregs['Time'],self.psppregs['a2'],'.',label='Temp0',color='green')
		#plt.plot(self.psppregs['Time'],self.psppregs['a3'],'.',label='Temp1',color='blue')
		#plt.plot(self.psppregs['Time'],self.psppregs['a4'],'.',label='Th_Temp',color='yellow')
		#plt.plot(self.psppregs['Time'],self.psppregs['a5'],'.',label='Vglobal',color='magenta')
		#plt.plot(self.psppregs['Time'],self.psppregs['a6'],'.',label='V_int',color='cyan')
		#plt.plot(self.psppregs['Time'],self.psppregs['a7'],'.',label='V_bg',color='#808080')

		plt.grid()
		plt.title('PSPPv4 chip voltages')
		plt.xlabel('time [s]')
		plt.ylabel('ADC value [bin]')
		plt.legend(loc='best')
		if self.debug:
			plt.show()

	def plot_test(self):
		status("Plot Chip voltages")
		plt.figure(figsize=(10,5))
		plt.plot(self.voltshex['Time'],self.voltshex['V_bg'],'.',label='V_bg',color='#808080')
		plt.plot(self.psppregs['Time'],self.psppregs['r11'],'.',label='R11',color='blue')
		plt.plot(self.psppregs['Time'],self.psppregs['r12'],'.',label='R12',color='green')
		plt.plot(self.psppregs['Time'],self.psppregs['r10'],'.',label='R10',color='red')

		plt.grid()
		#plt.title('PSPPv4 chip voltages')
		plt.xlabel('time [s]')
		plt.ylabel('ADC value [bin]')
		plt.legend(loc='best')
		if self.debug:
			plt.show()

		
