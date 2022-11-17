#!/bin/bash

host $1 | grep -E -o "(25[0-5]|2[0-4][0-9]|[01]?[0-9][0-9]?)\.(25[0-5]|2[0-4][0-9]|[01]?[0-9][0-9]?)\.(25[0-5]|2[0-4][0-9]|[01]?[0-9][0-9]?)\.(25[0-5]|2[0-4][0-9]|[01]?[0-9][0-9]?)"
#first we read the domain as a command line argument and pass it to the host tool
#we the find all the IP addresses (with regex) in the "host" result and output only them to the console so that we can save the IPs

if [ -z "$1" ]; then
	echo "no domain has been provided"
	echo "usage : ./recon.sh domain.com"
	exit
fi
#in case the user does not put in the right input, we show them how to use the tool correctly 
