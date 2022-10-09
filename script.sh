#!/bin/bash
if [ "${steps.abc.outputs.added: -4}" == ".yml" ] || if [ "${steps.abc.outputs.added: -5}" == ".yaml" ]
then 
	echo "Yes! 
	"kubectl apply -f "${{ steps.abc.outputs.added }}"
else 
	echo "no!"
fi
