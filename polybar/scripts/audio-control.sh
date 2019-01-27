#!/bin/bash

if [ $(pulsemixer --get-mute) = "0" ]
then 
    echo "%{T3}%{T-} 墳"
else 
    echo "%{T3}%{T-} 婢"
fi