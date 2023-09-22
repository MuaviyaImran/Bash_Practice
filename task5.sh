#!/bin/bash

str=$1
_totalWords="$#"
_totalCharacters=0

for param in "$@"; do
    length=$(expr length "$param")
    _totalCharacters=$((_totalCharacters + length))
done

_length=$(( $_totalCharacters + 4 + $(($_totalWords-1)) ))

stars=""
while [ $_length -gt 0 ]; do
  stars="${stars}*"
  _length=$(($_length - 1))
done
echo "$stars"
echo "*" $@ "*"
echo "$stars"



