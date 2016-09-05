#!/bin/bash

OTSURESULTS='../results_otsu.txt'
WATERSHEDRESULTS='../results_watershed.txt'
EXE="./meanF"
touch results_mean.txt
MEANRESULTS='./results_mean.txt'

$EXE $OTSURESULTS $MEANRESULTS
$EXE $WATERSHEDRESULTS $MEANRESULTS

