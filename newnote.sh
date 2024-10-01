#!/bin/bash

input=$1

for file in ./*; do
  if [ "${file:2:1}" = "${input:0:1}" ]; then
    for subdir in ./"${file}"/*; do
      echo "${subdir}"
    done
  fi
done
