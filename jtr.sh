#!/bin/bash

if [ "$1" == "" ]
then
echo "Syntax Error"
else
zip2john $1 > hash.txt
john hash.txt > password.txt
clear
echo "Password:"
cat password.txt |grep ".zip" | awk '{print $1}'
rm hash.txt
rm password.txt
fi
