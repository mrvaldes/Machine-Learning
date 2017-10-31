#!/bin/bash
echo "get hashes from ${1}, ids ${2} to ${3}"

for i in $(seq $2 $3)
do
	enc=`curl "${1}" --compressed --data "=${i}"`
	echo "$i;$enc"
done
