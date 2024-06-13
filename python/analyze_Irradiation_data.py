#/usr/bin/python3 analyze_Irradiation_data.py --all irradiation_data/2024-01-25_20:49:35_FPGA0_Chip2
import matplotlib.pyplot as plt 
import matplotlib
import numpy as np 
import math
import os
import sys, getopt
import datetime
import time
import string
from math import sqrt
#from logging_messages import *
import analyzer

import sys
import os
from validators import length
from matplotlib.backends.backend_pdf import PdfPages
from logger_main   import Logger
import logging
log_format = '%(log_color)s[%(levelname)s]  - %(name)s -%(message)s'
log_call = Logger(log_format = log_format,name = "Analyzer",console_loglevel=logging.INFO, logger_file = False)
logger = log_call.setup_main_logger()

# get curret working path
path = os.path.abspath('') + '/'
logger.info('curret working path: '+path)
	
#root_dir = os.path.dirname(os.path.abspath(__file__))
#sys.path.append(os.path.dirname(root_dir))
PdfPages = PdfPages(path+'/output_dir/'+'seu_data.pdf')
from plot_style import *
# Define the data from the table

# global variables
_debug = False

def timeconvert(value):
	value = value.decode('UTF-8')
	try:
		x = time.strptime(value,'%H:%M:%S')
		seconds = datetime.timedelta(hours=x.tm_hour, minutes=x.tm_min, seconds=x.tm_sec).total_seconds()
		return seconds
	except ValueError:
		x = time.strptime(value,'%d day, %H:%M:%S')
		seconds = datetime.timedelta(days=x.tm_mday,hours=x.tm_hour, minutes=x.tm_min, seconds=x.tm_sec).total_seconds()
		return seconds

def EmptyColumnConvert(x):
	if str(x) == '':
		return ''
	else:
		return str(x)

def DivErrConvert(x):
	if x.decode('UTF-8') == 'DivErr':
		return 0
	else:
		return x

def inputdata():
	global supply_data
	global bypass_data
	global adc_data

	#Dosis. Die Genaue Dosis muss noch bestimmt werden. [dose] = rad/h
	dose_high = 3244 #3,2 Mrad/h was 3200000
	dose_low = 234 #250krad/h was 250000

	dir_names = os.listdir(path)
	dirs = [path+'/'+str(x) for x in dir_names if x.find('HighDose') != -1 or x.find('LowDose') != -1]
	dirs = [x for x in dirs if os.path.isdir(x)]
	dir_names = [x for x in dir_names if os.path.isdir(path+'/'+str(x))]
	dir_names = [x for x in dir_names if x.find('HighDose') != -1 or x.find('LowDose') != -1]
	dir_names.sort()
	dirs.sort()


	times = []
	for x in dir_names:
		if x.find('LowDose') != -1:
			tmp = time.strptime(x[:-15], '%Y-%m-%d %H:%M:%S')
		else:
			tmp = time.strptime(x[:-16], '%Y-%m-%d %H:%M:%S')
		times.append(datetime.timedelta(days=tmp.tm_mday, hours=tmp.tm_hour, minutes=tmp.tm_min, seconds=tmp.tm_sec).total_seconds())

	lowtime = times[0] #Startzeit der niedrigen Dosis
	hightime = times[4] #Fuer korrekte Umrechnung der Starzeit der hohen Dosis.
	print(times)
	#print('Times:')
	for t in range(len(times)):
		if dir_names[t].find('Low') != -1:
			times[t] = times[t] - lowtime
		else:
			times[t] = times[t] - hightime
	print(times)

	supply_files = [x+'/Supply.txt' for x in dirs]
	bypass_files = [x+'/Bypass.txt' for x in dirs]
	register_files = [x+'/Register.txt' for x in dirs]
	adc_files = [x+'/ADC.txt' for x in dirs]

	#print('ADCfiles:')
	#for x in adc_files:
	#	print(x)

	print('Reading data...')

	#Supply
	supply_data = []
	for x in range(len(supply_files)): #Fertig
		supply_data.append(np.genfromtxt(supply_files[x], skip_header=2, delimiter=';', names=True, converters={0: timeconvert}))
		for data in range(len(supply_data[x])):
			if supply_files[x].find('LowDose') != -1:
				supply_data[x][data][0] = (supply_data[x][data][0] + times[x]) * dose_low
			elif supply_files[x].find('HighDose') != -1:
				supply_data[x][data][0] = (supply_data[x][data][0] + times[x]) * dose_high + (81760+64108)*250000 #Berechnet die Dosis anhand von Zeit[s] * Dosis[rad/h] #Zeitumrechnung


	#Bypass
	bypass_data = []
	for x in range(len(bypass_files)):
		bypass_data.append(np.genfromtxt(bypass_files[x], skip_header=4, delimiter=';', names=True, \
				converters={0: timeconvert, 5: lambda x: x.decode('UTF-8'),6: DivErrConvert}, dtype=[None,None,None,None,None,np.dtype('U2'),None,None,None]))
		for data in range(len(bypass_data[x])):
			if bypass_files[x].find('LowDose') != -1:
				bypass_data[x][data][0] = (bypass_data[x][data][0] + times[x]) * dose_low
			elif bypass_files[x].find('HighDose') != -1:
				bypass_data[x][data][0] = (bypass_data[x][data][0] + times[x]) * dose_high + (81760+64108)*250000

	#Register
	register_data = []
	dtype = [None]
	for x in range(1,14):
		dtype[x:] = [np.dtype('U2')]
	for x in range(len(register_files)):
		register_data.append(np.genfromtxt(register_files[x], skip_header=2, delimiter=';', names=True, usecols=tuple(range(1,14)), \
				converters={0: timeconvert, tuple(range(1,14)):lambda x: x.decode('UTF-8')}, \
				dtype=dtype ))
		for data in range(len(register_data[x])):
			if register_files[x].find('LowDose') != -1:
				register_data[x][data][0] = (int(register_data[x][data][0]) + times[x]) * dose_low
			elif register_files[x].find('HighDose') != -1:
				register_data[x][data][0] = (int(register_data[x][data][0]) + times[x]) * dose_high + (81760+64108)*250000


	#ADC
	adc_data = []
	for x in range(len(adc_files)):
		adc_data.append(np.genfromtxt(adc_files[x], skip_header=3, delimiter=';', names=True, converters={0: timeconvert}))
		for data in range(len(adc_data[x])):
			if adc_files[x].find('LowDose') != -1:
				adc_data[x][data][0] = (adc_data[x][data][0] + times[x]) * dose_low #Berechnet die Dosis anhand von Zeit[s] * Dosis[rad/h] #Zeitumrechnung
			elif adc_files[x].find('HighDose') != -1:
				adc_data[x][data][0] = (adc_data[x][data][0] + times[x]) * dose_high + (81760+64108)*250000


	print('Calculating Stuff...')

	#Berechne Linearitaet des ADC: U_Chip(DAC)=a*DAC+b in Abhaengigkeit der Dosis
	Vmod_lin_params = [[],[],[],[],[]] #Zeit, a, b, a_err, b_err
	index = 0
	last_index = 0
	for data in adc_data:
		last_index = index = 0
		try:
			tmp_data = data['Vmod_dac'].tolist()
			while(True):
				while(True):
					try:
						if data['Vmod_dac'][index+1] < data['Vmod_dac'][index]:
							break
						index = index + 1
					except IndexError:
						break
				#index = tmp_data.index(1.51,last_index+1)
				tmp_xdata = data['Vmod_dac'][last_index:index]
				tmp_ydata = data['Vmod_chip'][last_index:index]
				param, param_err = np.polyfit(tmp_xdata,tmp_ydata,deg=1,cov=True)
				Vmod_lin_params[0].append(np.mean(data['Time'][last_index:index])/3600)
				Vmod_lin_params[1].append(param[0]) #a
				Vmod_lin_params[2].append(param[1]) #b
				Vmod_lin_params[3].append(param_err[0][0]) #a_err
				Vmod_lin_params[4].append(param_err[1][1]) #b_err
				last_index = index

				index = tmp_data.index(0,last_index+1)
				tmp_xdata = data['Vmod_dac'][last_index:index]
				tmp_ydata = data['Vmod_chip'][last_index:index]
				param, param_err = np.polyfit(tmp_xdata,tmp_ydata,deg=1,cov=True)
				Vmod_lin_params[0].append(np.mean(data['Time'][last_index:index])/3600)
				Vmod_lin_params[1].append(param[0]) #a
				Vmod_lin_params[2].append(param[1]) #b
				Vmod_lin_params[3].append(param_err[0][0]) #a_err
				Vmod_lin_params[4].append(param_err[1][1]) #b_err
				last_index = index
		except ValueError:
			pass
			#Nichts tun, lediglich den .index error abfangen und die While beenden

	#Berechne differentielle Nichtlinearitaet
	dnl = 0
	ideal_LSB_voltage = 1/0.2625/pow(2,10) #extern benoetigte Spannungsaenderung um das LSB zu flippen.
	max_dnl_dac = 0
	for data in adc_data:
		for x in range(len(data)-1):
			tmp_dnl = abs(data['Vmod_chip'][x+1]-data['Vmod_chip'][x])/ideal_LSB_voltage-1
			if tmp_dnl > dnl:
				dnl = tmp_dnl
				max_dnl_dac = data['Vmod_dac'][x]
				print(x)

	print('')
	print('DNL = '+str(dnl))
	print('Entspricht einer Spannungsaenderung von: '+str(dnl*ideal_LSB_voltage))
	print(max_dnl_dac)
	print('')


	#ADC0_mean Berechnung
	tmp_times = []
	tmp_adc0_diff = []
	for x in range(len(adc_data)):
		for data in range(len(adc_data[x])):
			tmp_times.append(adc_data[x][data]['Time'])
			tmp_adc0_diff.append(adc_data[x][data]['ADC0_dac']-adc_data[x][data]['ADC0_chip'])

	time_diff = 0
	tmp_time = 0
	tmp_value = 0
	counter = 0
	last_mean = 0
	std = 0
	adc0_mean = [[],[]]
	for x in range(len(tmp_times)):
		tmp_time = tmp_time + tmp_times[x]
		tmp_value = tmp_value + tmp_adc0_diff[x]
		counter = counter + 1
		if (time_diff - tmp_times[x] <= -250000*3600): #Mitteln ueber Dosis von 50krad
			#print(tmp_times[x])
			adc0_mean[0].append(float(format(tmp_time/counter/3600,'.3f')))
			adc0_mean[1].append(float(format(tmp_value/counter,'.3f')))
			tmp_time = 0
			tmp_value = 0
			counter = 0
			time_diff = tmp_times[x]
		#elif tmp_times[x] == tmp_times[-1]: doesnt look good in plots: random point in the middle of nowhere...
		#	adc0_mean[0].append(float(format(tmp_time/counter/3600,'.3f')))
		#	adc0_mean[1].append(float(format(tmp_value/counter,'.3f')))
		#	tmp_time = 0
		#	tmp_value = 0
		#	counter = 0


	#ddd_mean Berechnung
	tmp_times = []
	tmp_ddd = []
	for x in range(len(supply_data)):
		for data in range(len(supply_data[x])):
			tmp_times.append(supply_data[x][data]['Time'])
			tmp_ddd.append(supply_data[x][data]['I_DDD'])

	time_diff = 0
	tmp_time = 0
	tmp_value = 0.0
	counter = 0
	last_mean = 0
	std = 0
	ddd_mean = [[],[],[]] #time,mean,std
	for x in range(len(tmp_times)):
		tmp_time = tmp_time + tmp_times[x]
		tmp_value = tmp_value + tmp_ddd[x]
		counter = counter + 1
		if (time_diff - tmp_times[x] <= -250000): #Mitteln ueber Dosis von 50krad
			#print(tmp_times[x])
			ddd_mean[0].append(float(format(tmp_time/counter/3600,'.3f')))
			ddd_mean[1].append(float(format(tmp_value/counter,'.3f')))
			tmp_time = 0
			tmp_value = 0
			counter = 0
			time_diff = tmp_times[x]
			for y in range(last_mean,x):
				std = std + pow(ddd_mean[1][-1]-tmp_ddd[y],2)
			ddd_mean[2].append(sqrt(std/counter))
			std = 0
			last_mean = x
		elif tmp_times[x] == tmp_times[-1]:
			ddd_mean[0].append(float(format(tmp_time/counter/3600,'.3f')))
			ddd_mean[1].append(float(format(tmp_value/counter,'.3f')))
			for y in range(last_mean,x):
				std = std + pow(ddd_mean[1][-1]-tmp_ddd[y],2)
			ddd_mean[2].append(sqrt(std/counter))

	#dda_mean Berechnung
	tmp_times = []
	tmp_dda = []
	for x in range(len(supply_data)):
		for data in range(len(supply_data[x])):
			tmp_times.append(supply_data[x][data]['Time'])
			tmp_dda.append(supply_data[x][data]['I_DDA'])

	time_diff = 0
	tmp_time = 0
	tmp_value = 0
	counter = 0
	last_mean = 0
	std = 0
	dda_mean = [[],[],[]]
	for x in range(len(tmp_times)):
		tmp_time = tmp_time + tmp_times[x]
		tmp_value = tmp_value + tmp_dda[x]
		counter = counter + 1
		if (time_diff - tmp_times[x] <= -250000): #Mitteln ueber Dosis von 50krad
			#print(tmp_times[x])
			dda_mean[0].append(float(format(tmp_time/counter/3600,'.3f')))
			dda_mean[1].append(float(format(tmp_value/counter,'.3f')))
			tmp_time = 0
			tmp_value = 0
			counter = 0
			time_diff = tmp_times[x]
			for y in range(last_mean,x):
				std = std + pow(dda_mean[1][-1]-tmp_dda[y],2)
			dda_mean[2].append(sqrt(std/counter))
			std = 0
			last_mean = x
		elif tmp_times[x] == tmp_times[-1]:
			dda_mean[0].append(float(format(tmp_time/counter/3600,'.3f')))
			dda_mean[1].append(float(format(tmp_value/counter,'.3f')))
			for y in range(last_mean,x):
				std = std + pow(dda_mean[1][-1]-tmp_dda[y],2)
			dda_mean[2].append(sqrt(std/counter))

	#ref_mean Berechnung
	tmp_times = []
	tmp_ref = []
	for x in range(len(supply_data)):
		for data in range(len(supply_data[x])):
			tmp_times.append(supply_data[x][data]['Time'])
			tmp_ref.append(supply_data[x][data]['I_Ref'])

	time_diff = 0
	tmp_time = 0
	tmp_value = 0
	counter = 0
	last_mean = 0
	std = 0
	ref_mean = [[],[],[]]
	for x in range(len(tmp_times)):
		tmp_time = tmp_time + tmp_times[x]
		tmp_value = tmp_value + tmp_ref[x]
		counter = counter + 1
		if (time_diff - tmp_times[x] <= -250000): #Mitteln ueber Dosis von 50krad
			#print(tmp_times[x])
			ref_mean[0].append(float(format(tmp_time/counter/3600,'.3f')))
			ref_mean[1].append(float(format(tmp_value/counter,'.3f')))
			tmp_time = 0
			tmp_value = 0
			counter = 0
			time_diff = tmp_times[x]
			for y in range(last_mean,x):
				std = std + pow(ref_mean[1][-1]-tmp_ref[y],2)
			ref_mean[2].append(sqrt(std/counter))
			std = 0
			last_mean = x
		elif tmp_times[x] == tmp_times[-1]:
			ref_mean[0].append(float(format(tmp_time/counter/3600,'.3f')))
			ref_mean[1].append(float(format(tmp_value/counter,'.3f')))
			for y in range(last_mean,x):
				std = std + pow(ref_mean[1][-1]-tmp_ref[y],2)
			ref_mean[2].append(sqrt(std/counter))


	#Berechne Roff
	tmp = []
	for data in bypass_data:
		for x in data['U_Bypass']/data['I_Bypass']:
				tmp.append(x)
	tmp = [x for x in tmp if not (x == 'inf' or x == float('inf'))]

	mean = np.mean(tmp)
	std = np.std(tmp)
	print('Erwartungswert Roff: '+format(mean,'.03f')+' Ohm')
	print('Standardabweichung Roff: '+format(std,'.03f')+' Ohm')

def supply_current():
	print('supply plot')
	global supply_data

	#SUPPLY
	#Plotte Stroeme
	label_set = 0
	plt.figure(figsize=(10,5))
	for data in supply_data:
		plot1, = plt.plot(data['Time']/3600,data['I_DDD'],'r.',label='I_DDD')
		plot2, = plt.plot(data['Time']/3600,data['I_Sup'],'b.',label='I_Sup')
		plot3, = plt.plot(data['Time']/3600,data['I_DDA'],'c.',label='I_DDA')
		plot4, = plt.plot(data['Time']/3600,data['I_Ref'],'g.',label='I_Ref')
	#plot5, = plt.plot(ddd_mean[0],ddd_mean[1],'k.',label='I_DDD_mean',markersize=2)
	#plot6, = plt.plot(dda_mean[0],dda_mean[1],'k.',label='I_DDA_mean',markersize=2)
	#plot7, = plt.plot(ref_mean[0],ref_mean[1],'k.',label='I_Ref_mean',markersize=2)
	if label_set == 0:
		label_set = 1
		plt.legend(handles=[plot1,plot2,plot3,plot4], loc='best')

	plt.grid()
	plt.title('PSPPv3 supply currents')
	plt.xlabel('Dose / rad')
	plt.ylabel('Current / mA')
	plt.xscale('log')
	plt.savefig(path+'/evaluated/CompleteDose/SupplyCurrents.png', dpi=600)
	plt.savefig(path+'/evaluated/CompleteDose/SupplyCurrents.eps', dpi=600)
	plt.close()

def supply_voltage():
	print('supply voltage plot')
	global supply_data

	#Plotte Spannungen
	label_set = 0
	plt.figure(figsize=(10,5))
	for data in supply_data:
		plot1, = plt.plot(data['Time']/3600,data['V_DDD'],'r.',label='U_DDD')
		plot2, = plt.plot(data['Time']/3600,data['V_Sup'],'b.',label='U_Sup')
		plot3, = plt.plot(data['Time']/3600,data['V_DDA'],'c.',label='U_DDA')
		plot4, = plt.plot(data['Time']/3600,data['V_Ref'],'g.',label='U_Ref')
		plot5, = plt.plot(data['Time']/3600,data['V_BG'],'k.',label='U_BG')
		if label_set == 0:
			label_set = 1
			plt.legend(handles=[plot1,plot2,plot3,plot4,plot5], loc='best')


	plt.grid()
	plt.title('PSPPv3 supply voltages')
	plt.xlabel('Dose / rad')
	plt.ylabel('Voltage / V')
	plt.xscale('log')
	plt.savefig(path+'/evaluated/CompleteDose/SupplyVoltages.png', dpi=600)
	plt.savefig(path+'/evaluated/CompleteDose/SupplyVoltages.eps', dpi=600)
	plt.close()

def bypass():
	print('bypass plot')
	global bypass_data

	#Bypass
	label_set = 0
	fig, ax1 = plt.subplots(figsize=(10,5))

	ax1.set_ylabel('Voltage / V')
	ax1.set_xlabel('Dose / rad')
	ax1.grid()
	ax2 = ax1.twinx()
	ax2.set_ylabel('Current / A')

	for data in bypass_data:
		ax1.plot(data['Time']/3600,data['U_Bypass'],'r.',label='U_Bypass')
		ax2.plot(data['Time']/3600,data['I_Bypass'],'b.',label='I_Bypass')
		if label_set == 0:
			label_set = 1
			lines, labels = ax1.get_legend_handles_labels()
			lines2, labels2 = ax2.get_legend_handles_labels()
			ax1.legend(lines+lines2, labels+labels2, loc='right')

	plt.xscale('log')
	plt.title('Bypass voltage and leakagecurrent')
	plt.savefig(path+'/evaluated/CompleteDose/Bypass.png',dpi=600)
	plt.savefig(path+'/evaluated/CompleteDose/Bypass.eps',dpi=600)
	plt.close()

def adc0():
	print('adc0 plot')
	global adc_data

	#ADC
	#ADC0_diff
	label_set = 0
	plt.figure(figsize=(10,5))
	for data in range(len(adc_data)):
		plot1, = plt.plot(adc_data[data]['Time']/3600,adc_data[data]['ADC0_dac']-adc_data[data]['ADC0_chip'],'r.',label='ADC0_diff')
		#if label_set == 0:
		#	label_set = 1
		#	plt.legend(handles=[plot1], loc='best')
	label_set = 0
	plot2, = plt.plot(adc0_mean[0],adc0_mean[1],'k.',label='ADC0_mean',markersize=4)
	if label_set == 0:
		label_set = 1
		plt.legend(handles=[plot1,plot2], loc='best')

	plt.grid()
	plt.title('ADC precision')
	plt.xlabel('Dose / rad')
	plt.ylabel('Voltage difference / V')
	plt.xscale('log')
	plt.savefig(path+'/evaluated/CompleteDose/ADCprecision.png',dpi=600)
	plt.savefig(path+'/evaluated/CompleteDose/ADCprecision.eps',dpi=600)
	plt.close()

def adc0vsdac():
	print('adc0 vs dac plot')
	global adc_data

	#ADC0 chip against dac
	label_set = 0
	plt.figure(figsize=(10,5))
	for data in adc_data:
		plot1, = plt.plot(data['Vmod_dac'],data['Vmod_chip'],'k.',label='Vmod_diff')
		#plot2, = plt.plot(data['Time']/3600,data['Vmod_dac'],'r.',label='Vmod_dac')
		if label_set == 0:
			label_set = 1
			plt.legend(handles=[plot1], loc='best')

	plt.grid()
	plt.title('PSPPv3 ADC vs DAC')
	plt.xlabel('Vmod_dac / V')
	plt.ylabel('Vmod_chip / V')
	plt.savefig(path+'/evaluated/CompleteDose/Vmod_chip_dac.png',dpi=600)
	plt.savefig(path+'/evaluated/CompleteDose/Vmod_chip_dac.eps',dpi=600)
	plt.close()

def adcconstant():
	print('constant voltages plot')
	global adc_data

	#ADC constant voltages
	label_set = 0
	plt.figure(figsize=(10,5))
	for data in adc_data:
		plot1, = plt.plot(data['Time']/3600,data['BG'],'r.',label='BG')
		plot2, = plt.plot(data['Time']/3600,data['ThMod'],'b.',label='ThMod')
		plot3, = plt.plot(data['Time']/3600,data['ThTemp'],'g.',label='ThTemp')
		plot4, = plt.plot(data['Time']/3600,data['Vglobal'],'c.',label='Vglobal')
		plot5, = plt.plot(data['Time']/3600,data['VddaHalf'],'k.',label='VddaHalf')
		if label_set == 0:
			label_set = 1
			plt.legend(handles=[plot1,plot2,plot3,plot4,plot5], loc='right')

	plt.grid()
	plt.title('PSPPv3 ADC constant voltages')
	plt.xlabel('Dose / rad')
	plt.ylabel('Voltage / V')
	plt.xscale('log')
	plt.savefig(path+'/evaluated/CompleteDose/ADC_constant.png', dpi=600)
	plt.savefig(path+'/evaluated/CompleteDose/ADC_constant.eps', dpi=600)
	plt.close()

def adc_inl():
	print('ADC INL')
	#ADC Vmod linearitaet(Dosis)
	fig, ax1 = plt.subplots(figsize=(10,5))
	ax1.set_ylabel('Slope / V/V')
	ax1.set_xlabel('Dose / rad')
	ax1.grid()
	#ax1.set_yticks([ 1.  ,  1.01,  1.02,  1.03,  1.04,  1.05,  1.06,  1.07,  1.08, 1.09,  1.1 ])
	ax2 = ax1.twinx()
	ax2.set_ylabel('Offset / V')

	ax1.errorbar(x=Vmod_lin_params[0],y=Vmod_lin_params[1],yerr=Vmod_lin_params[3],fmt='.',c='blue',label='ADC slope')
	ax2.errorbar(x=Vmod_lin_params[0],y=Vmod_lin_params[2],yerr=Vmod_lin_params[4],fmt='.',c='red',label='ADC offset')
	lines, labels = ax1.get_legend_handles_labels()
	lines2, labels2 = ax2.get_legend_handles_labels()
	ax1.legend(lines+lines2, labels+labels2, loc='best')
	plt.title('ADC integral nonlinearty')
	plt.xscale('log')
	plt.savefig(path+'/evaluated/CompleteDose/ADCinl.png', dpi=600)
	plt.savefig(path+'/evaluated/CompleteDose/ADCinl.eps', dpi=600)
	plt.close()

###############################################################################################
def parameterhelp():
	##
	# print help text for program
	print ("Usage: python Analyse_Irradiation_data.py [-h] <Folder/to/data>")
	print ("-h : help")
	print ("-v : Analyze chip voltages")
	print ("-r : Analyze PSPP registers and ADCs (not valid for MOPSHUB)")
	print ("--all : perform all analysis")
	print ("Argument: path to folder with data")


# Main function
if __name__ == '__main__':

	
	# get program arguments
	try:
		opts, args = getopt.getopt(sys.argv[1:],"hdrvt",["help","all"])
	except getopt.GetoptError:
		warning("Wrong parameter given")
		parameterhelp()
		exit()
		
	analyzePSPPregs = False
	analyzeVoltages = False
	analyzeTest = False

	# parse arguments
	for opt,arg in opts:
		if opt in ("-h","--help"):
			parameterhelp()
			exit()
		if opt in ("-d"):
			_debug = True
			debugmessage("Debug active")
		if opt in ("-r"):
			analyzePSPPregs = True
		if opt in ("-v"):
			analyzeVoltages = True
		if opt in ("--all"):
			#analyzePSPPregs = True
			analyzeVoltages = True
			analyzeTest 	= True
		if opt in ("-t"):
			analyzeTest = True
	if len(args) < 1:
		logger.error("No argument given! Need path to data folder")
	logger.info("checking SEU test directory"+str(args))

	a = analyzer.Analyzer(DEBUG=_debug, test = "SEU_Hold_Test")

	if (analyzePSPPregs):
		a.read_psppv4_register_file(path+args[0])
		# analyze ADC
		a.plot_psppv4_adc(path, PdfPages=PdfPages)
	if (analyzeVoltages):
		a.read_voltages_file(path+args[0])
		# plot voltages
		a.plot_chip_voltages(path, PdfPages=PdfPages)
	if (analyzeTest):
		#a.read_psppv4_register_file(path+args[0])
		#a.read_voltages_file(path+args[0])
		print('------------------------------------------------------------')
		#a.plot_test(path, PdfPages=PdfPages)
		print('------------------------------------------------------------')
		#Used command [write_hw_ila_data my_hw_ila_data_file.ila [upload_hw_ila_data hw_ila_1]]
		
		#ila_file = "MOPSHUB_hw_ila_data_file.csv"
		#a.plot_sem_parameters(path = path, file_name=ila_file,PdfPages=PdfPages)
		print('------------------------------------------------------------')
		
		PdfPages.close()
    

