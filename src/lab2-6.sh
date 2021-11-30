#!/bin/sh
if [ ! -d $1 ];
then
  mkdir -p $1
fi
cd $1

for i in 0 1 2 3 4
do
  touch "file$i.txt"
done

tar cf $1.tar file0.txt file1.txt file2.txt file3.txt file4.txt
ls
mkdir $1
mv -i $1.tar $1

cd $1
tar xvf files.tar
