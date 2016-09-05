#!/bin/bash

INPUTDIR="./input"
OUTPUTDIR="./output"
EXE="./groundtruth"

INPUTLIST=$(ls $INPUTDIR)

for INPUTIMAGE in $INPUTLIST
do
   $EXE -i $INPUTDIR/$INPUTIMAGE -o $OUTPUTDIR/$INPUTIMAGE
done
