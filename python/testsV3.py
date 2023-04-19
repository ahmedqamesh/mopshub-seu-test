# coding: utf8
from time import sleep
from time import time
from random import random
import numpy as np 
import matplotlib.pyplot as plt 
import os
import sys
import datetime

import registers as reg

def WaitForReady(fpga, output = 0):  #Needed for every command send to fpga
	
	if ( output ):
		text = ''
		while (text != 'Ready') :
			print("Waiting...  " + text)
			text = fpga.readline()
			text = text.replace('\n' , '')
			text = text.replace('\r' , '')
			sleep(0.0001)
		print("Done waiting.")
	else:
		text = ''
		while (text != 'Ready') :
			text = fpga.readline()
			text = text.replace('\n' , '')
			text = text.replace('\r' , '')
			sleep(0.0001)

def regulator(fpga):
	steps = int(raw_input('Voltage steps in mV: '))

	voltage_dac = []
	voltage_supply_out = []
	voltage_chip = []
	current = []

	voltage_dac_b = []
	voltage_supply_out_b = []
	voltage_chip_b = []
	current_b = []

	#setting adc in korrekt state for readout-loop
	fpga.write( reg.ADC(1, 3) )
	WaitForReady(fpga)

	for u_dac in range(0, 2500, steps):

		voltage_dac.append(float(u_dac)/1000)
		command = reg.DAC(4, 'a', u_dac)
		fpga.write(command)

		WaitForReady(fpga)
		sleep(0.05)


		fpga.write(reg.ADC(1,1))
		tmp = fpga.readline() #reads output of ADC(1,3)
		index = tmp.rfind('Spannung ')
		tmp_current = float(tmp[index+9:index+13])/1000 * 10
		current.append(tmp_current)
		WaitForReady(fpga)

		fpga.write(reg.ADC(1,3))
		tmp = fpga.readline() #reads output of ADC(1,1)
		index = tmp.rfind('Spannung ')
		tmp_voltage_chip = float(tmp[index+9:index+13])/1000
		voltage_chip.append(tmp_voltage_chip)
		WaitForReady(fpga)

		tmp_voltage_supply = 33 * tmp_current/1000 + tmp_voltage_chip
		voltage_supply_out.append(tmp_voltage_supply)

		print 'voltage in V: ' + str(float(u_dac)/1000) + '	current in mA: ' + str('{0:f}'.format(tmp_current)) 

	print 'Backwards:'

	#setting adc in korrekt state for readout-loop
	fpga.write( reg.ADC(1, 3) )
	WaitForReady(fpga)

	for u_dac in range(2500, 0, -steps):

		voltage_dac_b.append(float(u_dac)/1000)
		command = reg.DAC(4, 'a', u_dac)
		fpga.write(command)

		WaitForReady(fpga)
		sleep(0.05)


		fpga.write(reg.ADC(1,1))
		tmp = fpga.readline() #reads output of ADC(1,3)
		index = tmp.rfind('Spannung ')
		tmp_current = float(tmp[index+9:index+13])/1000 * 10
		current_b.append(tmp_current)
		WaitForReady(fpga)

		fpga.write(reg.ADC(1,3))
		tmp = fpga.readline() #reads output of ADC(1,1)
		index = tmp.rfind('Spannung ')
		tmp_voltage_chip = float(tmp[index+9:index+13])/1000
		voltage_chip_b.append(tmp_voltage_chip)
		WaitForReady(fpga)

		tmp_voltage_supply = 33 * tmp_current/1000 + tmp_voltage_chip
		voltage_supply_out_b.append(tmp_voltage_supply)

		print 'voltage in V: ' + str(float(u_dac)/1000) + '	current in mA: ' + str('{0:f}'.format(tmp_current)) 



	
	fig, ax1= plt.subplots()
	ax1.plot(voltage_dac,voltage_chip,"rx",label="Chip")
	ax1.plot(voltage_dac,voltage_supply_out,"gx",label="Supply")
	ax1.set_xlabel('DAC Voltage')
	ax1.set_ylabel('Supply Voltage, Chip Voltage in V',color="r")
	ax1.tick_params('y',colors='r')

	ax2=ax1.twinx()
	ax2.plot(voltage_dac, current,"bx",label="Current")
	ax2.set_ylabel('Supply current in mA', color='b')
	ax2.tick_params('y',colors='b')

	lines , labels = ax1.get_legend_handles_labels()
	lines2, labels2 = ax2.get_legend_handles_labels()
	ax1.legend(lines + lines2, labels + labels2, loc='best')

	plt.grid()
	plt.savefig('Plots/Supply_Kennlinie.png',dpi=400)
	plt.show()
	plt.clf()

	plt.xlabel('Chip current in mA')
	plt.ylabel('Chip Voltage in V')
	plt.plot(current, voltage_chip,'rx', label='U(I) at Chip')
	plt.plot(current_b, voltage_chip_b, 'bx', label='U(I) backwards at Chip')
	plt.legend(loc='best')
	plt.grid()
	plt.savefig('Plots/U(I)_at_Chip.png',dpi=400)
	plt.show()


	#print 'Voltage in V 	current in mA'
	#print ''
	#for i in range(len(voltage)):
		#print str(voltage[i]) + '	' + str(current[i])

	command = reg.DAC(4, 'a', 0)
	fpga.write(command)
	WaitForReady(fpga)

#Read single ADC
def SingleADC(adc, channel, fpga):
	fpga.write(reg.ADC(adc, channel))
	WaitForReady(fpga)
	fpga.write(reg.ADC(adc, channel)) #ADC answers in next request with data. therefore second request neccessary
	tmp = fpga.readline()
	index = tmp.rfind('Spannung ')
	Value = float(tmp[index+9:index+13])/1000 ##Abfrage hier muss an die Ausgabe des FPGA angepasst werden!
	WaitForReady(fpga)
	return Value

#Read single register. Returns HexValue of read register.
def SingleRegister(register,addr,fpga):
	global COM_ERROR
	COM_ERROR = 0
	fpga.write(reg.SCB('r',addr))
	fpga.readline() #discard first two read lines of output.
	fpga.readline()
	tmp = []
	for x in range(13):
		tmp.append(fpga.readline())
		text = tmp[-1]
		text = text.replace('\n' , '')
		text = text.replace('\r' , '')
		if text == 'Ready':
			COM_ERROR = 1
			break 
		#print("line "+str(x)+": "+tmp[x])
	if COM_ERROR == 0:
		WaitForReady(fpga)
		return tmp[register][3:5]
	else:
		return '00'

def AllRegister(addr,fpga):
	global COM_ERROR
	COM_ERROR = 0
	fpga.write(reg.SCB('r',addr))
	fpga.readline()
	fpga.readline()
	tmp = []
	for x in range(13):
		tmp.append(fpga.readline()[3:5])
		text = tmp[-1]
		text = text.replace('\n','')
		text = text.replace('\r','')
		if text == 'dy': #'Ready'[3:5]='dy'
			COM_ERROR = 1
			break 
	if COM_ERROR == 0:
		WaitForReady(fpga)
		return tmp
	else:
		return ['00','00','00','00','00','00','00','00','00','00','00','00','00']

def SingleChipADC(adc,addr,fpga, with_binary=False):
	#zuerst auf kanal0, dann den gewünschten kanal 			IST DAS NOCH NOETIG IM V4 ?
	fpga.write(reg.SCB('w',addr,'7','00'))
	WaitForReady(fpga)
	fpga.write(reg.SCB('w',addr,'7','0'+str(adc)))
	WaitForReady(fpga)
	if with_binary == False:
		Value = float(int(SingleRegister(8,addr,fpga),16))*pow(2,2)/(pow(2,10)-1) \
				+float(int(SingleRegister(9,addr,fpga),16))*pow(2,0)/(pow(2,10)-1) #Norm value to 1V
		return float(format(Value, '.3f'))
	elif with_binary == True:
		tmp_value = float(int(SingleRegister(8,addr,fpga),16))*pow(2,2)/(pow(2,10)-1) \
				+float(int(SingleRegister(9,addr,fpga),16))*pow(2,0)/(pow(2,10)-1) #Norm value to 1V
		tmp_binary = bin(int('0x'+SingleRegister(8,addr,fpga),16))[2:] + bin(int('0x'+SingleRegister(9,addr,fpga),16))[2:]

		value = [float(format(tmp_value,'.3f')),tmp_binary.zfill(10)]
		return value



#TODO:
#	-remarks...(ongoing)
#	-catch possible errors...(ongoing)
#	-create data dump if the program crashes. done?
#		=> data gets saved rougly every 15s.
#		=> exception if python error.
#	- /data gets created as root since script is started as root.
#		- script has to be started as root to be able to use pyserial / to be able to access /dev/ttyUSBx.
#	-adc has to be normed to VRef.
#	-ask niklaus how to notice a bitflip best.

COM_ERROR = 0

def RadiationTest(fpga):

	#Start 'timer' to get the radiation dosis as a function of time
	#or to get the measured values as a function of the dosis.
	Time = '0:00:00'
	StartTime = time()
	TimeStamp1h = StartTime #Used for switching the bypass every hour

	#Set variables to control and track bypass.
	BYP_STATE = 1
	Switch_Bypass = 1
	#Track if the voltage for the ADC test is rising or falling. 1 ~ rising.
	ADC_direction = -1

	global COM_ERROR
	COM_ERROR = 0

	#Initial lists/variables for tracking and saving values.
	U_Chip = 0
	GND_Sup = 0
	I_Sup = 0
	I_Sup_Max = 0
	U_Bypass = 0
	GND_Bypass = 0
	I_Bypass = 0
	GND_BypCard = 0

	ThTemp = 0
	ThMod = 0
	U_Global = 0
	U_DDD = 0
	U_Ref = 0
	U_BG = 0
	U_DDA = 0
	Rsv1 = 0

	U_DDD_Reg = 0
	U_DDA_Reg = 0
	U_DDD_RadCard = 0
	U_DDA_RadCard = 0
	I_Ref = 0
	I_DDA = 0
	I_DDD = 0
	Rsv2 = 0

	U_Supply_dac = 0
	U_Bypass_dac = 0

	ADC0_dac = 0
	U_Mod_dac = 0

	U_Temp_dac = 0
	I_Byp_max_dac = 0

	U_Ref_dac = 0
	U_DDA_DDD_dac = 0


	#Setting DACs to the right Values 			#HIER MUSS ICH AENDERN !!!!!!!!!! neue reg.DAC Funktion sowie andere DAC Belegung eventuell
	fpga.write(reg.DAC(4,'1',1200))
	WaitForReady(fpga)
	U_Supply_dac = float(1750)/1000

	fpga.write(reg.DAC(7,'2',1500))
	WaitForReady(fpga)
	U_DDA_DDD_dac = float(1500)/1000

	fpga.write(reg.DAC(7,'1',1000))
	WaitForReady(fpga)
	U_Ref_dac = float(1000)/1000

	#Set U_Temp to 0.5V to watch if the adc has a drift.
	fpga.write(reg.DAC(6,'1',500))
	WaitForReady(fpga)
	U_Temp_dac = float(500)/1000

	#Wait for chip to adjust to new voltages and settings
	sleep(5)

	#Get Chip_addr
	fpga.write(reg.SCB('l'))
	fpga.readline()
	tmp = fpga.readline()
	WaitForReady(fpga)
	Chip_addr = tmp[5:6]
	#Check if a chip is found
	try:
		if not (0 <= int(Chip_addr,16) <= 15):
			print("No Chip found: "+tmp)
			print("Going back to menu. Care: DACs are set to supply the chip.")
			return None
	except ValueError:
		print("No Chip found: "+tmp)
		print("Going back to menu. Care: DACs are set to supply the chip.")
		return None


	#Get bypass on chip into correct state.
	fpga.write(reg.SCB('w',Chip_addr,'6','06'))
	WaitForReady(fpga)

	#Create time-based dirname to not overwrite Data
	directory = '/data/'+str(datetime.datetime.now())

	#Create '/data' directory where the executing script is lying for saving the data.
	if not os.path.exists(os.path.abspath('')+directory):
		os.makedirs(os.path.abspath('')+directory)

	#create one file each for ADC,Bypass,Vsup etc.,Register

	#Supply Voltages file
	file = open(os.path.abspath('')+directory+'/Supply.txt','w')
	file.write('Supply current and external supplied voltages for the deactivated regulator.\n')
	file.write('\n')
	file.write('Time,V_Sup,I_Sup,V_DDD,I_DDD,V_DDA,I_DDA,V_Ref,I_Ref,V_BG,,Remarks\n')
	file.close()

	#ADC file.
	file = open(os.path.abspath('')+directory+'/ADC.txt','w')
	file.write('Values of the chip ADC and their externally set values if they can be set.\n')
	file.write('Time in h:m:s format. Voltages in Volt.\n')
	file.write('\n')
	file.write('Time,ADC0_dac,ADC0_chip,BG,ThMod,Vmod_dac,Vmod_chip,ThTemp' \
		+',Vtemp_dac,Vtemp_chip,Vglobal,VddaHalf,,Remarks,COM_ERROR\n')
	file.close()

	#ADC file for raw and unconverted values.
	file = open(os.path.abspath('')+directory+'/ADC_raw.txt','w')
	file.write('Raw and unconverted ADC values of the Chip aswell as the external set values.\n')
	file.write('\n')
	file.write('Time,ADC0,BG,ThMod,Vmod,ThTemp,Vtemp,Vglobal,VDDAhalf,,ADC0_ext,Vmod_ext,Vtemp_ext,,Remarks,COM_ERROR\n')
	file.close()

	#Register file
	file = open(os.path.abspath('')+directory+'/Register.txt','w')
	file.write('Read register of the chip.\n')
	file.write('\n')
	file.write('Time,0,1,2,3,4,5,6,7,8,9,A,B,C,,COM_ERROR\n')
	file.close()

	#Bypass file.
	file = open(os.path.abspath('')+directory+'/Bypass.txt','w')
	file.write('Values of the Bypass and the Bypass register.\n')
	file.write('Time in h:m:s format. Voltages in Volt. Currents in Ampere.\n')
	file.write('Maximum current is 4A with the resistor being 0.05 Ohm.\n')
	file.write('\n')
	file.write('Time,U_Bypass_dac,I_Bypass,I_Bypass_Max_dac,U_Bypass,Bypass register value,Bypass resistance,,Remarks,COM_ERROR\n')
	file.close()


	while(1):

		#Variable to write in Document. Tracks if in a testcycle something 
		#worth noting happened
		SupplyRemarks = ''
		ADCRemarks = ''
		BypassRemarks = ''
		RegisterRemarks = ''

		#Get current Values
		U_Chip = SingleADC(1,1,fpga) #V 				#SIND DAS IMMER NOCH DIE GLEICHEN NAMEN?!
		GND_Sup = SingleADC(1,2,fpga) #V
		I_Sup = SingleADC(1,3,fpga)*10 #mA
		I_Sup_Max = SingleADC(1,4,fpga)*10 #mA
		U_Bypass = SingleADC(1,5,fpga) #V
		GND_Bypass = SingleADC(1,6,fpga) #V
		I_Bypass = SingleADC(1,7,fpga)/12.4/0.05 #A
		GND_BypCard = SingleADC(1,8,fpga) #V


		ThTemp = SingleChipADC(4,Chip_addr,fpga) #V 	# CHIP ADC KANAELE SIND JETZT ANDERS BELEGT 
		ThMod = SingleChipADC(2,Chip_addr,fpga) #V 		# ==> UMBENNEN !!!
		U_Global = SingleADC(2,3,fpga) #V
		U_DDD = SingleADC(2,4,fpga) #V
		U_Ref = SingleADC(2,5,fpga) #V
		U_BG = SingleADC(2,6,fpga) #V
		U_DDA = SingleADC(2,7,fpga) #V
		Rsv1 = SingleADC(2,8,fpga) #V


		U_DDA_Reg = SingleADC(3,1,fpga) #V
		U_DDD_Reg = SingleADC(3,2,fpga) #V
		U_DDA_RadCard = SingleADC(3,3,fpga) #V
		U_DDD_RadCard = SingleADC(3,4,fpga) #V
		I_Ref = SingleADC(3,5,fpga)*10 #mA
		I_DDA = SingleADC(3,6,fpga)*10 #mA
		I_DDD = SingleADC(3,7,fpga)*10 #mA
		Rsv2 = SingleADC(3,8,fpga) #V

		#Chip readout.
		Register = AllRegister(Chip_addr,fpga)


		#Get current values of the chip adc
		Chip_ADC = []
		Chip_ADC_raw = []
		for adc in range(8):
			value = SingleChipADC(adc,Chip_addr,fpga,True)
			Chip_ADC_raw.append(value[1])
			if adc == 0:
				Chip_ADC.append(value[0]/0.43)
			elif adc == 2:
				Chip_ADC.append(value[0]/0.2625)
			elif adc == 3:
				Chip_ADC.append(value[0]/0.2625)
			else :
				Chip_ADC.append(value[0])
		for x in range(8):
			Chip_ADC[x] = float(format(Chip_ADC[x], '.3f'))




		#Check stuff and make remarks if neccesary

		#Supply remarks.
		if (I_Sup > 3):
			SupplyRemarks = '|'.join((SupplyRemarks,'I_Sup'))	#WAS MACHT JOIN?
		if (I_DDD > 2):
			SupplyRemarks = '|'.join((SupplyRemarks,'I_DDD'))
		if (I_DDA > 2):
			SupplyRemarks = '|'.join((SupplyRemarks,'I_DDA'))
		if (I_Ref > 1.5):
			SupplyRemarks = '|'.join((SupplyRemarks,'I_Ref'))
		if not ( 1.3 <= U_Chip <= 1.6):
			SupplyRemarks = '|'.join((SupplyRemarks,'U_Chip'))
		if not ( 1.1 <= U_DDD <= 1.3):
			SupplyRemarks = '|'.join((SupplyRemarks,'U_DDD'))
		if not ( 1.3 <= U_DDA <= 1.6):
			SupplyRemarks = '|'.join((SupplyRemarks,'U_DDA'))
		if not ( 0.9 <= U_Ref <= 1.1):
			SupplyRemarks = '|'.join((SupplyRemarks,'U_Ref'))

		#ADC remarks. Useless if chip is broken.
		if abs(ADC0_dac - Chip_ADC[0]) >= 0.15:
			ADCRemarks = '|'.join((ADCRemarks,'ADC0'))
		if abs(Chip_ADC[2] - 0.56/0.2625) >= 0.15:
			ADCRemarks = '|'.join((ADCRemarks,'ThMod|'))
		if abs(U_Mod_dac - Chip_ADC[3]) >= 0.15:
			ADCRemarks = '|'.join((ADCRemarks,'U_Mod|'))
		if abs(Chip_ADC[4] - 0.77) >= 0.15:
			ADCRemarks = '|'.join((ADCRemarks,'ThTemp|'))
		if abs(U_Temp_dac - Chip_ADC[5]) >= 0.15:
			ADCRemarks = '|'.join((ADCRemarks,'U_Temp|'))

		#Bypass remarks.
		if BYP_STATE == 1:
			if not ( 2.6 <= I_Bypass < 3):
				BypassRemarks = '|'.join((BypassRemarks,'I_Byp'))
			if not ( 0 <= U_Bypass < 0.3):
				BypassRemarks = '|'.join((BypassRemarks,'U_Byp'))
		elif BYP_STATE == 0:
			if not ( 0 <= I_Bypass < 0.04):
				BypassRemarks = '|'.join((BypassRemarks,'I_Byp'))
			if not ( 1.1 <= U_Bypass < 1.35):
				BypassRemarks = '|'.join((BypassRemarks,'U_Byp'))


		if COM_ERROR == 0:
			_COM_ERROR = ''
		else:
			_COM_ERROR = 'x'

		#Save data for Supply file
		#file.write('Time,V_Sup,I_Sup,V_DDD,I_DDD,V_DDA,I_DDA,V_Ref,I_Ref,V_BG,,Remarks\n')
		file = open(os.path.abspath('')+directory+'/Supply.txt','a')
		file.write(Time+','+format(U_Chip,'.03f')+','+format(I_Sup,'.03f')+','+format(U_DDD,'.03f')+','+format(I_DDD,'.03f')+',' \
			+format(U_DDA,'.03f')+','+format(I_DDA,'.03f')+','+format(U_Ref,'.03f')+','+format(I_Ref,'.03f')+','+format(U_BG,'.03f')+',,'+SupplyRemarks+'\n')
		file.close()
		#MEHR ALS 3 NACHKOMMASTELLEN GERNE?!

		#Save data for ADC file.
		#file.write('Time,ADC0_dac,ADC0_chip,BG,ThMod,Vmod_dac,Vmod_chip,ThTemp' \
		#		+',Vtemp_dac,Vtemp_chip,Vglobal,VddaHalf,,Remarks,COM_ERROR\n')
		file = open(os.path.abspath('')+directory+'/ADC.txt','a')
		file.write(Time+','+str(ADC0_dac)+','+str(Chip_ADC[0])+','+str(Chip_ADC[1]) \
			+','+str(Chip_ADC[2])+','+str(U_Mod_dac)+','+str(Chip_ADC[3])+',' \
			+str(Chip_ADC[4])+','+str(U_Temp_dac)+','+str(Chip_ADC[5])+',' \
			+str(Chip_ADC[6])+','+str(Chip_ADC[7])+',,'+ADCRemarks+','+_COM_ERROR+'\n')
		file.close()

		#Save data for ADC_raw file.
		#file.write('Time,ADC0,BG,ThMod,Vmod,ThTemp,Vtemp,Vglobal,VDDAhalf,,ADC0_ext,Vmod_ext,Vtemp_ext,,Remarks,COM_ERROR\n')
		file = open(os.path.abspath('')+directory+'/ADC_raw.txt','a')
		file.write(Time+','+str(Chip_ADC_raw[0])+','+str(Chip_ADC_raw[1])+','+str(Chip_ADC_raw[2])+',' \
			+str(Chip_ADC_raw[3])+','+str(Chip_ADC_raw[4])+','+str(Chip_ADC_raw[5])+',' \
			+str(Chip_ADC_raw[6])+','+str(Chip_ADC_raw[7])+',,'+str(ADC0_dac)+','+str(U_Mod_dac)+','+str(U_Temp_dac) \
			+',,'+ADCRemarks+','+_COM_ERROR+'\n')
		file.close()

		#Save data for register file
		#file.write('Time,0,1,2,3,4,5,6,7,8,9,A,B,C,,COM_ERROR\n')
		file = open(os.path.abspath('')+directory+'/Register.txt','a')
		file.write(Time+','+Register[0]+','+Register[1]+','+Register[2]+','+Register[3]+','+Register[4]+','+Register[5]+',' \
			+Register[6]+','+Register[7]+','+Register[8]+','+Register[9]+','+Register[10]+','+Register[11]+',' \
			+Register[12]+','+_COM_ERROR+'\n')
		file.close()

		#Calculate R_Bypass beforehand to catch exception if by any chance I_Bypass = 0.
		try:
			R_Bypass = format(U_Bypass/I_Bypass,'.03f')	
		except ZeroDivisionError:
			R_Bypass = 'DivErr'
			
		#Save data for Bypass file.
		#file.write('Time,U_Bypass_dac,I_Bypass,I_Bypass_Max_dac,U_Bypass,Bypass register value,Bypass resistance,,Remarks,COM_ERROR\n')
		file = open(os.path.abspath('')+directory+'/Bypass.txt','a')
		file.write(Time+','+format(U_Bypass_dac,'.03f')+','+format(I_Bypass,'.03f')+','+format(I_Byp_max_dac,'.03f')+','+format(U_Bypass,'.03f')+',' \
			+Register[6]+','+R_Bypass+',,'+BypassRemarks+','+_COM_ERROR+'\n')
		file.close()

		#Print stuff to see the general state of the chip while measuring.
		print("")
		print("Momentary chip state. Runtime(h:m:s): "+Time)
		print("U_Chip: "+format(U_Chip,'.03f')+" V   U_DDD: "+format(U_DDD,'.03f')+" V   U_DDA: "+format(U_DDA,'.03f')+" V   U_Ref: "+format(U_Ref,'.03f')+" V")
		print("I_Sup:  "+format(I_Sup,'.03f')+" mA  I_DDD: "+format(I_DDD,'.03f')+" mA  I_DDA: "+format(I_DDA,'.03f')+" mA  I_Ref: "+format(I_Ref,'.03f')+" mA")
		print("Bypass: State: "+str(BYP_STATE)+"  Register: "+Register[6]+"     U_Byp: "+format(U_Bypass,'.03f')+" V   I_Byp: "+format(I_Bypass,'.03f')+" A")
		print("")



		#Check if Voltage direction has to be reversed for ADC test
		if U_Mod_dac > 1.5:
			ADC_direction = ADC_direction * (-1)
		elif U_Mod_dac <= 0:
			ADC_direction = ADC_direction * (-1)

		#Write new U_Mod value.
		fpga.write(reg.DAC(5,'2',(U_Mod_dac+0.01*ADC_direction)*1000))	# DAC AENDERN
		U_Mod_dac = float(format(U_Mod_dac+0.01*ADC_direction,'.03f'))
		WaitForReady(fpga)

		#Set random Value for ADC0
		random_value = int(random()*1.5*1000)
		fpga.write(reg.DAC(5,'1',random_value))							#DAC AENDERN
		ADC0_dac = float(random_value)/1000
		WaitForReady(fpga)

		#Write down time since the beginning of the measurement.
		tmp_time = time()
		Time = str(datetime.timedelta(seconds=int(abs(tmp_time - StartTime))))

		#Deactiveted since switching the bypass breaks the chip
		#Take a TimeStamp every hour to switch bypass.
		#if abs(tmp_time - TimeStamp1h) >= 300:
		#	TimeStamp1h = time()
		#	Switch_Bypass = 1

		#Reset Bypass if Register 6 != 00, when the Bypass is deactivated
		if BYP_STATE == 0:
			if (SingleRegister(6,Chip_addr,fpga) != '00'):
				fpga.write(reg.SCB('w',Chip_addr,'6','06'))

		#Switch Bypass on/off after 1 hour.		#WO STECkT HIER DIE 1h DRIN!?!
		if BYP_STATE == 0:
			if (Switch_Bypass):
				BYP_STATE = 1
				Switch_Bypass = 0

				fpga.write(reg.SCB('w',Chip_addr, '6','07')) #Reset Bypass and activate it
				WaitForReady(fpga)

				fpga.write(reg.DAC(6,'2',1860)) #Unset restriction for I_Bypass: 1860mV ~ 3A		#DAC AENDERN
				WaitForReady(fpga)
				I_Byp_max_dac = float(1860)/1000/12.4/0.05

				U_Bypass_dac = 0
				tmp = 0
				while (tmp <= 2.9):
					U_Bypass_dac = U_Bypass_dac + 10
					fpga.write(reg.DAC(4,'2',U_Bypass_dac))		#DAC AENDERN
					WaitForReady(fpga)
					tmp = SingleADC(1,7,fpga)/12.4/0.05
				U_Bypass_dac = float(U_Bypass_dac)/1000


		elif BYP_STATE == 1:
			if (Switch_Bypass):
				BYP_STATE = 0
				Switch_Bypass = 0


				fpga.write(reg.DAC(4,'2',0)) #Set Bypasstransistor Voltage to 0
				WaitForReady(fpga)
				fpga.write(reg.DAC(6,'2',31)) #Set restriction to I_Bypass ~ 0.05A
				I_Byp_max_dac = float(31)/1000/12.4/0.05
				WaitForReady(fpga)
				fpga.write(reg.SCB('w',Chip_addr,'6','06')) #Reset and deactivate Bypass on Chip
				WaitForReady(fpga)
				U_Bypass_dac = 0
				tmp = 0
				while (tmp < 1.2): #Set Bypass voltage to ~1.4V
					U_Bypass_dac = U_Bypass_dac + 10
					fpga.write(reg.DAC(4,'2',U_Bypass_dac))
					WaitForReady(fpga)
					tmp = SingleADC(1,5,fpga)
				U_Bypass_dac = float(U_Bypass_dac)/1000

		#Let the Chip adjust to the changes done
		sleep(0.5)

		#end-of-while