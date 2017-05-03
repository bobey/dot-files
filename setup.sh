#!/bin/bash
files=".bash_aliases .bash_completion .bashrc .git-prompt.sh .screenrc"

for file in $files
do
	eval homeFile="~/$file"
	if [ -e $homeFile ]; then
		mv "$homeFile" "$homeFile.bkp"
	fi

	wget --no-check-certificate "https://raw.githubusercontent.com/bobey/dot-files/master/$file" -O $homeFile -q
done
