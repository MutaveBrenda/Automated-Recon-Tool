#!/bin/bash

host $1 | grep -E -o "(25[0-5]|2[0-4][0-9]|[01]?[0-9][0-9]?)\.(25[0-5]|2[0-4][0-9]|[01]?[0-9][0-9]?)\.(25[0-5]|2[0-4][0-9]|[01]?[0-9][0-9]?)\.(25[0-5]|2[0-4][0-9]|[01]?[0-9][0-9]?)"
#first we read the domain as a command line argument and pass it to the host tool
#we the find all the IP addresses (with regex) in the "host" result and output only them to the console so that we can save the IPs

HELP()
{
	echo "Automated recon script for Bug Bounty by MutaveChara"
	echo "Syntax: recon.sh [-h|v|V] <targetdomain.com>"
	echo "options:"
	echo "h  Print this Help."
	echo "v  Verbose mode."
	echo "V  Print software version and exit."
}

if [ -z "$1" ]; then
	HELP
	exit
fi
#added a HELP() function in case the user does not put in the right input, we show them how to use the tool correctly 
