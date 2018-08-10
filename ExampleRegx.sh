#!/bin/bash

USAGE="Usage: bash ExampleRegx.sh <<IP_ADDRESSS>>"

if [ $# -ne 1 ]; then
	echo $USAGE
	exit 1
fi

regex="\b([0-9]{1,3}\.){3}[0-9]{1,3}\b"

if [[ $1 =~ $regex ]] 
then
	cat apache.log | grep $1
	if [ $? -ne 0 ]
	then
		echo "IP address is not found"
	fi
else
	echo "Formato is not valid"
fi


