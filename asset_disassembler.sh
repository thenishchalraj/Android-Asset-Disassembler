#!/bin/bash
# Created by thenishchalraj

# rename the file names before moving
# 1st arg -> where unzipped file is
# 2nd arg -> zip name without zip extension
# 3rd arg -> rename of the file
# 4th arg -> where we need to move it to

help(){
	echo "_________________________________________________________________________"
	echo "| USAGE OPTIONS                                                         |"
	echo "|_______________________________________________________________________|"
	echo
	echo "-h			show help options"
	echo
	echo "1st arg -> where unzipped file is"
	echo "2nd arg -> zip name without zip extension"
	echo "3rd arg -> rename of the file"
	echo "4th arg -> where we need to move it to"
	echo
	echo
	echo "Usage example:"
	echo "./asset_disassembler.sh -h"
	echo "---> displays (this) usage"
	echo
	echo "./asset_disassembler.sh /source_path/ temporary_file_name rename_name /destination_path/"
	echo "---> disassembles the file from source path and moves to the destination"
	echo
}

if [[ "$1" == "-h" ]]
        then
                help
                exit 0
fi

cd $1
echo "Creating temporary folder..."
mkdir $2
echo "Moving zip to $2..."
mv $2.zip $2/
echo "Unzipping..."
cd $2/
unzip $2.zip
echo "Deleting zip..."
rm -rf $2.zip
echo "Moving new files to destination..."
for FILE in *; do cd $FILE/; mv * $3; mv * $4$FILE/; cd ..; done
echo "Deleting temporary folder..."
rm -rf $1$2
echo "Disassembly done!"
