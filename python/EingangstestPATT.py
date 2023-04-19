# -*- coding: utf-8 -*-
# coding: utf8 #y
"""
Created on Wed Aug 02 15:21:40 2017

@author: mrjay
"""
from datetime import datetime
import os
from time import sleep
import time

import matplotlib.pyplot as plt
import numpy as np
import serial as ser

import registers as reg
from testsV3 import WaitForReady
#from FPGAV4 import get_ports		#jk: stattdessen einfach die Funktion hier definiert, sodass man FPGA2 nicht mehr braucht
from serial.tools import list_ports
import sys
from port import get_controller_port
from messages import *

#hole alle momentanen usb-ports
def get_ports():
    
    ports = []
    ports= list_ports.comports()
    if sys.platform.startswith('win'):
        for port in ports:
           if 'USB' in port[1]:
                ports.append(port[0])
        ports= [port for port in ports if 'COM' in port]
    
    else:
        ports = [x[0] for x in ports if (x[0].find('USB') != -(1) )]

    print("Ports: ")  
    print ports
    if len(ports)==1:
        return ports[0]
    else:
        eingabe = raw_input("Welchen Port? ")
        for x in ports:
            if x.find(eingabe) != -1:
                port = x
        return port

# ein Menu sodass man eine Kompenente des Chips auch einzeln testen kann
def Menu():
	print ''
	print '## MENU: Choose one on the following'
	print '##'
	print '## 1: Full Chip Test.'
	print '## 2: Regulator Test.'
	print '## 3: Check SCB communication.'
	print '## 4: Logic Test.'
	print '## 5: ADC Test.'
	print '## 6: Comparator Test.'
	print '## 7: Shift Registers Test'
	#print '## 7: Bypass Test.'

	selection = raw_input('## Input: ')
	if int(selection)>0 or int(selection)<8:
		return selection
	else:
		print "No valid menu number!\n\n"

	print''

def save_grades(Chipnumber,new_grade,failed_area):   
	dt=np.dtype('i,i,i,i,U30')
	fmt=('%d,%d,%d,%d,%s')
	save_grades_header='Grading of PATT usability\nGrade A\tGrade B\tGrade C\tFail\tFailed area\n'
		
	if new_grade=='f':
		new_grade=np.array([(0,0,0,int(Chipnumber),failed_area)],dtype=dt)
	elif new_grade=='a':
		new_grade=np.array([(int(Chipnumber),0,0,0,0)],dtype=dt)
	elif new_grade=='b':
		new_grade=np.array([(0,int(Chipnumber),0,0,failed_area)],dtype=dt)
	elif new_grade=='c':
		new_grade=np.array([(0,0,int(Chipnumber),0,failed_area)],dtype=dt)
	else: 
		print 'no such grade available'
		return

	if not os.path.isfile('./data/GradeTables/Grade_table.txt'):
		empty_row=np.empty(1,dtype=dt) #needed because np.loadtxt decreases the number of dimension by one. one input line causes an zero dimension array
		#y: empty_row mit bekannten Sachen füllen da sonst Probleme!
		for x in empty_row:
			x[-1]=u''
			for y in range(4):
				x[y]=0
		first_rows=np.concatenate((empty_row,new_grade))
		np.savetxt('./data/GradeTables/Grade_table.txt',first_rows,fmt=fmt,delimiter=',',header=save_grades_header)	

	else:
		grades=np.loadtxt('./data/GradeTables/Grade_table.txt',skiprows=2,dtype=dt,delimiter=',')
		grades=np.concatenate((grades,new_grade),axis=0)
		np.savetxt('./data/GradeTables/Grade_table.txt',grades,fmt=fmt,header=save_grades_header, delimiter=',')   

def save_grade_actual_test(grade,file_name):   
		
	if grade=='a':
		footer='Grade A'        
	elif grade=='b':
		footer='Grade B'        
	elif grade=='c':
		footer='Grade C'
	elif grade=='ok':
		footer='Test result: Working'
	elif grade=='f':
		footer='Failed'
	else: 
		print 'no such grade available'
		return

	with open(file_name,'a') as f:
		f.write(footer+'\n')

def save_reg_norm(reg_norm,values,Chipnumber):
	norm_to_append=np.append([int(Chipnumber)],values)
	reg_norm=np.append(reg_norm,[norm_to_append],axis=0)
	np.savetxt('10mA_regulator_norm_values.txt',reg_norm,fmt='%i\t%1.3f\t%1.3f\t%1.3f\t%1.3f\t%1.3f',header='Regulator norm values\nChip\tIsup\tVref\tVddd\tVdda\tVsup',delimiter='\t')

def save_reg_norm_alt(values,Chipnumber):
	#reg_norm=np.empty((6,1))
	reg_norm=np.append([int(Chipnumber)],values)
	#for i in np.arange(6):
	#	reg_norm[i] = norm_to_append[i]
	#print reg_norm
	if not os.path.exists('./10mA_regulator_norm_values.txt'):
		file = open('10mA_regulator_norm_values.txt', 'a')
		file.write('# Regulator norm values\n# Chip\tIsup\tVref\tVddd\tVdda\tVsup\n')
	else:
		file = open('10mA_regulator_norm_values.txt', 'a')
	file.write('{:d}\t'.format(int(reg_norm[0])))
	for i in reg_norm[1:]:
		file.write('{:1.3f}\t'.format(i))
	file.write('\n')
	file.close()

def get_chip_adress(fpga):#call check_scb_communication function before executing
	fpga.write(reg.SCB('l'))
	WaitForReady(fpga)
	fpga.write(reg.SCB('l'))
	adress_line=fpga.readline()
	adress=adress_line[5]
	if adress=='i':
		error('SCB Connection failed. Please check if:\n Power supply is on\n Adjustment is right\n')
	WaitForReady(fpga)
	return adress

def check_scb_communication(fpga,chip_adress):    
	Usup=read_adc(slave=1,channel=1,fpga=fpga)   
	if Usup<1.8:
		warning('Usup was below 1.8V! Check power supply! DAC Usup is set to 2V.')
		fpga.write(reg.DAC(1,2000)) #y
		WaitForReady(fpga)   
	#fpga.write(reg.SCB('r',chip_adress))
	#WaitForReady(fpga,1) ask Johanna
	fpga.write(reg.SCB('r',chip_adress))
	line=fpga.readline() 
	#print 'line: '+line[0:24] #y
	if line[0:24]=='r  '+'00'+' #written 1 #read F': #yj: 00 statt chip_adress
		WaitForReady(fpga)
		return 'Stable'     
	else: 
		WaitForReady(fpga)
		skip=raw_input('SCB communication not stable. Please make sure set up is still in working order. \n Try again with any input.\n If you want to skip this Chip type y\n')
		if skip=='y':
			return 'skip_chip'
		return 'Try again'

def read_gpio_in(fpga,port):   #int:port aus [0:5][DOUT,POR,COMPTEMP0,COMPMOD, BypassCtrl, COMPTEMP1]
	fpga.write(reg.GPIO('i'))   
	tmp=fpga.readline()
	index = tmp.rfind('Value')
	value = (int(tmp[index+6:index+8],16) & pow(2,port)) / pow(2,port)                
	gpio_in = int(value)
	WaitForReady(fpga)
	
	return gpio_in

def read_adc(slave,channel,fpga):#returns Voltage in V    
	fpga.write(reg.ADC(Slave=slave,Channel=channel))
	WaitForReady(fpga)
	fpga.write(reg.ADC(Slave=slave,Channel=channel))
	tmp = fpga.readline()
	#print tmp
	index = tmp.rfind('Voltage ')    
	Spannung=float(tmp[index+8:index+12])/1000
	WaitForReady(fpga)
	return Spannung

def read_reg_adc(fpga,channel): #returns Voltage in V, with 0.43 voltage divider for Ch0 and Ch3 #y: Now also returns Hex and Binary value in the form of 'FF FF,0b1111100000'.
	#check_scb_communication(fpga,chip_adress)
	#fpga.write(reg.SCB('r',addr=chip_adress))  s A chip_adress channel
	fpga.write('s A %1x %1x\n' % (int(chip_adress),int(channel)))
	line=fpga.readline()
	WaitForReady(fpga)
	if line != "A SCB communication error\r\n":
		#val = int(line[6:9],16)
		hex_val = line[6:9]
		volt = float(int(line[6:9],16))/1024  #*vref = 1.0V 
		return volt,hex_val
	else:
		error(line)

def read_reg(fpga,reg_to_read,chip_adress='0'):   #not recommended for reading adc 
	#fpga.write('s A %1x %1x\n' % (int(chip_adress),int(reg_to_read)))
	#line=fpga.readline()
	#WaitForReady(fpga)
	#ret_array=np.zeros(8)
	#if line != "A SCB communication error\r\n":
	#	for Bit in range(8):
	#		ret_array[Bit]=int(line[Bit+6],16) 
	#else:
	#	error(line)
	#scb_check=check_scb_communication(fpga,chip_adress)
	fpga.write(reg.SCB('r',addr=chip_adress))
	line=fpga.readline()
	if line[0:24]!='r  '+'00'+' #written 1 #read F':
		error('SCB communication not stable')
	#fpga.readline() hier denke ich falsch...
	ret_array=np.zeros(8)
	for register in range(13):
		if register==reg_to_read:
			line=fpga.readline()
			for Bit in range(8):
				ret_array[Bit]=int(line[Bit+6])         
		else:
			fpga.readline()
	WaitForReady(fpga)
	return ret_array.astype(int)	# JK: im Register stehen nur int (1/0), ohne astype(int) würden da floats stehen, das ist hässlich
	
def regulator_test(fpga,Chipnumber,chip_adress,start_of_test,Chipfolder):  #MG: angepasst
	
	#Initiata test variables & files
	norm_checked=0
	fail_flag=0
	stopped=0
	regulator_grade='ok'
	Chip_failed='Chip regulator failed.'
	regulator=np.zeros((150,8))
	
	reg_file_name=Chipfolder+'regulator'+Chipnumber+'_'+start_of_test+'.txt'
	reg_file_header='Regulator test \nIsup\tVref\tVddd\tVdda\tVsup\tVint\tPOR\tStatus\n'
	

	
	#Start regulator test  
	status('Start regulator test')

	fpga.write(reg.DAC(1,0))
	WaitForReady(fpga)

	fpga.write(reg.ADC(Slave=1, Channel=3))
	WaitForReady(fpga)
	print 'UDAC\tIsup\tVref\tVddd\tVdda\tVsup\tVint\tPOR\tStatus'
	for n in range(0,150):
		if n <75:
			DAC_USUPPLY=n*28
		else:
			DAC_USUPPLY=(150-n)*28
		fpga.write(reg.DAC(1, DAC_USUPPLY))
		WaitForReady(fpga)
		
		#Read Isup      
		regulator[n,0]=read_adc(1,3,fpga)*10 #output in mA
		
		#Read Vref
		regulator[n,1]=read_adc(2,5,fpga)
		
		#Read Vddda 
		regulator[n,2]=read_adc(2,4,fpga)
		
		#Read Vddd       
		regulator[n,3]=read_adc(2,7,fpga)

		#Read Vsup       
		regulator[n,4]=read_adc(1,1,fpga)  

		#Read Vint
		regulator[n,5]=read_adc(2,8,fpga)

		# Read POR
		regulator[n,6] = read_gpio_in(fpga,port=1) #JK: port 1 war vorher Bypass State ist jetzt bei v4 POR
		#JK: check if POR is working riǵht
		
		#Check if values in permited range
		if regulator[n,0]>10:
			if not 0.9<regulator[n,1]<1.3:
				print 'Vref out of bounds'#,regulator[n,1]
				regulator[n,7]=1
				fail_flag=1
			if not 1<regulator[n,3]<1.6:
				print 'Vddd out of bounds'
				regulator[n,7]=1
				fail_flag=1
			if not 1.8<regulator[n,4]<2.5:
				print 'Vsup out of bounds'
				regulator[n,7]=1
				fail_flag=1

		np.savetxt(reg_file_name,regulator,fmt='%1.3f',header=reg_file_header,delimiter='\t')    
		print DAC_USUPPLY,"\t","{:.3f}".format(regulator[n][0]),"\t",regulator[n][1],"\t",regulator[n][2],"\t",regulator[n][3],"\t",regulator[n][4],"\t",regulator[n][5],"\t",int(regulator[n][6]),"\t",int(regulator[n][7])
		if norm_checked==0:
			if regulator[n,0]>7.5:
				norm_checked=1
				save_reg_norm_alt(regulator[n,:5],Chipnumber)
				
		if regulator[n,0]>20:
			error("Regulator test stopped. Supply current over 20mA")
			stopped=1
			fail_flag=1
			break
	
	if (regulator[74,0]<7.5) & (stopped==0):
		fail("Regulator failed. Supply current not over 7.5mA. Only at {:.3f}".format(regulator[74,0]))
		fail_flag=1		

	plt.plot(regulator[:,0],regulator[:,1],'r.',label='$V_{ref}$', linestyle='-')
	plt.plot(regulator[:,0],regulator[:,2],'g.',label='$V_{ddd}$', linestyle='-')
	plt.plot(regulator[:,0],regulator[:,3],'k.',label='$V_{dda}$', linestyle='-')        
	plt.plot(regulator[:,0],regulator[:,4],'b.',label='$V_{sup}$', linestyle='-')
	plt.plot(regulator[:,0],regulator[:,5],'y.',label='$V_{int}$', linestyle='-')
	#plt.plot(regulator[:,0],regulator[:,6],'c.',label='POR (0/1)', linestyle='-')
	plt.grid()
	plt.xlabel('$I_{sup}$ in mA')
	plt.ylabel('Voltage in V')
	plt.legend(loc='best')
	plt.title("PATT Regulator Test, Chip {}".format(chip))
	plt.savefig(Chipfolder+'Regulator_ChipNo'+Chipnumber+'_'+start_of_test+'.png',dpi=400)
	# plt.show()   
	plt.clf()

	plt.plot(regulator[:,2],regulator[:,6], 'c.',label='POR', linestyle='-')
	plt.grid()
	plt.xlabel('$V_{ddd}$ in V')
	plt.ylabel('POR (binary)')
	plt.yticks(np.array([0,1]))
	plt.title("PATT Power On Reset Test, Chip {}".format(chip))
	plt.savefig(Chipfolder+'POR_ChipNo'+Chipnumber+'_'+start_of_test+'.png',dpi=400)
	plt.clf()



	if fail_flag:
		regulator_grade='f'
		print Chip_failed
		
	save_grade_actual_test(regulator_grade,reg_file_name)
	if not regulator_grade=='f':
		success('Successful regulator test.')    
	return regulator_grade    

def logic_test(fpga,Chipnumber,chip_adress,start_of_test,Chipfolder):
	status('Start logic test')
	logic_file_name=Chipfolder+'Register'+Chipnumber+'_'+start_of_test+'.txt'
	logic_file_header='Register test\n\tmeasured\t\t\t\t\texpected\n\tBinary\tHex\tDOUT\tDIN\tStatus\tBinary\tHex\tDOUT'
	
	fpga.write(reg.DAC(1,2000))
	WaitForReady(fpga)      

	#Initiate test variables and arrays    
	logic=np.empty((60,6),dtype='U9')	#vorher 60
	exp_logic=np.empty((60,6),dtype='U9')

	#y:initialisiere logic und exp_logic anständig, da sonst manche Einträge komische Sachen enthalten, was zu Fehlern führt!
	logic[logic!=u'']=u''
	exp_logic[exp_logic!=u'']=u''	
	
	fail_flag=0
	gpio_in=np.empty(4)       
	
	logic_grade='ok'

	for cycle in range(0,4):
				
		space_holder=cycle*15        #vorher 13
		#Reset registry
		fpga.write(reg.SCB('w',addr=chip_adress,register='6',data='1e'))
		WaitForReady(fpga)
		
		exp_logic[0+space_holder,1:3]=['00100001','21']
		exp_logic[1+space_holder,1:3]=['11110101','F5']
			 
		#Set DIN,DOUT  
		if cycle%2:                   
			fpga.write(reg.GPIO('o',1,0)) #Set DIN
			logic[space_holder+4,4]='0'                   
			WaitForReady(fpga)
			
			fpga.write(reg.SCB('w',addr=chip_adress,register='5',data='03'))#Set DOUT
			exp_logic[space_holder+5,3]='1'
			WaitForReady(fpga)
					
		else:           
			fpga.write(reg.GPIO('o',1,1))
			logic[space_holder+4,4]='1'
			WaitForReady(fpga)
			
			fpga.write(reg.SCB('w',addr=chip_adress,register='5',data='00'))
			exp_logic[space_holder+5,3]='0'
			WaitForReady(fpga)
		
		#Change Bypass,Command and Bandgap settings        
		if cycle==0:
			fpga.write(reg.SCB('w',addr=chip_adress,register='6',data='1E'))
			exp_logic[6,1:3]=['00011000','18']
			WaitForReady(fpga)
			
			fpga.write(reg.SCB('w',addr=chip_adress,register='A',data='01'))
			WaitForReady(fpga)
			fpga.write(reg.SCB('w',addr=chip_adress,register='B',data='04'))
			WaitForReady(fpga)
			fpga.write(reg.SCB('w',addr=chip_adress,register='C',data='00'))
			exp_logic[10,1:3]=['00000001','01']
			exp_logic[11,1:3]=['00000100','04']
			exp_logic[12,1:3]=['00000000','00']
					   
			
		elif cycle==1:
			fpga.write(reg.SCB('w',addr=chip_adress,register='6',data='01'))
			WaitForReady(fpga)            
			exp_logic[6+space_holder,1:3]=['10000001','81']
			
			fpga.write(reg.SCB('w',addr=chip_adress,register='A',data='00'))
			exp_logic[10+space_holder,1:3]=['00000000','00']
			exp_logic[11+space_holder,1:3]=['00000100','04']
			exp_logic[12+space_holder,1:3]=['00000000','00']

		elif cycle==2:
			fpga.write(reg.SCB('w',addr=chip_adress,register='6',data='1E'))
			WaitForReady(fpga)           
			exp_logic[6+space_holder,1:3]=['00011000','18']
			
			fpga.write(reg.SCB('w',addr=chip_adress,register='A',data='01'))
			WaitForReady(fpga)
			fpga.write(reg.SCB('w',addr=chip_adress,register='B',data='03'))
			WaitForReady(fpga)
			fpga.write(reg.SCB('w',addr=chip_adress,register='C',data='1F'))
			exp_logic[10+space_holder,1:3]=['00000001','01']
			exp_logic[11+space_holder,1:3]=['00000011','03']
			exp_logic[12+space_holder,1:3]=['00011111','1F']
			
			
		else:
			fpga.write(reg.SCB('w',addr=chip_adress,register='6',data='01'))
			WaitForReady(fpga)
			exp_logic[6+space_holder,1:3]=['10000001','81']

			fpga.write(reg.SCB('w',addr=chip_adress,register='B',data='04'))
			WaitForReady(fpga)
			fpga.write(reg.SCB('w',addr=chip_adress,register='C',data='00'))
			exp_logic[10+space_holder,1:3]=['00000001','01']
			exp_logic[11+space_holder,1:3]=['00000100','04']
			exp_logic[12+space_holder,1:3]=['00000000','00']
							 
		WaitForReady(fpga)            
				
		
		#Read Registers 
		fpga.write(reg.SCB('r',chip_adress))
		#fpga.readline()#check how these are neccessary
		line=fpga.readline()
		if line[0:24]!='r  '+'00'+' #written 1 #read F': #Vorher == ...D
			error('SCB communication not stable. Please make sure set up is still in working order.')
			break
		for no_reg_entries in range(15): #vorher 13
			line=fpga.readline()
			logic[space_holder+no_reg_entries,0]=str(no_reg_entries)     
			logic[space_holder+no_reg_entries,1]=line[5:14]
			logic[space_holder+no_reg_entries,2]=line[3:5]
			exp_logic[space_holder+no_reg_entries,0]=str(no_reg_entries)
		WaitForReady(fpga)
		
		#Read DOUT Signal
		fpga.write(reg.GPIO('i'))   
		tmp=fpga.readline()
		index = tmp.rfind('Value')
		for port in range(0,4):                   #MG:Anpassen?
			value = (int(tmp[index+6:index+8]) & pow(2,port)) / pow(2,port)                
			gpio_in[port] = int(value)
		logic[space_holder+5,3]=str(gpio_in[0])
		WaitForReady(fpga)
		
		
		#Compare DOUT with register
		if not logic[space_holder+5,1][8]==logic[space_holder+5,3][0]:
			logic[space_holder+5,5]='fail'
			print'DOUT register and analog signal not consistent'
			#fail_flag=fail_flag+1				#JK: auskommentiert, sodass Test weiter läuft auch wenn DOUT nicht richtig
		#Compare DIN with register   
		if not logic[space_holder+4,1][8]==logic[space_holder+4,4][0]:
			logic[space_holder+4,5]='fail'
			#fail_flag=fail_flag+1				# JK: so
			print'DIN register and analog signal not consistent'
		
		#Compare bypass,control and bandgap registers
		if not int(logic[space_holder+6,1][0:9])==int(exp_logic[space_holder+6,1][0:9]):           
			logic[space_holder+6,5]='fail'
			print  space_holder+10,logic[space_holder+6,1][0:9],exp_logic[space_holder+6,1][0:9]           
			print'Bypass register not as expected'
			fail_flag=fail_flag+1
		if not int(logic[space_holder+10,1][6:9])==int(exp_logic[space_holder+10,1][6:9]):            
			logic[space_holder+10,5]='fail'
			print  space_holder+10,logic[space_holder+10,1][6:9],exp_logic[space_holder+10,1][6:9]
			print'Control register not as expected'
			fail_flag=fail_flag+1
		if not int(logic[space_holder+11,1][0:9])==int(exp_logic[space_holder+11,1][0:9]) or not int(logic[space_holder+12,1][0:9])==int(exp_logic[space_holder+12,1][0:9]):
			logic[space_holder+11,5]='fail'
			logic[space_holder+12,5]='fail'
			print'Bandgap register not as expected'
			fail_flag=fail_flag+1

		#Check, if SEU register is 0
		if not int(logic[space_holder+13,1][0:9])==0 or not int(logic[space_holder+14,1][0:9])==0:
			logic[space_holder+13,5]='fail'
			logic[space_holder+14,5]='fail'
			print'SEU register not 0'
			fail_flag=fail_flag+1
		
		#Save logic array to file
		logic[logic=='']='-'
		logic[logic=='0.0']='0'
		exp_logic[exp_logic=='']='-'
		save_to_file_array=np.concatenate((logic,exp_logic[:,1:4]),axis=1)
		np.savetxt(logic_file_name,save_to_file_array,fmt='%s',header=logic_file_header,delimiter='\t')

		if fail_flag>=2:	#vorher ==
			fail('Chip has failed due to Register error. Test finished. Continue with next Chip.')
			logic_grade='f'
			break

	save_grade_actual_test(logic_grade,logic_file_name)

	fpga.write(reg.SCB('w',addr=chip_adress,register='6',data='1E'))
	WaitForReady(fpga)

	if not fail_flag:
		success('Successful logic test. Continue with ADC test.')
	elif fail_flag==1:
		fail('Logic with one error.- Continue with ADC test.')	
	
	return logic_grade

def get_adc_hex(fpga,channel):

	#fpga.write(reg.SCB('w',addr=chip_adress,register='7',data='00'))
	#WaitForReady(fpga)
	fpga.write(reg.SCB('w',addr=chip_adress,register='7',data='0'+str(channel)))
	WaitForReady(fpga)
	return read_reg_adc(fpga,channel)[1]

#Funktion aus manually.py von Niklaus. Ist weiterer Test ob ADC funktioniert.
def adccheck(fpga,Chipnumber,chip_adress):
	# read all channels with vbg in between each one
	vbg0 = get_adc_hex(fpga,7)
	Vinthalf = get_adc_hex(fpga,6)
	vbg1 = get_adc_hex(fpga,7)
	vglobal = get_adc_hex(fpga,5)
	vbg2 = get_adc_hex(fpga,7)
	thtemp = get_adc_hex(fpga,4)
	vbg3 = get_adc_hex(fpga,7)
	vtemp2 = get_adc_hex(fpga,3)
	vbg4 = get_adc_hex(fpga,7)
	vtemp1 = get_adc_hex(fpga,2)
	vbg5 = get_adc_hex(fpga,7)
	thmod = get_adc_hex(fpga,1)
	vbg6 = get_adc_hex(fpga,7)
	vmod = get_adc_hex(fpga,0)
	vbg7 = get_adc_hex(fpga,7)
	# print values
	print "ADC check. Channel values."
	print '7:Vbg {}, 6:Vint/2 {}, 5:Vglobal {}, 4:ThTemp {}'.format(vbg7,Vinthalf,vglobal,thtemp)
	print '3:vtemp2 {}, 2:vtemp1 {}, 1:thmod {}, 0:vmod {}'.format(vtemp2,vtemp1,thmod,vmod)
	print "Failed Channels:"
	# compare individual channels
	failflag = 0
	failed_channels = ['','','','','','','','']
	if (vbg7 == vmod):
		print('Vbg (channel 7) failed')
		failflag = failflag| 1
		failed_channels[7] = 'X'
	if (vbg0 == Vinthalf):
		print('Vinthalf (channel 6) failed')
		failflag = failflag| 1
		failed_channels[6] = 'X'
	if (vbg1 == vglobal):
		print('vglobal (channel 5) failed')
		failflag = failflag| 2
		failed_channels[5] = 'X'
	if (vbg2 == thtemp):
		print('thtemp (channel 4) failed')
		failflag = failflag| 1
		failed_channels[4] = 'X'
	if (vbg3 == vtemp2):
		print('Vtemp2 (channel 3) failed')
		failflag = failflag| 2
		failed_channels[3] = 'X'
	if (vbg4 == vtemp1):
		print('Vtemp1 (channel 2) failed')
		failflag = failflag| 1
		failed_channels[2] = 'X'
	if (vbg5 == thmod):
		print('thmod (channel 1) failed')
		failflag = failflag| 1
		failed_channels[1] = 'X'
	if (vbg6 == vmod):
		print('Vmod (channel 0) failed')
		failflag = failflag| 1
		failed_channels[0] = 'X'

	if (failflag == 0):
		success('Chip {}: All ADC channels work'.format(Chipnumber))
	elif (failflag == 1):
		warning('Chip {}: Some uncritical channels failed'.format(Chipnumber))
	else:
		fail('Chip {}: Critical channels failed'.format(Chipnumber))

	return failflag,failed_channels

def adc_test(fpga,Chipnumber,chip_adress,start_of_test,Chipfolder,carrier_version):   #MG: angepasst
	status('\nStart ADC test.')

	adc_file_name=Chipfolder+'ADC_'+Chipnumber+'_'+start_of_test+'.txt'
	adc_file_header='ADC test\n,,,,,,,Vmod,,Vtemp1,,Vtemp2\nCh,ADCR-Hex,Register,Analog,DeltaV,None,Chip,analog,Chip,analog,Chip,analog,failed Channels'
	adc_file_dtype='%i,%s,%1.3f,%1.3f,%1.3f,%i,%1.3f,%1.3f,%1.3f,%1.3f,%1.3f,%1.3f,%s'
	#Initiate test variables and arrays
	adc=np.zeros((8,13),dtype=object)
	#channel_names=["ADC0","BG","ThMod","Vmod","ThTemp","Vtemp","Vglobal","VDDA/2"]	#alte Namen vom V3 !!
	channel_names=["Vmod","ThMod","Vtemp1","Vtemp2","ThTemp","Vglobal","Vint/2","Vbg"]	# neue Channels von v4
	fail_flag=0
	adc[:,3]=0
	print 'Channel\tName\tChip\tanalog\tΔV'
	for channel in range(8):
		adc[channel,0]=channel        
		
		fpga.write(reg.SCB('w',addr=chip_adress,register='7',data='00')) #Set mux channel to 0, errors possible
		WaitForReady(fpga)
		#fpga.write(reg.DAC(6,1000))	#kleiner bypass strom
		sleep(0.1)
		#Set Vmod and Vtemp1,Vtemp2 with DAC
		if channel==0:		#Vmod 
				
			dac_value=800.0
			fpga.write(reg.DAC(Channel=5,Value=dac_value)) #geteilt durch 1.3, da Modul/Bypassspannung um 1.3 mV verstärkt gegenüber dac spannung
			adc[0,3]=dac_value/1000	
			WaitForReady(fpga)
			
									
		if channel==2:		#VTemp1
			dac_value=300.0
			fpga.write(reg.DAC(Channel=3,Value=dac_value))  
			adc[2,3]=dac_value/1000
			WaitForReady(fpga)
		
		if channel==3:		#VTemp2
			dac_value=300.0
			fpga.write(reg.DAC(Channel=4,Value=dac_value)) 
			adc[3,3]=dac_value/1000
			WaitForReady(fpga)

		#Read analog values 		
		if channel==1: 			#ThMod
			adc[1,3]=read_adc(2,2,fpga)
		
		if channel==4:			#ThTemp
			adc[4,3]=read_adc(2,1,fpga)
			
		if channel==5:			#Vglobal
			adc[5,3]=read_adc(2,3,fpga)

		if channel==6:			#Vinthalf
			adc[6,3]=read_adc(2,8,fpga)/2
		
		if channel==7:			#vbg
			adc[7,3]=0.8
		  
		fpga.write(reg.SCB('w',addr=chip_adress,register='7',data='0'+str(channel)))
		WaitForReady(fpga)

        # Read register                 
		tmp = read_reg_adc(fpga,channel)
		adc[channel,2] = tmp[0]#
		adc[channel,1] = tmp[1]#
		
		adc[channel,4]=adc[channel,2]-adc[channel,3]	#delta v berechnen

		print '%d\t%s\t%.3f\t%.3f\t%.3f' % (adc[channel,0],channel_names[channel],adc[channel,2],adc[channel,3],adc[channel,4])
		np.savetxt(adc_file_name,adc,fmt=adc_file_dtype,header=adc_file_header,delimiter='\t')
		print channel

	#Assign grade    
	adc_grade='a'
	for channel in range(8):
		if np.absolute(adc[channel,4])>0.3:
			adc_grade='b'
				      
	
	#Test ADC Ch0 and Ch2, Ch3
	status('\nTesting Mux channel 0 Vmod')
	print 'analog\tChip'
	for cycle in range(5):    
		fpga.write(reg.SCB('w',addr=chip_adress,register='7',data='00')) #Set mux channel to 0, errors possible
		WaitForReady(fpga)
		
		fpga.write(reg.DAC(2,cycle*600))	#ubypass vorgeben;   MG:vorher /1.3
		adc[cycle,7]=cycle*0.6			#0.42 um zu vergleichen   MG:vorher *0.42
		WaitForReady(fpga)
		
		fpga.write(reg.SCB('w',addr=chip_adress,register='7',data='03'))
		WaitForReady(fpga)
		
		adc[cycle,6]=read_reg_adc(fpga,0)[0]	#adc reg 0 auslesen

		print '%.3f\t%.3f' %(adc[cycle,7],adc[cycle,6])
		np.savetxt(adc_file_name,adc,fmt=adc_file_dtype,header=adc_file_header,delimiter='\t')
		
	fpga.write(reg.DAC(2,0))
	WaitForReady(fpga)
	fpga.write(reg.DAC(6,0))	#kleiner bypass strom auch aus		
	WaitForReady(fpga)
	
	status('\nTesting Mux channel 2 Vtemp1')
	print 'analog\tChip'
	for cycle in range(5):    
		fpga.write(reg.SCB('w',addr=chip_adress,register='7',data='00')) #Set mux channel to 0, errors possible
		WaitForReady(fpga)
		
		fpga.write(reg.DAC(3,cycle*200))	# set dac
		adc[cycle,9]=cycle*0.2
		WaitForReady(fpga)
		
		fpga.write(reg.SCB('w',addr=chip_adress,register='7',data='05'))
		WaitForReady(fpga)
		
		adc[cycle,8]=read_reg_adc(fpga,2)[0]	#read adc channel 2
		
		print '%.3f\t%.3f' %(adc[cycle,9],adc[cycle,8])
		np.savetxt(adc_file_name,adc,fmt=adc_file_dtype,header=adc_file_header,delimiter='\t')
		
	fpga.write(reg.DAC(3,0))
	WaitForReady(fpga)

	status('\nTesting Mux channel 3 Vtemp2')
	print 'analog\tChip'
	for cycle in range(5):    
		fpga.write(reg.SCB('w',addr=chip_adress,register='7',data='00')) #Set mux channel to 0, errors possible
		WaitForReady(fpga)
		
		fpga.write(reg.DAC(4,cycle*200))	# set dac
		adc[cycle,11]=cycle*0.2
		WaitForReady(fpga)
		
		fpga.write(reg.SCB('w',addr=chip_adress,register='7',data='05'))
		WaitForReady(fpga)
		
		adc[cycle,10]=read_reg_adc(fpga,3)[0]	#read adc channel 2
		
		print '%.3f\t%.3f' %(adc[cycle,11],adc[cycle,10])
		np.savetxt(adc_file_name,adc,fmt=adc_file_dtype,header=adc_file_header,delimiter='\t')
		
	fpga.write(reg.DAC(4,0))
	WaitForReady(fpga)

	from scipy.optimize import curve_fit

	def linear(x,a,b):
		return a*x+b

	print "\nLinear Fit:a*x+b"
	p_mod,cov_temp = curve_fit(linear,adc[:5,7].astype(float),adc[:5,6].astype(float))
	print "Vmod:\ta={:.3f}\tb={:.3f}".format(p_mod[0],p_mod[1])
	p_temp, cov_temp = curve_fit(linear,adc[:5,9].astype(float),adc[:5,8].astype(float))	
	print "Vtemp1:\ta={:.3f}\tb={:.3f}".format(p_temp[0],p_temp[1])
	p_temp2, cov_temp2 = curve_fit(linear,adc[:5,11].astype(float),adc[:5,10].astype(float))	
	print "Vtemp2:\ta={:.3f}\tb={:.3f}".format(p_temp2[0],p_temp2[1])
	print '\n'
	plt.grid()
	plt.xlabel('DAC Voltage in V')
	plt.ylabel('Register value in V')
	plt.plot(np.linspace(0,0.8,50),linear(np.linspace(0,0.8,50),*p_temp),label="Vtemp1 Fit: {:.2f}*x+{:.2f}".format(p_temp[0],p_temp[1]))
	plt.plot(np.linspace(0,0.8,50),linear(np.linspace(0,0.8,50),*p_temp2), linestyle='--',label="Vtemp2 Fit: {:.2f}*x+{:.2f}".format(p_temp2[0],p_temp2[1]))
	plt.plot(np.linspace(0,1.2,50),linear(np.linspace(0,1.2,50),*p_mod),label="Vmod Fit: {:.2f}*x+{:.2f}".format(p_mod[0],p_mod[1]))
	plt.plot(adc[:5,9],adc[:5,8],'cx',label='Mux Ch2, Vtemp1')   
	plt.plot(adc[:5,11],adc[:5,10],'r+',  label='Mux Ch3, Vtemp2')
	plt.plot(adc[:5,7],adc[:5,6],'gx',label='Mux Ch0, Vmod') 
	plt.legend(loc='best')    
	plt.savefig(Chipfolder+'ADC_Chip_'+Chipnumber+'_'+start_of_test+'.png',dpi=400)
	#plt.show()
	plt.clf()


	if p_mod[0]<0.5 or p_temp[0]<0.5:		# wenn Steigung kleiner als 0.5, Steigung sollte 1 sein idealerweise
		adc_grade='c'

	flag, adc[:,12] = adccheck(fpga,Chipnumber,chip_adress)
	if flag == 1:
		if adc_grade != 'c':
			adc_grade = 'b'
	if flag >= 2:
		adc_grade = 'c'

	np.savetxt(adc_file_name,adc,fmt=adc_file_dtype,header=adc_file_header,delimiter='\t')

	print 'ADC Test result: Grade ',adc_grade

	save_grade_actual_test(adc_grade,adc_file_name)
	status('Finished ADC test\n')
	return adc_grade

def comparator_test(fpga,Chipnumber,chip_adress,start_of_test,Chipfolder,carrier_version):

	status('Start comparator test\nStart VthMod test.')    
	comp_file_name=Chipfolder+'Comp_'+Chipnumber+'_'+start_of_test+'.txt'
	comp_file_header='Comp test\nUmod,Umod at comp,ThMod,CompReg,CompPin,ByReg,StReg,BypassCtrl1,Utemp1,ThTemp,CompReg1,CompPin1,ByReg1,StReg1,BypassCtrl2,Utemp2,ThTemp,CompReg2,CompPin2,ByReg2,StReg2,BypassCtrl3'
	comp_file_fmt='%1.3f,%1.3f,%1.3f,%i,%i,%i,%i,%i,%1.3f,%1.3f,%i,%i,%i,%i,%i,%1.3f,%1.3f,%i,%i,%i,%i,%i'
	

	amount_measur_mod=300
	amount_measur_temp=115
	comp=np.zeros((amount_measur_mod,22))

	#Measure VthMod
	fpga.write(reg.SCB('w',addr=chip_adress,register='6',data='1E'))	# (Bypass ausschalten und OV/OT enable aus, definierter Anfangszustand)
	WaitForReady(fpga)    
	reg_6=read_reg(fpga,reg_to_read=6,chip_adress=chip_adress)
	print 'Bypass register now: ',reg_6	
	print ' \t \t \t \tBypass Register\tStatus Register'
	print 'Umod\tUm_true\tThMod\tCompOut\tOverVol\tByState\tCompV\tBypassCtrl'
	#fpga.write(reg.DAC(6,1000))	# kleinen Bypassstrom vorgegeben 1000/12.4*0.05=4[mA] ?!?!?! 
	sleep(0.01)
	for row in range(amount_measur_mod):

		

		fpga.write(reg.DAC(5,row+700 )) #Vmod jetzt auf DAC channel 2 UBYPASS, Umrechnung udac=10/13*ubypass		siehe unten		
		#weoter=raw_input ("weiter?")	
		WaitForReady(fpga)
		comp[row,0]=((row*0.001+0.7) )		#jk: hier gebe ich lower bound vor
		comp[row,1]=comp[row,0]	# umrechnung Umod->Umod at Comp, da Verstärkung auf Bypasskarte
		#vielleicht sollte man diesen lieber nachmessen über: read_adc(1,5,fpga)
		
		comp[row,2]=read_adc(slave=2,channel=2,fpga=fpga)	# JK: Messung von Umod Threshold geteilt durch 0.42 damit threshold auf 2V statt 0.84 wie in ADC steht/gemessen wird
		
		# read bypass register
		reg_6=read_reg(fpga,6,chip_adress)

		#Read Comp out Reg and pin
		comp[row,3]=reg_6[2]
		comp[row,4]=read_gpio_in(fpga,port=3)      

		#Read BypassCtrl
		comp[row,7]=read_gpio_in(fpga,port=4) 
		
		#Read Bypass Reg and pin        
		comp[row,5]=reg_6[0]
		#comp[row,6]=read_gpio_in(fpga,port=1)	#JK: das kann bei v4 nicht mehr gemessen werden !!

		# read status register 
		status_reg = read_reg(fpga,4,chip_adress)
		comp[row,6] = status_reg[4]		# TESTEN IST 4 RICHTIG ?!
		
		
		print '%.3f\t%.3f\t%.3f\t%d\t%d\t%d\t%d\t%d' %(comp[row,0],comp[row,1],comp[row,2],comp[row,4],comp[row,3],comp[row,5], comp[row,6], comp[row,7]	)
		np.savetxt(comp_file_name,comp,fmt=comp_file_fmt,header=comp_file_header,delimiter='\t')
	
	fpga.write(reg.DAC(5,0))	# modulspannung wieder ausschalten
	WaitForReady(fpga)

	status('Finished comparator VthMod test.\n\nStart VthTemp1 test.')
	
	#Measure Vth,Temp1 
	fpga.write(reg.SCB('w',addr=chip_adress,register='6',data='1E'))	# Bypass ausschalten und OV/OT enable aus, definierter Anfangszustand
	WaitForReady(fpga)    
	
	reg_6=read_reg(fpga,6,chip_adress)

	print 'Bypass register now: ',reg_6
	print '\t \t \tBypass Register\tStatus Register'
	print 'Vtemp\tThTemp\tCompOut\tOverTem\tByState\tStatT1\tBypassCtrl'
	
	for row in range(amount_measur_temp):
		#sleep(0.1)
		fpga.write(reg.DAC(3,row*2+300))		#jk: neuer Wertebereich da Vth bei v4 0.4 statt 0.79V (v3)
		WaitForReady(fpga)
		comp[row,8]=row*0.002+0.3				#jk: muss auch hier geaendert werden
												# row wird ab 7 weiter gezaehlt 
		
		comp[row,9]=read_adc(slave=2,channel=1,fpga=fpga)	# Messung von Utemp Threshold
		
		#Read Comp out Reg and pin
		reg_6=read_reg(fpga,6,chip_adress)			# read bypass register

		comp[row,10]=reg_6[1]
		comp[row,11]=read_gpio_in(fpga,port=2)

		#Read BypassCtrl
		comp[row,14]=read_gpio_in(fpga,port=4)
		 
		# Read Bypass Reg and pin 
		comp[row,12]=reg_6[0]
		#comp[row,12]=read_gpio_in(fpga,port=1)	# siehe oben

		# read Status Register
		status_reg = read_reg(fpga,4,chip_adress)	# read status register 
		comp[row,13] = status_reg[6]				# genau Überlegen welcher Temp1 und Temp2 ist !!!
		

		
		print '%.3f\t%.3f\t%d\t%d\t%d\t%d\t%d' %(comp[row,8],comp[row,9],comp[row,11],comp[row,10],comp[row,12],comp[row,13], comp[row,14])

		np.savetxt(comp_file_name,comp,fmt=comp_file_fmt,header=comp_file_header,delimiter='\t')

	fpga.write(reg.DAC(3,0))
	WaitForReady(fpga)

	status('Finished comparator VthTemp1 test.\n\nStart VthTemp2 test.')
	
	#Measure Vth,Temp2 
	fpga.write(reg.SCB('w',addr=chip_adress,register='6',data='1E'))	# Bypass ausschalten und OV/OT enable aus, definierter Anfangszustand
	WaitForReady(fpga)    
	
	reg_6=read_reg(fpga,6,chip_adress)

	print 'Bypass register now: ',reg_6
	print '\t \tBypass Register\tStatus Register'
	print 'Vtemp\tThTemp\tCompOut\tOverTem\tByState\tStatT2\tBypassCtrl'
	
	for row in range(amount_measur_temp):
		#sleep(0.1)
		fpga.write(reg.DAC(4,row*2+300))		
		WaitForReady(fpga)
		comp[row,15]=row*0.002+0.3				
											 
		
		comp[row,16]=read_adc(slave=2,channel=1,fpga=fpga)	# Messung von Utemp Threshold, gleiches wie bei Temp1
		
		#Read Comp out Reg and pin
		reg_6=read_reg(fpga,6,chip_adress)			# read bypass register

		comp[row,17]=reg_6[1]                       # over temperature
		comp[row,18]=read_gpio_in(fpga,port=5)	

		#Read BypassCtrl
		comp[row,21]=read_gpio_in(fpga,port=4)

		# Read Bypass Reg and pin 					
		comp[row,19]=reg_6[0]						# bypass state


		# read Status Register
		status_reg = read_reg(fpga,4,chip_adress)	# read status register 
		comp[row,20] = status_reg[5]				# das ist Temp2
		

		
		print '%.3f\t%.3f\t%d\t%d\t%d\t%d\t%d' %(comp[row,15],comp[row,16],comp[row,18],comp[row,17],comp[row,19],comp[row,20],comp[row,21])

		np.savetxt(comp_file_name,comp,fmt=comp_file_fmt,header=comp_file_header,delimiter='\t')

	fpga.write(reg.DAC(4,0))
	WaitForReady(fpga)


	#if comp[0,4]:
	#	status('Module comparator activated from the beginning')
		
	#if comp[0,10]:	#GPIO Pin status
	#	status('Temperature comparator 1 activated from the beginning')

	#if comp[0,16]:	#GPIO Pin status
	#	status('Temperature comparator 2 activated from the beginning')

	# noch für den Temp1 anpassen ! aber hier haben wir keinen Pin
		
	fpga.write(reg.DAC(4,0))
	WaitForReady(fpga)
	
	# Plot Comp out vs Utemp with vertical line at ThTemp and ThMod
	plt.grid()
	plt.xlabel('$V_{Mod}$ in mV')
	plt.ylabel('Comp out')
	plt.yticks([0,1])
	plt.plot(comp[:,1]*1000,comp[:,4],label='Comparator DOUT ThMod',color='b')
	plt.plot(comp[:,1]*1000,comp[:,7],label='BypassCtrl DOUT ThMod',color='r')
	plt.axvline(comp[30,2]*1000,label='UThMod',color=(172/255, 226/255, 214/255))
	#plt.axis([350,690,-0.1,1.4])
	plt.legend(loc='best')
	plt.title("PATT Comparator Test: Vmod, Chip {}".format(chip))
	plt.savefig(Chipfolder+'Comparator_mod_Chip_'+Chipnumber+'_'+start_of_test+'.png',dpi=400)
	# plt.show()
	plt.clf()

	plt.grid()
	plt.xlabel('$V_{Temp}$ in mV')
	plt.ylabel('Comp out')
	plt.yticks([0,1])
	plt.plot(comp[:amount_measur_temp,8]*1000,comp[:amount_measur_temp,11],label='Comparator DOUT ThTemp1 (Pin)',color='g')
	plt.plot(comp[:amount_measur_temp,15]*1000,comp[:amount_measur_temp,18],label='Comparator DOUT ThTemp2 (Pin)',color='r',linestyle=':')  #plotte 2ten NTC einfach mit hier rein   
	plt.plot(comp[:amount_measur_temp,8]*1000,comp[:amount_measur_temp,14],label='BypassCtrl DOUT ThTemp1 (Pin)',color='g', linestyle='--')
	plt.plot(comp[:amount_measur_temp,15]*1000,comp[:amount_measur_temp,21],label='BypassCtrl DOUT ThTemp2 (Pin)',color='r',linestyle='-.')
	plt.axvline(comp[30,8]*1000,label='V ThTemp',color=(178/255, 226/255, 172/255))
	#plt.axis([690,1000,-0.1,1.4])
	plt.legend(loc='best')
	plt.title("PATT Comparator Test: Vtemp, Chip {}".format(chip))
	plt.savefig(Chipfolder+'Comparator_temp_Chip_'+Chipnumber+'_'+start_of_test+'.png',dpi=400)
	# plt.show()
	plt.clf()

	#plt.grid()
	#plt.xlabel('$V_{Mod/Temp}$ in mV')
	#plt.ylabel('BypassCtrl')
	#plt.yticks([0,1])
	#plt.plot(comp[:,1]*1000,comp[:,7],label='BypassCtrl DOUT ThMod',color='b')
	#plt.plot(comp[:amount_measur_temp,8]*1000,comp[:amount_measur_temp,14],label='BypassCtrl DOUT ThTemp1 (Pin)',color='g')
	#plt.plot(comp[:amount_measur_temp,15]*1000,comp[:amount_measur_temp,21],label='BypassCtrl DOUT ThTemp2 (Pin)',color='r',linestyle=':')  #plotte 2ten NTC einfach mit hier rein   
	#plt.axvline(comp[30,8]*1000,label='V ThTemp',color=(178/255, 226/255, 172/255))    #MG:?
	#plt.axis([690,1000,-0.1,1.4])
	#plt.legend(loc='best')
	#plt.title("PATT Comparator Test: BypassCtrl, Chip {}".format(chip))
	#plt.savefig(Chipfolder+'Comparator_BypassCtrl_Chip_'+Chipnumber+'_'+start_of_test+'.png',dpi=400)
	# plt.show()
	#plt.clf()


	
	status('Finished comparator Vth,Temp test.\n')
	#if comp[amount_measur_mod-1,4]==0 or comp[amount_measur_temp-1,10]==1 or comp[amount_measur_temp-1,17]==1:		# Abfrage wieder nur auf Mod und Temp1, aber was ist mit Temp2 -> kein Pin, daher Status Register
	#	comp_grade='c'
	#	if comp[amount_measur_mod-1,4]==0:
	#		print 'Vmod comparator has not been activated'
	#	if comp[amount_measur_temp-1,10]==1:
	#		print 'Vtemp1 comparator has not been activated'
	#	if comp[amount_measur_temp-1,18]==1:
	#		print 'Vtemp2 comparator has not been activated'
	#	fail('Comparator test failed. Comparator grade C.')
	#else:
	#	comp_grade='a'
	#	succsess('Comparator test successfull. Comparator grade A')	

	comp_grade='a'

	if comp[amount_measur_mod-1,4]==0 or comp[0,4]==1:
		comp_grade='c'
		if comp[amount_measur_mod-1,4]==0:
			print 'Vmod comparator has not been activated'
		if comp[0,4]==1:
			print 'Vmod activated from the beginning'
	if comp[amount_measur_mod-1,11]==1 or comp[0,11]==0:
		comp_grade='c'
		if comp[amount_measur_mod-1,11]==0:
			print 'Vtemp1 comparator has not been activated'
		if comp[0,11]==1:
			print 'Vtemp1 not activated at the beginning'
	if comp[amount_measur_mod-1,18]==1 or comp[0,18]==0:
		comp_grade='c'
		if comp[amount_measur_mod-1,18]==0:
			print 'Vtemp2 comparator has not been activated'
		if comp[0,18]==1:
			print 'Vtemp2 not activated at the beginning'
	if comp_grade=='c':
		fail('Comparator test failed. Comparator grade C.')
	else:
		success('Comparator test successfull. Comparator grade A')	


		
	save_grade_actual_test(comp_grade,comp_file_name)

	status('Finished Comparator test.\n\n')
		
	return comp_grade

def set_clk(fpga,freq):                
    fpga.write("Sf {:d}\n".format(freq))
    #fpga.write(reg.cmd_shift('f',0,freq))
    WaitForReady(fpga,1)

  # loescht fifo simple und tmr und setzt counter zurueck 
def clear_ip(fpga):              
    fpga.write("Sc\n")
    WaitForReady(fpga,1)

def shift(fpga,data):
    # shift once with given data
    # fpga returns data automatically
    fpga.write("S {:08X}\n".format(data))

def shift_rnd(fpga):
    # shift once with random data
    # fpga returns data automatically
    rnd = randint(0,0xFFFFFFFF)
    fpga.write("S {:08X}\n".format(rnd))
    return rnd
  
def read_shift_data(fpga):
    tmr  = fpga.readline()
    simple  = fpga.readline()
    counters  = fpga.readline().split(' ')
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
    data = [tmr[1:], simple[1:], temp_t_seus, temp_s_seus]
    WaitForReady(fpga)
    return data

def shift_test(fpga):
	status('Start testing Shift Registers')
	shift_grade = 'a'
	set_clk(fpga,200000)
	print "Clock set to 200kHz"
	data=0xA555555A
	data_str = "{:8X}".format(data)
	shift(fpga,data)
	WaitForReady(fpga)
	clear_ip(fpga)
	print "Counters and fifos set to 0"
	shift(fpga,data)
	data_out = read_shift_data(fpga)
	if ((data_out[0].count(data_str) != 93) | (data_out[0].count(data_str[0:6]) != 94)):
		print "{:8X}".format(data)
		fail("Test failed: wrong tmr output data. found data {:d} times".format(data_out[0].count(data_str)))
		shift_grade = 'f'
	if ((data_out[1].count(data_str) != 93) | (data_out[1].count(data_str[0:6]) != 94)):
		fail("Test failed: wrong simple output data. found data {:d} times".format(data_out[1].count(data_str)))
		shift_grade = 'f'
	if ((data_out[2] != 0) | (data_out[3] != 0)):
		fail("Test failed: SEU counters not set zero")
		shift_grade = 'f'
	if (shift_grade != 'f'):
		success("Test of the shift registers finished without errors.")
	return shift_grade


	

def finish_current_chip_test(fpga,start_of_test,last_Chipnumber,chip):
	#Set all DAC Channels to 0
	for DAC_Channel in range(1,9):
		fpga.write( reg.DAC(DAC_Channel,0))
		WaitForReady(fpga)
	runtime = time.time()-starttime
	print "runtime: {:.1f}s".format(runtime)
	restart_test=raw_input('Would you like to test the same Chip again? Results will be overwrite in the same folder.\n If yes please enter y. Any other input otherwise\n')
	if restart_test=='y':	
		print 'Retesting chip number: ',chip
		chip=chip-1
		
	if menu == "1" and chip==last_Chipnumber:		#jk: es werden nur bei vollem Test die Grade Tables aktualisiert
		#Rmoving first row with only 0's and saving grades to seperate file.
		dt=np.dtype('i,i,i,i,U30')
		fmt=('%d,%d,%d,%d,%s')
		save_grades_header='Grading of PATT usability\nGrade A\tGrade B\tGrade C\tFail\tFailed area\n'
		status('Grades file saved with date and time.\nClosing fpga connection.\nExiting script.\nBye Bye')
		grades=np.loadtxt('./GradeTables/Grade_table.txt',skiprows=2,dtype=dt,delimiter=',')
		grades=np.delete(grades,0)
		np.savetxt('./GradeTables/Grade_table'+start_of_test+'.txt',grades,fmt=fmt,header=save_grades_header, delimiter=',')   
		os.remove('./GradeTables/Grade_table.txt')
		fpga.close()

	print 'Chip test finished.'
	return chip



if __name__ == "__main__":

	#print('Please make sure a 10mA_regulator_norm_values.txt exists\n')	#jk: brauch ich nicht wirklich, aber aufpassen wenn es nicht da ist !
	#answer=raw_input('Did you make that sure? Any input to continue')
	
	#initiate connection to FPGA	
	#port=get_ports()    
	port = get_controller_port(0)
	fpga = ser.Serial( port , 921600) #öffne serielle Instanz      
	
	#starting_chip_number=int(raw_input('With which number would you like to start?'))
	starting_chip_number=int(raw_input('Chip ID?'))	#jk: ich will nur einen Chip jeweils testen
	amount_of_chips=1	#int(raw_input('How many Chips are in this run?'))	# jk: ich will nur einen Chip jeweils testen
	last_Chipnumber=starting_chip_number+amount_of_chips-1

	chip_adress='0'
	start_of_test = datetime.now().strftime("_%y-%m-%d_%H-%M")
	chip=starting_chip_number
	menu = "0"

	while chip < last_Chipnumber+1:
		#start=raw_input('Start test with any input')				#jk: nicht wirklich nötig 
		carrier_version = 2		# int(raw_input('Carrier Version 1 or 2? '))#y: See ADC-Test for info. #jk: jetzt gibt es ja nur noch eine Version
		print'Start test with chip number: ',chip
		menu = Menu()												#jk: in menu kann man test auswaehlen
		starttime = time.time()

		Chipnumber=str(chip)
		Chipfolder='./data/'+Chipnumber+'/'	
		if not os.path.exists(Chipfolder):
			try:
				os.mkdir(Chipfolder)
			except OSError:
				error('Failed to make directory. Please check access rights.')            
				#Handle this case

		#y: For visibility in folder!
		if not os.path.exists('./data/GradeTables/'):
			try:
				os.mkdir('./data/GradeTables/')
			except OSError:
				error('Failed to make directory. Please check access rights.')            

		
		#load global files

		#file = open("10mA_regulator_norm_values.txt", "a") 
		#file.close()
		#file = open("10mA_regulator_norm_values.txt", "r") 
		#line = file.readline()
		#print line
		#if (line == "# Regulator norm values"):
	#		reg_norm=np.loadtxt('10mA_regulator_norm_values.txt',skiprows=2)
	#		file.close()
	#	else:
	#		file.close()
	#		reg_norm=np.empty((1,6))
		

		#reg_norm=np.loadtxt('10mA_regulator_norm_values.txt',skiprows=2)


		
		#Preparing Chip Voltages
		#WaitForReady(fpga)
		print 'Init done, configure FPGA'
		for channel in range(1,9):
			#print 'Command '+reg.DAC(channel,0)
			fpga.write(reg.DAC(channel,0))
			WaitForReady(fpga)
	
		if (menu == "1" or menu == "2"):
			#Regulator test
			regulator_grade=regulator_test(fpga,Chipnumber,chip_adress,start_of_test,Chipfolder) 
			if regulator_grade=='f':
				save_grades(Chipnumber,new_grade='f',failed_area='Regulator')
				chip=finish_current_chip_test(fpga,start_of_test,last_Chipnumber,chip)
				chip+=1
				continue


		fpga.write(reg.DAC(1,2000))		# setze für folgende Test die Chipversorgung
		WaitForReady(fpga)
		sleep(0.5)
		fpga.write(reg.ADC(1,1))
		WaitForReady(fpga)

		if (menu == "1" or menu == "3"):
			status('Testing SCB communication')
			scb_status=check_scb_communication(fpga,chip_adress)
			while scb_status=='Try again':
				scb_status=check_scb_communication(fpga,chip_adress)
		
			if scb_status=='skip_chip':
				save_grades(Chipnumber,'f','SCB_communication_failed')
				chip=finish_current_chip_test(fpga,start_of_test,last_Chipnumber,chip)
				chip+=1
				continue

			elif scb_status=='Stable':
				success("Stable SCB communication")	

		if (menu == "1" or menu == "4"):
			# #Logic test
			logic_grade=logic_test(fpga,Chipnumber,chip_adress,start_of_test,Chipfolder)   
			if logic_grade=='f':
				save_grades(Chipnumber,'f','Register')#,file_name=logic_file_name,file_header=logic_file_header,file_dtype='U9')            
				chip=finish_current_chip_test(fpga,start_of_test,last_Chipnumber,chip)
				chip+=1
				continue


		if (menu == "1" or menu == "5"):
			# #ADC test
			adc_grade=adc_test(fpga,Chipnumber,chip_adress,start_of_test,Chipfolder,carrier_version)
		
		if (menu == "1" or menu == "6"):	
			#Comparator test
			comp_grade=comparator_test(fpga,Chipnumber,chip_adress,start_of_test,Chipfolder,carrier_version)

		if (menu == "1" or menu == "7"):
			#Shift registers test
			shift_grade=shift_test(fpga) 
			if shift_grade=='f':
				save_grades(Chipnumber,new_grade='f',failed_area='Shift registers')
				#chip=finish_current_chip_test(fpga,start_of_test,last_Chipnumber,chip)
				chip+=1
				continue

		if (menu == "1"):
			#Saving grades
			adc_comp_bypass_grades=[adc_grade,comp_grade]
			failed_areas=['ADC','Comparator']  

			if any(grades=='f' for grades in adc_comp_bypass_grades):
				worst_grade='f'
				failed_area_index=adc_comp_bypass_grades.index('f')
				failed_area=failed_areas[failed_area_index]  
			elif any(grades=='c' for grades in adc_comp_bypass_grades):
				worst_grade='c'
				failed_area_index=adc_comp_bypass_grades.index('c')
				failed_area=failed_areas[failed_area_index]
			elif any(grades=='b' for grades in adc_comp_bypass_grades):
				worst_grade='b'
				failed_area_index=adc_comp_bypass_grades.index('b')
				failed_area=failed_areas[failed_area_index]
			else: 
				worst_grade='a'
				failed_area='None'
			# worst_grade='a'
			# failed_area='lab'
			# r_on_note='over 9000!'
			# r_off_note='under 9000!'
			print '\n\n\nThe final grade of chip ',Chipnumber,'is : ',worst_grade
			save_grades(Chipnumber,worst_grade,failed_area)
		chip=finish_current_chip_test(fpga,start_of_test,last_Chipnumber,chip)
		chip+=1

		
#%%
#import numpy as np

#print float(int('0110111010',2))/43*160
"""

"""