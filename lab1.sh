#!/bin/bash

echo "Автор Мызгин Константин, группа 720-1"
echo "Этот скрипт выводит информацию о файле"

while true;
do
read -p "Write file name: " filename
if [ ! -f $filename ];
then
echo "Error! This file not found" >&2
else
echo "file info"
echo "-------------"
echo "File name: $filename"
echo "File type: ${filename##*.}"
echo "File size: $(stat -c %s $filename) bytes"
echo "File owner $(stat -c %U $filename)"
echo "Access rights: $(stat -c %A $filename)"
echo "Date of create file: $(stat -c %y $filename)"
fi
echo "-------------------"
read -p "Хотите продолжить работу? (y/n): " choise
if [ "$choise" != "y" ] ; then
exit 0
fi
done
exit 1