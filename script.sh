#!/bin/bash
file=$1
if [ ${file: -4} == ".yml" ] || [ ${file: -5} == '.yaml' ]
then 
	echo "Yes!" ;
	echo "kubectl apply -f $file";
else 
	echo "no!";
fi
