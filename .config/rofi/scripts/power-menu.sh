#!/bin/bash

rofi_command="rofi -theme themes/power-menu.rasi"

### Options ###
power_off=""
reboot=""
lock=""
suspend=""
log_out=""
# Variable passed to rofi
options="$power_off\n$reboot\n$lock\n$suspend\n$log_out"

chosen="$(echo -e "$options" | $rofi_command -dmenu -selected-row 2 -p Power)"
case $chosen in
    $power_off) promptmenu \
                  --yes-command "systemctl poweroff" \
                  --query "Shut down?";;
    
    $reboot) promptmenu \
               --yes-command "systemctl reboot" \
               --query "Reboot?";;
    $lock) $HOME/.config/misc/lock.sh;;
    $log_out) i3-msg exit;;
    $suspend) promptmenu \
               --yes-command "mpc -q pause && amixer set Master mute && systemctl suspend" \
               --query "Suspend?";;
esac
