#!/bin/bash

options="⏻ Shutdown\n Reboot\n Suspend\n Logout\n Lock"
selected=$(echo -e "$options" | wofi --show dmenu --prompt "Select the desired mode")

case "$selected" in
"⏻ Shutdown")
  systemctl poweroff
  ;;
" Reboot")
  systemctl reboot
  ;;
" Suspend")
  systemctl suspend
  ;;
" Logout")
  hyprctl dispatch exit
  ;;
" Lock")
  hyprlock
  ;;
esac
