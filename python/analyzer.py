import matplotlib.pyplot as plt 
import matplotlib
import numpy as np 
import math
import os
import sys, getopt
from datetime import datetime
import time
import string
import pandas as pd
import csv
import re
from logger_main   import Logger
import logging
log_format = '%(log_color)s[%(levelname)s]  - %(name)s -%(message)s'
log_call = Logger(log_format=log_format, name="Analyzer", console_loglevel=logging.INFO, logger_file=False)
logger = log_call.setup_main_logger()

output_dir = "output_dir/"

plot_h, plot_w = 6, 4
text_font, label_font , legend_font, marker_size = 12, 10, 8, 4
col_row = ['red', 'green', 'blue', '#1f78b4', '#33a02c', '#e31a1c', '#ff7f00', '#6a3d9a', '#b15928', '#a6cee3']
matplotlib.rcParams['lines.markersize'] = marker_size
# Set plot dimensions 
matplotlib.rcParams['figure.figsize'] = (plot_h, plot_w)  # Adjust the width and height as needed
# Set label font size
matplotlib.rcParams['axes.labelsize'] = label_font

# Set legend font size
matplotlib.rcParams['legend.fontsize'] = legend_font
# Set text font size
matplotlib.rcParams['font.size'] = text_font  # You can adjust the size as needed


class Analyzer():

	def __init__(self, DEBUG=False, plotdir='/Plots/', test="PSPPv4_Xray"):
		self.debug = DEBUG
		self.plotdir = plotdir

		# create and open file to store data
		logger.info("open file to store data")
		self.filenameVOLTSHEX = '/' + test + '_VoltagesHex.txt'
		self.filenamePSPPMON = '/' + test + '_PSPPmonitoring.txt'
		self.filenamePSPPREGS = '/' + test + '_PSPPregisters.txt'
		self.filenameDIG = '/' + test + '_DigitalSignals.txt'
		self.filenameINFO = '/' + test + '_Info.txt'

	def read_voltages_file(self, path):
		# #
		# Read text file with monitored voltages

		# convert text file to array
		self.voltshex = np.genfromtxt(path + self.filenameVOLTSHEX, skip_header=0, delimiter='\t', names=True,
				converters={x:lambda s: int(s, 16) for x in range(1, 16)}, usecols=range(16))
		header_names = self.voltshex.dtype.names
		# print(header_names)
		if self.debug:
			debugmessage("Imported Data")
			print (self.voltshex)

	def conv_board_adc_current(self):
		
		def conv_board_adc_Isup(val):
			# convert a hex value from the board ADC into a voltage
			return val * 10.0 * 2.5 / 4096

		def conv_board_adc_Iby(val):
			# convert a hex value from the board ADC into a voltage
			return val * 5.0 * 2.5 / 4096
		
		Isup_cal = np.apply_along_axis(conv_board_adc_Isup, axis=0, arr=self.voltshex["I_sup"])  # /100 Ohm * 1000 to have in mA
		Iby_cal = np.apply_along_axis(conv_board_adc_Iby, axis=0, arr=self.voltshex["Iby"])  # /100 Ohm * 1000 to have in mA
		return Isup_cal, Iby_cal
	
	def convert_voltages(self, voltage='V_sup'):

		# convert Hex values form board ADCs to voltages
		def conv_board_adc_volts(val):
			# convert a hex value from the board ADC into a voltage
			return val * 2.5 / 4096
		
		voltage_cal = np.apply_along_axis(conv_board_adc_volts, axis=0, arr=self.voltshex[voltage])
		return  voltage_cal

	# Calibration function
	def convert_temp(self, row):
		# Calculate temperature
		# self.voltshex[voltage]
		if (vals[4] > vals[7]) and (vals[7] > 0):
			temp0 = 3435 / (math.log(vals[7] / (vals[4] - vals[7])) + 3435 / 298.15) - 273.15
		else:
			temp0 = 99.99
	
		if (vals[4] > vals[8]) and (vals[8] > 0):
			temp1 = 3435 / (math.log(vals[8] / (vals[4] - vals[8])) + 3435 / 298.15) - 273.15
		else:
			temp1 = 99.99
	
		return temp0, temp1

	def read_psppv4_register_file(self, path):
		# # 
		# Read text file with register data

		t_reg = [('Time', float)] + [('r{}'.format(i), int) for i in range(15)] + [('a{}'.format(i), int) for i in range(8)]
		# convert text file to array
		self.psppregs = np.genfromtxt(path + self.filenamePSPPREGS, skip_header=2, delimiter='\t',
				dtype=t_reg, converters={x:lambda s: int(s, 16) for x in range(1, 24)})

		if self.debug:
			debugmessage("Imported Data")
			print (self.psppregs)

	def plot_psppv4_adc(self, path, PdfPages, text_enable=False):
		# #
		# Plot data from PSPPv4 ADC readings

		# status("Convert PSPPv4 ADC values")

		logger.info("Plot PSPPv4 ADC values")
		plt.figure()
		plt.plot(self.psppregs['Time'], self.psppregs['a0'], '.', label='V_Mod', color='black')
		plt.plot(self.psppregs['Time'], self.psppregs['a1'], '.', label='Th_Mod', color='red')
		plt.plot(self.psppregs['Time'], self.psppregs['a2'], '.', label='Temp0', color='green')
		plt.plot(self.psppregs['Time'], self.psppregs['a3'], '.', label='Temp1', color='blue')
		plt.plot(self.psppregs['Time'], self.psppregs['a4'], '.', label='Th_Temp', color='yellow')
		plt.plot(self.psppregs['Time'], self.psppregs['a5'], '.', label='Vglobal', color='magenta')
		plt.plot(self.psppregs['Time'], self.psppregs['a6'], '.', label='V_int', color='cyan')
		plt.plot(self.psppregs['Time'], self.psppregs['a7'], '.', label='V_bg', color='#808080')

		plt.grid()
		plt.title('PSPPv4 ADC readings')
		plt.xlabel('time [s]')
		plt.ylabel('ADC value [bin]')
		plt.legend(loc='best')
		logger.success("Save  ADC values plot to " + path + "plot_psppv4_adc.png")
		plt.tight_layout()	
		plt.savefig(path + output_dir + "plot_psppv4_adc.png", bbox_inches='tight') 	
		plt.title('PSPPv4 ADC readings')
		plt.tight_layout()	  
		PdfPages.savefig()
		if self.debug:
			plt.show()
		plt.clf()
		
	def plot_chip_voltages(self, path, PdfPages, text_enable=False):
		# #
		# Plot chip voltages
		# calibrate
		# Apply the calibration function to each row
		# calibrated_data = data.apply(calibrate_row, axis=1)
		V_sup = self.convert_voltages(voltage="V_sup")
		V_bg = self.convert_voltages(voltage="V_bg")
		V_ref = self.convert_voltages(voltage="V_ref")
		Vdd_d = self.convert_voltages(voltage="Vdd_d")
		Vdd_a = self.convert_voltages(voltage="Vdd_a")
		Vglobal = self.convert_voltages(voltage="Vglobal")
		V_int = self.convert_voltages(voltage="V_int")
				
		logger.info("Plot Chip voltages")
		fig1, ax1 = plt.subplots()
		ax1.plot(self.voltshex['Times'], V_sup, '.', label='V_sup', color='black')
		ax1.plot(self.voltshex['Times'], V_int, '.', label='V_int', color='green')
		ax1.plot(self.voltshex['Times'], Vglobal, '.', label='Vglobal', color='blue')
		ax1.plot(self.voltshex['Times'], Vdd_a, '.', label='Vdd_a', color='yellow')
		ax1.plot(self.voltshex['Times'], Vdd_d, '.', label='Vdd_d', color='magenta')
		ax1.plot(self.voltshex['Times'], V_ref, '.', label='V_ref', color='cyan')
		ax1.plot(self.voltshex['Times'], V_bg, '.', label='V_bg', color='#808080')

		plt.grid()
		plt.title('PSPPv4 chip voltages')
		plt.xlabel('time [s]')
		plt.ylabel('voltage[V]')
		plt.legend(loc='best')
		logger.success("Save Chip voltages plot to " + path + "plot_chip_voltages.png")
		plt.tight_layout()
		plt.savefig(path + output_dir + "plot_chip_voltages.png", bbox_inches='tight') 
		plt.title('PSPPv4 chip voltages')
		plt.tight_layout()
		PdfPages.savefig()
		if self.debug:
			plt.show()
		plt.clf()
		
		Isup, Iby_cal = self.conv_board_adc_current()
		logger.info("Plot Chip Current")
		fig2, ax2 = plt.subplots()
		ax2.plot(self.voltshex['Times'], Isup, '.', label='I_sup', color='black')
		ax2.plot(self.voltshex['Times'], Iby_cal, '.', label='I_sup', color='red')

		plt.grid()
		plt.title('PSPPv4 chip Current')
		plt.xlabel('time [s]')
		plt.ylabel('Current[mA]')
		plt.legend(loc='best')
		logger.success("Save Chip Current plot to " + path + "plot_chip_current.png")
		plt.tight_layout()
		plt.savefig(path + output_dir + "plot_chip_current.png", bbox_inches='tight') 
		plt.title('PSPPv4 chip Current')
		plt.tight_layout()
		PdfPages.savefig()
		if self.debug:
			plt.show()
		plt.clf()
					
	def plot_test(self, path, PdfPages, text_enable=False):
		fig0, ax0 = plt.subplots()
		plt.tight_layout()
		plt.savefig(path + output_dir + "plot_seu_test.png", bbox_inches='tight')
		plt.title('plot_test') 
		plt.tight_layout()
		PdfPages.savefig()
		plt.clf()
		return None

  # logger.info("Plot Chip voltages")
  # plt.figure()
  # plt.plot(self.voltshex['Time'],self.voltshex['V_bg'],'.',label='V_bg',color='#808080')
  # plt.plot(self.psppregs['Time'],self.psppregs['r11'],'.',label='R11',color='blue')
  # plt.plot(self.psppregs['Time'],self.psppregs['r12'],'.',label='R12',color='green')
  # plt.plot(self.psppregs['Time'],self.psppregs['r10'],'.',label='R10',color='red')
  #
  # plt.grid()
  # #plt.title('PSPPv4 chip voltages')
  # plt.xlabel('time [s]')
  # plt.ylabel('ADC value [bin]')
  # plt.legend(loc='best')
  # print("Saved to "+path +"/plot_test.png")
  # plt.savefig(path+output_dir+"plot_test.png", bbox_inches='tight') 
  # if self.debug:
  # 	plt.show()

			
