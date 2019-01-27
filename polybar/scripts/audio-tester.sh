#! /bin/bash

if (( $(pulsemixer --get-volume | cut -d " " -f 1) >= $1 ))
then
    echo ""
else 
    echo ""
fi