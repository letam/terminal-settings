#!/bin/bash
# List the files in the directories in .vim (non-recursive)
for i in `ls -F ~/.vim` ; do
  echo "~/.vim/$i"
  for j in `ls -F .vim/$i` ; do
    echo "  $j"
  done
done
