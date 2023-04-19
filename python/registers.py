# coding: utf8

    #Auswahl des Slaves: Nummern sind bestimmt durch Eagle-Design.
    #Slave = 1: IC1 (ADC): Supply und Bypass
    #Slave = 2: IC2 (ADC): Regulator und Comparator Stuff
    #Slave = 3: IC10 (ADC): Unbelegt
    #Slave = 4: IC3 (DAC): Supply und Bypass
    #Slave = 5: IC5 (DAC): ADC und VMOD
    #Slave = 6: IC6 (DAC): VTEMP und Bypass
    #Slave = 7: IC9 (DAC): Unbelegt

    #Auswahl des ADC/DAC-kanals:
    #DAC-Kanal A    channel = 1 
    #DAC-Kanal B     channel = 2
    #Ansonsten ADC-Kanal mit: Kanal 1: channel = 1 etc.

def ADC(Slave, Channel):

    reg = 'a '

    if ( 1 <= Slave <= 3 ):
        reg = reg + format(Slave, '0x') 
    else:
        print('This slave is no ADC! Slave set to 1!')
        reg = reg + format(1, '0x') 
        

    if ( 1 <= Channel <= 8 ):
        reg = reg + format(Channel, '0x')
    else:
        print('Wrong channel: ADC! Channel set to 1!')
        reg = reg + format(1, '0x')
    return reg+'\n'

#value in mV
def DAC(Channel, Value = 0):

   reg = 'd '
   
   if Channel==1 or Channel==2: Slave=4
   elif Channel==3 or Channel==4: Slave=5
   elif Channel==5 or Channel==6: Slave=6
   elif Channel==7 or Channel==8: Slave=7
   
   if Channel==4:
        if Value>2400:
            print 'Vmod is should not be over 2.4V! Vmod set to 2.4V!'
            value = 2400
   if ( 7 >= Slave >=4 ):
      reg = reg + format(Slave, '0x')
   else:
      print('This slave is no DAC! Slave set to 4!')
      reg = reg + format(4, '0x')
   
   Channel=Channel % 2
   if ( Channel == 1):
       reg = reg + '1'
   else:
       reg = reg + '2'

   if ( 0 <= Value <= 2500 ):
       reg = reg + ' '
       if ( Value >= 1000 ): 
         reg = reg + str(Value)
       elif ( Value >= 100 ):
         reg = reg + '0' + str(Value)
       elif ( Value >= 10 ):
         reg = reg + '00' + str(Value)
       else:
         reg = reg + '000' + str(Value)
   else:
       reg = reg + ' ' + '0000'
       
       print('DAC-Value not withing limits. Value set to 0!')
      
   return reg+'\n'

def DAC_off():
	return 'd off\n'

def GPIO(direction, port=1, value=0):
    reg = 'g '
    inv_value=value^1 #to invert the signal 
    if ( direction == 'o' ):
        reg = reg + 'o '
        if ( port == 1 or port == 2):
            reg = reg + str(port)
        else:
            print('GPIO: Wrong port for output. Port set to 1!')
            reg = reg + '1'

        if ( value == 0 or value == 1 ):
            reg = reg + str(inv_value)
        else:
            print('GPIO: Not a valid Value. Value set to 0.')
            reg = reg + '1' #1 Is correct since the Values are inverted

    elif ( direction == 'i' ):
        reg = reg + 'i'
    else:
        print('GPIO: Not a valid direction. Direction set to input (read)!')
        reg = reg + 'i'

    
    return reg + '\n'
    
def OSZI(operation_mode):
    reg = 'o '

    if(int(operation_mode)>3 or int(operation_mode)<0):
        print("only 4 operation modes available. All Pins set to ground.")
        reg = reg + '0'
    else:
        reg = reg + operation_mode
        print("Multiplexer mode set %c \n" % operation_mode);
    return reg + '\n'

def SCB(Mode, addr='0' , register='0', data='0'):
    reg = 's '

    if (  Mode == 'l' ): #list chips
        reg = reg + Mode + ' '

    elif ( Mode == 'r' ): #read data
        reg = reg + Mode + ' '
        if ( 0 <= int(addr, 16) <= 15 ):
            reg = reg + addr
        else:
            reg = reg + '0'
            print('Incorrect Chip-Address in read-mode. Address set to 0')

    elif ( Mode == 'w'): #write data
        reg = reg + Mode + ' '
        if ( 0 <= int(addr, 16) <= 15 ):
            reg = reg + addr + ' '
        else:
            reg = reg + '0' + ' '
            print('Incorrect Chip-Address in write-mode. Address set to 0')

        if ( 0 <= int(register, 16) <= 15 ):
            reg = reg + register + ' '
        else:
            reg = reg + '7' + ' '     #Register 7 ist ADC-Mux. wenn dort geschrieben wird verändert sich zwar der inhalt der adc register,
                                    #aber es wird nichts kaputt gemacht!
            print('Incorrect register in write-mode. Register set to 7')

        if ( 0 <= int(data, 16) <= 255 ):
            reg = reg + data
        else:
            reg = reg + '00' 
            print('Incorrect data in write-mode. Data set to 00')

    return reg+'\n'

def cmd_shift(Mode='0', register='0', data='0'):
    reg = 'S'

    if (  Mode == 'c' ): #clear SEU fifo and counters\r\n
        reg = reg + Mode + ' '

    elif ( Mode == 'r' ): #read data
        reg = reg + Mode + ' '
        if ( 7 <= int(register, 16) <= 14 ):    #welche Register möglich?
            reg = reg + register + ' '
        else:
            reg = reg + '7' + ' '     
            print('Incorrect register in read-mode. Register set to 7')

    elif ( Mode == 'w'): #write data
        reg = reg + Mode + ' '
        if ( 7 <= int(register, 16) <= 14 ):   #welche Register möglich?
            reg = reg + register + ' '
        else:
            reg = reg + '7' + ' '     #Register 7 ist ADC-Mux. wenn dort geschrieben wird verändert sich zwar der inhalt der adc register,
                                    #aber es wird nichts kaputt gemacht!
            print('Incorrect register in write-mode. Register set to 7')

        if ( 0 <= int(data, 16) <= 4294967295 ):      #noch nicht angepasst
            reg = reg + data
        else:
            reg = reg + '00000000' 
            print('Incorrect data in write-mode. Data set to 00000000')

    elif ( Mode == '0'):
      if ( 0 <= int(data, 16) <= 4294967295 ):      #noch nicht angepasst
            reg = reg + data
      else:
            reg = reg + '00000000' 
            print('Incorrect data. Data set to 00000000')

    elif ( Mode == 'f'):
      reg = reg + Mode + ' '
      if ( 0 <= int(data, 10) <= 10E6 ):      
            reg = reg + data
      else:
            reg = reg + '200000'                 
            print('Incorrect data in write-mode. Data set to 200k')

    elif ( Mode == 'o'):
      ref = reg + Mode + ' '

    elif ( Mode == 'p'):
      ref = reg + Mode + ' '

    return reg+'\n'


def SCB_ADC(chip, channel):
	# write command to read ADC channel from PSPP
	return "s A {:x} {:x}\n".format(chip,channel)


if __name__ == '__main__':
    port = int(raw_input('Which port? (1 or 2): '))
    value = int(raw_input('Which value? (1,0): ')) 
    command = GPIO('o', port, value)
    print command

    
