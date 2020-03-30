#!/bin/bash
tflint_vars=$1
input_variables_line_count=`grep -E "input.+=.+{" -A100 $tflint_vars |grep -E -m1 "^}$" -B 100 |wc -l`
tail=`echo "aasd"|awk "{print($input_variables_line_count-1)}"`
head=`echo "aasd"|awk "{print($input_variables_line_count-2)}"`
grep -E "input.+=.+{" -A100 $tflint_vars |grep -E -m1 "^}$" -B 100 |tail -n $tail|head -n $head


