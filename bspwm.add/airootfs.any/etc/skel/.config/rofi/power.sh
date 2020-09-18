#!/usr/bin/env bash
# ---------------------------------------------
#  Alter Linux bspwm edition
#  show power menu script for rofi
#
#  Watasuke
#  Twitter: @Watasuke102
#  Email  : Watasuke102@gmail.com
#
#  (c) 2020 Fascode Network.
# ---------------------------------------------

declare -A menu_list=(
  ["Cancel"]=""
  ["Shutdown"]="systemctl poweroff"
  ["Reboot"]="systemctl reboot"
  ["Suspend"]="systemctl suspend"
  ["Lock Screen"]="slock"
  ["Logout"]="bspwm quit"
)


function main() {
  local -r IFS=$'\n'
  [[ $# -ne 0 ]] && eval "${menu_list[$1]}" || echo "${!menu_list[*]}"
}

main $@
