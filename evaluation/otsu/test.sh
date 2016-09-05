#!/bin/bash

INPUTDIR="../../dataset"
OUTPUT1DIR="./output1"  #输出灰度图
OUTPUT2DIR="./output2"  #输出大津法二值化图像
EXE1="./Otsu"

INPUTLIST=$(ls $INPUTDIR)

for INPUTIMAGE in $INPUTLIST
do

   $EXE1 -i $INPUTDIR/$INPUTIMAGE -o1 $OUTPUT1DIR/$INPUTIMAGE -o2 $OUTPUT2DIR/$INPUTIMAGE

done
