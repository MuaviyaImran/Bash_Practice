#!/bin/bash

search_Func() {

  local current_dir="$1"
  local _fileName="$2"

  for _item in "$current_dir"/*; do
    
    echo $_item
    if [ -d "$_item" ]; then
      
      search_Func "$_item" "$_fileName"
    
    elif [ -f "$_item" ]; then
    
      if  [[ $_item == *"$_fileName".* ]]; then
      
        echo "Found: $_item"
        exit 1
      
      else
        echo "File" $_fileName "Not Found"
      
      fi
    fi
    
  done
}

if [ "$#" -ne 2 ]; then
  echo "Usage: $0 <search_file> <from_folder>"
  exit 1
fi

_fileName="$1"
_folderName="$2"

if [ ! -d "$_folderName" ]; then
  echo "Error: Folder $_folderName does not exist."
  exit 1
fi

search_Func "$_folderName" "$_fileName"
