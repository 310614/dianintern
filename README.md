# dianintern
## 任务一：递归阶乘：
------
### 设计思路：
  1.首先编写一个factorial函数来进行阶乘的运算。<br>
  2.再根据是否有输入写两个if分支，分别对应一种情况。<br>
  3.若不存在参数则打印usage部分。<br>
  4.若存在参数则递归调用factorial函数，并echo递归的最后结果。<br>
### 结果展示：
![image](https://github.com/310614/dianintern/blob/master/jc.png)
  
  
## 任务二：自动根据后缀名解压文件：
### 设计思路：
  1.首先考虑到脚本需要有两个输入：filename和destination。
  2.再根据这两个参数的情况写三个if分支，分别对应一种情况。
  3.若不存在第一个参数，则打印usage部分。
  4.若第一个参数为--list，则打印对应语句。
  5.若两个参数都存在，则根据文件的类型type来分别调用不同的语句进行解压。
