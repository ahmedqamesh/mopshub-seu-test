from clint.textui import colored

##
# @file messages.py
# @author Maximilian Caspar
# University of Wuppertal, Department of Particle Physics, 2017
#
# Representation of errors, warning, statuses and successes
#

def error(err, file=''):

	##
	# @param file File where the error was raised
	# @param err  Error message
	#
	# Generic error message. Terminates the program.
	#

	st = ''
	if file != st:
		st = " (" + colored.yellow(file) + ')'
	print colored.red("Error:   ") + err + st
	exit()

def fail(err, file=''):

	##
	# @param file File where the error was raised
	# @param err  Error message
	#
	# Generic error message.
	#

	st = ''
	if file != st:
		st = " (" + colored.yellow(file) + ')'
	print colored.red("Fail:   ") + err + st

def warning(war, file=''):

	##
	# @param file File where the warning was raised
	# @param war  Warning message
	#
	# Generic warning message
	#

	st = ''
	if file != st:
		st = " (" + colored.yellow(file) + ')'
	print colored.yellow('Warning: ') + war + st

def success(succ, file=''):

	##
	# @param file File where the success was raised
	# @param succ Success message.
	#
	# Generic success message
	#

	st = ''
	if file != st:
		st = " (" + colored.yellow(file) + ')'
	print colored.green('Success: ') + succ + st

def status(stat, file='', newline=True):

	##
	# @param file: File where the error was raised
	# @param stat: Status message
	# 
	# Generic status message
	#

	st = ''
	if file != st:
		st = " (" + colored.yellow(file) + ')'
	if newline:
		print colored.blue('Status:  ') + stat + st
	else:
		print (colored.blue('Status:  ') + stat + st),

def statuscolor(stat, file='', textcolor=0):

	##
	# @param file: File where the error was raised
	# @param stat: Status message
	# 
	# Generic status message
	#

	st = ''
	if file != st:
		st = " (" + colored.yellow(file) + ')'
	if textcolor == 0:
		print colored.blue('Status:	 ') + colored.magenta(stat) + st
	elif textcolor == 1:
		print colored.blue('Status:	 ') + colored.cyan(stat) + st
	elif textcolor == 2:
		print colored.blue('Status:	 ') + colored.yellow(stat) + st
	else:
		print (colored.blue('Status:	') + stat + st),

def debugmessage(stat, file=''):

	##
	# @param file: File where the error was raised
	# @param stat: Status message
	# 
	# Generic debug message
	#

	st = ''
	if file != st:
		st = " (" + colored.yellow(file) + ')'
	print colored.magenta('Debug:  ') + stat + st
