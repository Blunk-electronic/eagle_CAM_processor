#! /bin/bash

binary=mkcam

# default target directory:
target_dir=$HOME/bin

if [ "$#" -eq 1 ]; then
	# overwrite target_dir if explicitely specified by user:
	target_dir=$1
	echo "installing in user specified target directory:" $target_dir
	
	if [ -e "$target_dir" ]; then
		cp $binary $target_dir
	else
		echo "ERROR: Target directory $target_dir does not exist !"
		exit 1
	fi
	
else
	echo "installing in target directory:" $target_dir
	cp $binary $target_dir
fi


