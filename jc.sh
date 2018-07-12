#!/bin/bash
#编写运算阶乘的函数
factorial(){
   local n=$1
   if [ $n -eq 0 ];then
      let fac=1
   else
      factorial `expr $n - 1`
      let fac=$n*$fac
   fi
}
if [ -n "$1" ];then
#若有数字输入，则进行阶乘计算
   factorial $1
   echo $fac
#若没有数字输入，则按题中要求echo出下列语句
else
   echo "usage: jc.sh [n]"
   echo "calculates a number's factorial"
fi
