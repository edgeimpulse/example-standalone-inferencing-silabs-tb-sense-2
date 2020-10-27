#!/bin/bash
COMMAND=$1

	cd GNU\ ARM\ v7.2.1\ -\ Default/

if [ "$COMMAND" = "--build" ];
then
	echo "Building project"
	make -j8 all
elif [ "$COMMAND" = "--flash" ];
then
	echo "Flashing device"
	JLinkExe -CommandFile ../CommandFile.jlink
elif [ "$COMMAND" = "--clean" ];
then
	echo "Cleaning project"
	make -j8 clean
else
	echo "Nothing to do for target"
fi

	cd ..