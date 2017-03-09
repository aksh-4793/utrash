#!/bin/bash
# rm -rf is dangerous
# so let's start trashing

# help function
help() {

	echo "Usage 1: utrash <filename>"
	echo "Usage 2: utrash <foldername>"

}

if [ $# -ne 1 ]
then
	help
	exit 1
fi

target=$1

mkdir -p ~/.utrash

mv $target ~/.utrash
