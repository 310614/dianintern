#题目：自动根据后缀名解压文件
#!/bin/bash
#第一个参数为文件名，第二个参数为目标目录
filename=$1
destination=$2
type="${filename##*.}"
#若不存在第一个参数
if [ -z $filename ];then
   echo "usage: 2.self_compression.sh [--list] or [Source compressed file] [Destination path]"
   echo "Self compression according to the file name suffix"
#若第一个参数为--list
elif [ $filename = "--list" ];then
   echo "Supported file types: zip tar tar.gz tar.bz2"
#根据文件类型用不同的语句解压
elif [[ -n $filename && -n $destination ]];then
   case $type in
      "zip")
           unzip $filename -d $destination;;
      "tar")
           tar -xf $filename -C $destination;;
      "gz")
           tar -xzvf $filename -C $destination;;
      "bz2")
           tar -xjvf $filename -C $destination;;
      *)
           echo "This type can not be compressed";;
   esac
fi
