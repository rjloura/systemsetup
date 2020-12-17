#!/bin/bash

function usage {
    echo "chargethreshold [enable|disable]"
    exit 1
}

[[ $# -ne 1 ]] && usage

if [[ "$1" == "enable" ]]; then
    echo "40" | sudo tee /sys/class/power_supply/BAT0/charge_control_start_threshold
    echo "80" | sudo tee /sys/class/power_supply/BAT0/charge_control_end_threshold
elif [[ "$1" == "disable" ]]; then
    echo "0" | sudo tee /sys/class/power_supply/BAT0/charge_control_start_threshold
    echo "100" | sudo tee /sys/class/power_supply/BAT0/charge_control_end_threshold
else
    usage
fi

echo "start: $(cat /sys/class/power_supply/BAT0/charge_control_start_threshold)"
echo "end: $(cat /sys/class/power_supply/BAT0/charge_control_end_threshold)"
