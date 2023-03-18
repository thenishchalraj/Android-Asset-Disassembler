#!/bin/bash
# Created by thenishchalraj

# rename the file names before moving
# 1st arg -> where unzipped file is
# 2nd arg -> where we need to move it to

cd $1

for FILE in *; do cd $FILE/; mv * $2/$FILE/;cd ..; done

rm -rf $1
rm -rf $1.zip
