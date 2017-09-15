#!/bin/bash

function findInArray() {
  local n=$#
  local value=${!n}
  for ((i=1;i < $#;i++)) {
    if [[ ${!i} == ${value}:* ]]; then
      echo "${!i}"
      return 0
    fi
  }
  echo
  return 1
}

list=( 10:1 11:2 12:3 36:Return 37:Control_L 38:a 39:s 134:Super_R 135:Menu )
clear
echo -e "${#list[@]} keys to test\n\n${list[@]}"
xev | \
awk -W interactive '/state 0x.*, keycode / { print $4; fflush() }' | \
while read keycode ; 
do
  found=$(findInArray "${list[@]}" ${keycode})
  if [[ $found ]]; then
    clear
    echo Pressed $found
    list=(${list[@]/$found/})
    remaining=${#list[@]}
    stdbuf -oL -eL echo -e "$remaining keys remaining\n\n${list[@]}"
    if [[ $remaining == 0 ]]; then
      clear
      echo All keys successfully tested!
      pkill xev
      exit 0
    fi
  fi
done
