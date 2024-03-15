# coding: utf8

from serial.tools import list_ports
import serial as ser
from time import sleep
import numpy as np 
import sys
import registers as reg
import testsV3 as test

def menu():
	while (1):
		sleep(0.1)
		print ''
		print '## MENU: Choose one on the following'
		print '##'
		print '## 0: Set Chip Supply.'
		print '## 1: List all ADC and DAC values.'
		print '## 2: Read ADCs.'
		print '## 3: Read single ADC channel.'
		print '## 4: Set DAC.'
		print '## 5: Read GPIO.'
		print '## 6: Set GPIO.'
		print '## 7: SCB list chips.'
		print '## 8: SCB read.'
		print '## 9: SCB write.'
		print '## 10: Stop.'
		print '## 11: RadiationTest'
		print '## 12: Set Oszilloskop debug mode'
		print '## 13: SingleChipAdc'
		print '## 14: SingleRegister'
		print '## 15: Reset all DACs and exit.'

		selection = input('## Input: ')
		print''
		return selection

def WaitForReady(output = 0):  #Needed for every command send to fpga
	
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

def get_ports():
    
    ports = []
    ports = list_ports.comports()
    if sys.platform.startswith('win'):
        for port in ports:
           if 'USB' in port[1]:
                ports.append(port[0])
        ports= [port for port in ports if 'COM' in port]
    
    else:
        ports = [x[0] for x in ports if (x[0].find('USB') != -(1) )]

    print("Ports: ")
    print(ports)    
    eingabe = input("Welchen Port? ")
    for x in ports:
        if x.find(eingabe) != -1:
		port = x
    return port
#hole alle momentan usb-ports

port = get_ports()
RecvBuffer = []

fpga = ser.Serial(port,2500000) #Open serial instance

fpga.write('r'+'\\'+'n')
WaitForReady(1)

DAC_Values = [0,0,0,0,0,0,0,0]
ADC_Values = [[0,0,0,0,0,0,0,0],[0,0,0,0,0,0,0,0],[0,0,0,0,0,0,0,0]]
ADC_Names = [['U_Sup','Gnd Sup','I_Sup','I_Sup max','U_Bypass','GND Chip','I_Byp','GND Byp'], \
	['ThTemp','ThMod','V_Global','V_DDD Chip','V_Ref Chip','V_BG Chip','V_DDA Chip','V_int Chip'], \
	['V_DDA Regulator','V_DDD Regulator','V_DDA','V_DDD','I_VRef','I_VDDA','I_VDDD','Rsv']]

DAC_Names = [ 'U_supply Chip', 'Vmod=1.3*VDAC', 'Temp1', 'Temp2', 'Vmod_adc', 'I_bypass=VDAC/12.4*0.05 ', 'DAC41', "VDD_D_A_DAC42"      ]


running = 1
while(running):

	selection = menu()

	if selection == '0':
		channel = 1
		value = 2000
		command = reg.DAC(channel, value)
		fpga.write( command )
		tmp = fpga.readline()
		
		channel = int(command[3:4]) - 1
		DAC_Values[2*(int(command[2:3])-4)+channel] = float(command[5:9])/1000

		print 'DAC ' + command[2:3] + ' Channel ' + command[3:4] + ' Value ' \
				+ str( format( DAC_Values[(int(command[2:3])-4)*2+channel], '.3f') ) + ' V |'
		print "Chip supply voltage set to 2V."

		WaitForReady()


	elif ( selection == '1' ): #list dac and adc


		for adc in range(3):
			print ''
			for channel in range(8):
				print 'ADC: ' + str(adc+1) + ' Channel: ' + str(channel+1) + ' Value: ' + str(format(ADC_Values[adc][channel] , '.3f')) \
					+ 'V \t' + ADC_Names[adc][channel] 

		print ''

		for dac in range(8):
			print 'DAC: ' + str(dac+1) + ' Value: ' + str(format(DAC_Values[dac], '.3f')) + 'V\t' + DAC_Names[dac]
			


	elif ( selection == '2' ): #read adcs

		for adc in range(3):
			for channel in range(8):

				command = reg.ADC(adc+1, channel+1)
				fpga.write(command)
				WaitForReady()
				fpga.write(command)
				tmp = fpga.readline()
				index = tmp.rfind('Spannung ')
				ADC_Values[adc][channel] = float(tmp[index+9:index+13])/1000 ##Abfrage hier muss an die Ausgabe des FPGA angepasst werden!
				WaitForReady()
		print "All ADCs read. To see values enter 1."


	elif ( selection == '3' ): #read single adc channel

		try:
			adc = int(input('ADC-Number: '))
			channel = int(input('Channel-Number: '))
			fpga.write( reg.ADC(adc, channel) )
			WaitForReady()
			fpga.write( reg.ADC(adc, channel) ) #ADC answers in next request with data. therefore second request neccessary
			tmp = fpga.readline()
			index = tmp.rfind('Spannung ')
			Value = float(tmp[index+9:index+13])/1000 ##Abfrage hier muss an die Ausgabe des FPGA angepasst werden!
			ADC_Values[adc-1][channel-1] = Value
			print ''
			print 'ADC ' + str(adc) + ' Channel ' + str(channel) + ' Value ' + str(format(Value , '.3f')) + ' V |'
			WaitForReady()
		except ValueError:
			print("Wrong input: going back to menu.")


	elif ( selection == '4' ): #write dac

		try:
			channel = int(input('DAC-Channel (1-8): '))
			
			value = int(float(input('Value in  V: '))*1000)
			command = reg.DAC(channel, value)
			fpga.write( command )
			tmp = fpga.readline()

			channel = int(command[3:4]) - 1
			DAC_Values[2*(int(command[2:3])-4)+channel] = float(command[5:9])/1000

			print 'DAC ' + command[2:3] + ' Channel ' + command[3:4] + ' Value ' \
				+ str( format( DAC_Values[(int(command[2:3])-4)*2+channel], '.3f') ) + ' V |'

			WaitForReady()	
		except ValueError:
			print("Wrong input: going back to menu.")


	elif ( selection == '5' ): #read gpio

		gpio_name = ['DOUT','BYPASS_STATE','COMPTEMP','COMPMOD']
		gpio = [-1,-1,-1,-1]
		command = reg.GPIO('i')
		fpga.write(command)
		tmp = fpga.readline()
		index = tmp.rfind('Value')

		for port in range(1,5):
			value = (int(tmp[index+6:index+8]) & pow(2,port-1)) / pow(2,port-1)
			gpio[port-1] = value
			print 'GPIO ' + gpio_name[port-1].ljust(8) + ' Value ' + str(value) + '|'

		WaitForReady()


	elif ( selection == '6' ): #set gpio_name 	# JK: das muss ich noch verstehen !

		try:
			port = int(input('Which port? (1 or 2): '))
			value = int(input('Which value? (1,0): ')) 
			command = reg.GPIO('o', port, value)
			fpga.write(command)
			WaitForReady()
		except ValueError:
			print("Wrong input: going back to menu.")


	elif ( selection == '7' ): #scb list
		command = reg.SCB('l')
		fpga.write(command)
		WaitForReady(1)


	elif ( selection == '8' ): #scb read

		try:
			addr = input('Chip-address(Hex): ')
			command = reg.SCB('r', addr)
			fpga.write(command)
			WaitForReady(1)
		except ValueError:
			print("Wrong input: going back to menu.")


	elif ( selection == '9' ): #scb write

		try:
			addr = input('Chip-address(Hex): ')
			register = input('Which register(Hex): ')
			data = input('What data (Hex, 1byte): ')
			command = reg.SCB('w', addr, register, data)
			print("command: "+command)
			fpga.write(command)
			WaitForReady(1)
		except ValueError:
			print("Wrong input: going back to menu.")


	elif ( selection == '10' ): #stop

		running = 0
		fpga.write('End'+'\\'+'n')
		print '#Stopped'

	elif ( selection == '11' ): #kennlinie

		test.RadiationTest(fpga)

	elif (selection == '12'):

		operation_mode=input("Operation Mode: ")
		command = reg.OSZI(operation_mode)
		fpga.write(command)
		print command
		WaitForReady(1)

	elif (selection == '13'):
		addr = input("Chip address: ")
		adc = input("Which adc(0-7): ")
		value = test.SingleChipADC(adc, addr, fpga)
		print("Value of ADC"+adc+": "+str(value))

	elif (selection == '14'):
		addr = input("Chip address: ")
		register = input("Which register(0-12): ")
		value = test.SingleRegister(int(register),addr,fpga)
		print("Register "+register+" :"+value)


	elif selection == '15':
		for dac in range(8):
			command = reg.DAC(dac+1, 0)
			fpga.write( command )
			tmp = fpga.readline()
			WaitForReady()
			DAC_Values[dac]=0

		print "All DACs set to 0V."
		print "Bye bye."
		exit()
	else:
		print 'Not a valid command!'





fpga.close() #schließe serielle instanz
print 'Serial instance closed.'

