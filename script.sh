#!/bin/bash
tflint_vars=./terragrunt.hcl
prototypes_folder=`cat $tflint_vars|grep source |sed 's| ||g'|sed 's|prototypes/| |' |awk '{print $2}' |sed 's|"||'`
input_variables_line_count=`grep -E "input.+=.+{" -A100 $tflint_vars |grep -E -m1 "^}$" -B 100 |wc -l`
tail=`echo "aasd"|awk "{print($input_variables_line_count-1)}"`
head=`echo "aasd"|awk "{print($input_variables_line_count-2)}"`
inputs=`grep -E "input.+=.+{" -A100 $tflint_vars |grep -E -m1 "^}$" -B 100 |tail -n $tail|head -n $head`

echo $inputs > ../../prototypes/$prototypes_folder/tflint.tfvars
