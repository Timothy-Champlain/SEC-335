#!/bin/bash

prefix=$1
server=$2

echo "dns resolution for $prefix"

for i in {1..254}; do
	nslookup $prefix.$i $server | grep "name"
done
