#!/bin/bash


if [ "$#" -ne 1 ]; then
	echo "This is a script to generate a news."
    echo " You need to enter a title as argument of the command. E.g., ./add_news.sh \"new PC member\""
    exit
fi

FILENAME=`date "+%Y-%m-%d"`-"$1".md
touch "$FILENAME"
emacs "$FILENAME"
git add "$FILENAME"



