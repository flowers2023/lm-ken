#!/bin/bash

#########################################################################
# Function: 
# Author: DRUNK
# mail: shuangfu.zhang@xiaoi.com
# Created Time: Fri 19 Jan 2018 05:21:26 PM
#########################################################################

echo "start train model"
./kenlm/bin/lmplz -o 5 --skip_symbols "<unk>" < ./txt/all.txt.parse > model/contract.arpa 
echo "lm model train finished.[model/contract.arpa]"
