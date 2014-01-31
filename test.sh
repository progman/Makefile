#!/bin/bash

export LD_LIBRARY_PATH=./bin/:${LD_LIBRARY_PATH};

cd bin;

OUT="$(./exe)";

if [ $(echo "${OUT}" | head -n 1) != "dll_f()" ] || [ $(echo "${OUT}" | tail -n 1) != "lib_f()" ];
then
	echo "ERROR: strange output";
	exit 1;
fi

echo "ok, test passed";
exit 0;
