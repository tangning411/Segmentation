#!/bin/bash

INPUTDIR="../output2"
OUTPUTDIR="./output"
EXE="./Negatives"

INPUTLIST=$(ls $INPUTDIR)

for INPUTIMAGE in $INPUTLIST
do
   $EXE -i $INPUTDIR/$INPUTIMAGE -o $OUTPUTDIR/$INPUTIMAGE
done
