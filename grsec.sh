#!/bin/bash
SRC=/usr/src/
KRNLNK=`wget https://www.kernel.org/pub/linux/kernel/v3.x/linux-3.14.15.tar.xz`
GRLNK=`wget https://grsecurity.net/stable/grsecurity-3.0-3.14.15-201408010644.patch` 

cd $SRC
$KRNLNK -O - | tar -xf | cd linuxdir

patch -p1 < ../grsec

make menuconfig 	


