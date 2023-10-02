#!/bin/bash

echo 'PS1="[$(date +%H:%M:%S)] ~ >"' >> ~/.bashrc
exec bash
cat ~/.bashrc

