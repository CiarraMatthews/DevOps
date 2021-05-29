#!/usr/bin/python
import os
import socket
import subprocess

def main():
	uname_info = os.uname()
	print(uname_info)

main()
	

#	sysinfo = subprocess.check_output("systeminfo")
#	print(sysinfo)

#if __name__ == '__main__':
#	main()

