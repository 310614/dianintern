#!/bin/bash
n=$1
fac=1
while [ $n -gt 0 ]
do
fac=$((fac * n))
n=$((n - 1))
done
echo $fac
