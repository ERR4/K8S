#!/bin/bash
file=$1
if [ "${file: -4}" == ".yml" ] || if [ "${file: -5}" == ".yaml" ]
then 
	echo "Yes!"
#	kubectl apply -f $file
else 
	echo "no!"
fi
