#!/bin/bash
#先判断是否有数字输入
if [ -n "$1" ];then
#若有数字输入，则进行阶乘计算
   n=$1
   fac=1
   while [ $n -gt 0 ]
   do
      fac=$((fac * n))
      n=$((n - 1))
   done
   echo $fac
#若没有数字输入，则按题中要求echo出下列语句
else
   echo "usage: jc.sh [n]"
   echo "calculates a number's factorial"
fi
