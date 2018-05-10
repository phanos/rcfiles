#!/bin/bash
ls $HOME
for f in .vimrc .screenrc .taskrc; do
	if [ -e $HOME/$f ]; then
		echo skipping $f, already exists
	else
		echo linking $f
		ln -s $HOME/rcfiles/$f $HOME/$f
	fi
done
