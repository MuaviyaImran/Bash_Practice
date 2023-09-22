#!/bin/bash
echo $(
  ifconfig | 
  grep -E '[0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3}' | 
  grep -v 127.0.0.1 | 
  awk '{ print $2 }'
  ) 


