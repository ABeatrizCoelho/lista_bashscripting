#!/usr/bin/bash

contador=0

for i in $(seq 0 2 100); do
  printf "%3d " "$i"
  contador=$((contador + 1))

  if [ $((contador % 10)) -eq 0 ]; then
    echo
  fi
done


if [ $((contador % 10)) -ne 0 ]; then
  echo
fi