#!/bin/bash


# if [ "$#" -ne 1 ]; then
# 	echo "This is a script to generate a news."
#     echo "You need to enter a title as argument of the command. E.g., ./add_news.sh \"NewPCMember\""
#     echo "The argument is used as a filename."
#     exit
# fi

FILENAME=`date "+%Y-%m-%d"`.md
touch "$FILENAME"
echo "--- 
layout: post 
date: " `date "+%Y-%m-%d"` >> "$FILENAME"
echo "inline: true
---
" >> "$FILENAME"

#emacs "$FILENAME"
vi "$FILENAME"
git add "$FILENAME"
git commit -m "added news" && git push



