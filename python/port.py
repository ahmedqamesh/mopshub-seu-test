import datetime
from serial.tools import list_ports
from clint.textui import colored
import serial as se
from messages import *

##
# @file port.py
# @author Maximilian Caspar, Niklaus Lehmann
# University of Wuppertal, Department of Particle Physics, 2018
#
# Auxiliary file to help with identifying the serial port of the master
#

def get_controller_port(fid=-1,baudrate=921600):
	##
	# @return Serial port as string
	#
	# Provides the serial port of a connected master
	#

	if (fid != -1):
		status("Looking for FPGA {:d}".format(fid))
	else:
		status("Looking for FPGA")
	# expected version data
	edate = datetime.datetime(2019,2,8)
	# get all serial ports with a digilent device	
	ports = get_serial_port("0403:6010") # digilent usb serial port
	for p in ports:
		# for each serial device
		if (p.find("/dev/") == 0):
			# open the port and read the fpga firmware
			s = se.Serial(p, baudrate = baudrate, timeout = 0.5)
			# read the firmware version
			s.write("v\n")
			re = s.readline()
			debugmessage("{:s} (len {:d})".format(re, len(re)))
			while (re[:1] == '#'): # skip debug output
				re = s.readline()
			re = re.replace('\r','').replace('\n','')
			# skip usb device if answer is zero length
			if len(re) == 0:
				#s.close()
				continue
			# extract version date
			try:
				vdate = datetime.datetime.strptime(re,"seu test v%y.%m.%d")
			except ValueError: 
				warning("Found FPGA with wrong Software : {}".format(re))
				continue
			# check if firmware is new enough
			if ((vdate >= edate) and (fid == -1)):
				success("FPGA found on "+p, file="port.py")
				s.flush()
				s.close()
				return p
			elif (vdate >= edate):
				status("Port found on "+p, file="port.py")
				# get fpga id
				s.write("i\n")
				re = s.readline()
				while ((re[:1] == '#') or (re == 'Ready\r\n')):
					re = s.readline()
				fpgaid = int(re[3],16)
				if (fid == fpgaid):
					success("FPGA found on "+p, file="port.py")
					s.flush()
					s.close()
					return p
				else:
					warning("Found FPGA with ID {:d} instead of {:d}".format(fpgaid,fid))
			# close serial port of wrong fpga
			s.readline() # read Ready line
			s.flush()
			s.close()
	error("No controller found, please check that JP2 (CK_RST) is not set. Verify also FPGA ID. Expected HW version is v{:s} or newer".format(edate.strftime('%y.%m.%d')), file="port.py")


def get_serial_port(vid_pid):
	##
	# @return Array of compatible serial ports
	# @param vid_pid Vendor id, can be obtained via lsusb
	#
	# Provides all serial ports with vid_pid
	# Exits if no mathich port is found
	#

	list_ports.comports()
	temp = list(list_ports.grep(vid_pid))
	ports = []
	if(len(temp) == 0):
		error('No matching USB device (' + colored.blue(vid_pid) + ') found!. Please check if Arty board is connected.')
	else:
		status('Found {:d} possible USB deivces'.format(len(temp)))
		for n in range(len(temp)):
			print '\tUSB device ' + colored.blue(vid_pid) + ' found at ' + colored.yellow(temp[n][0]) 
			ports.append(temp[n][0])
	return ports


if __name__ == '__main__':
		get_controller_port()
