#!/bin/bash
files=".bash_aliases .bash_completion .bashrc .git-prompt.sh"

for file in $files
do
	eval file="~/$file"
	if [ -e $file ]; then
		mv "$file" "$file.bkp"
	fi

	wget "https://raw.githubusercontent.com/bobey/dot-files/master/$file"
done
