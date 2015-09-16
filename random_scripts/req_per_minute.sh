#!/bin/sh

filename=$1

awk '{print }' ${filename} | cut -d: -f2-3 | uniq -c
