#!/bin/bash

PATH=$PATH:/remux

ubv=$1
audio=$2

if [ "$audio" = "-with-audio" ] ; then
	includeaud="-with-audio";
else
	if [ -z "${audio}" ]; then
		includeaud="";
	else
		echo "Issue parsing argument.  After your input directory or file, specify -with-audio to include audio remux, otherwise, leave empty.";
		exit 1
	fi
fi

if [ -d "${ubv}" ] ; then
	for f in $1/*.ubv; do
		remux-amd64 $includeaud $f -output-folder SRC-FOLDER;
	done
else
	if [ -f "${ubv}" ] ; then
		remux-amd64 $includeaud $ubv -output-folder SRC-FOLDER;
	else
		echo "Issue parsing input";
		exit 1
	fi
fi
