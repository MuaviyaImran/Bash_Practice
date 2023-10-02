#!/bin/bash

_str=$2
_char=$3

_length=$(( ${#2} + 4  ))

if [ ${_char} == '-c' ]; then
   _stars=""
   _sign=$4
   while [ $_length -gt 0 ]; do
      _stars="${_stars}$_sign"
      _length=$(($_length - 1))
   done
   
   echo "$_stars"
   echo "$_sign" $_str "$_sign"
   echo "$_stars"
   
else
   echo $_str
fi


