#!/bin/sh
cd $LFS/sources
for i in `ls`
do
	if [[ -d $i ]];then        
		rm -rf $i         
	fi
done
