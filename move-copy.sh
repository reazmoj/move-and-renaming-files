#!/bin/bash
# move and copy classfication dataset

: ' script for change multiple files name ((Amazing :)))
a=1
for i in /home/reazmoj/Documents/test/*.txt; do
  new=$(printf "%s.txt" "test$a")
  mv -i -- "$i" "/home/reazmoj/Documents/test/$new"
  let a=a+1
done 
'
# script for move files to seprate folders and so on ...

subFolders=("0" "1" "2" "3" "4" "5" "6" "7" "8" "9" "A" "B" "D" "Gh" "H" "J" "L" "M" "N" "P" "PuV" "PwD" "Sad" "Sin" "Ta" "Taxi" "V" "Y");

for i in ${subFolders[@]};
do
	for j in {1..500}
	do
		mv /home/reazmoj/Documents/machine-learning/one-vs-all-Multiclass-classifcation/Iranis-dataset/Iranis-Dataset/$i/$i\ \($j\).jpg /home/reazmoj/Documents/machine-learning/one-vs-all-Multiclass-classifcation/Iranis-dataset/dataset/test/$i 
	done 

	for j in {501..2100}
	do
		mv /home/reazmoj/Documents/machine-learning/one-vs-all-Multiclass-classifcation/Iranis-dataset/Iranis-Dataset/$i/$i\ \($j\).jpg /home/reazmoj/Documents/machine-learning/one-vs-all-Multiclass-classifcation/Iranis-dataset/dataset/train/$i 
	done 

	for j in {2101..2500}
	do
		mv /home/reazmoj/Documents/machine-learning/one-vs-all-Multiclass-classifcation/Iranis-dataset/Iranis-Dataset/$i/$i\ \($j\).jpg /home/reazmoj/Documents/machine-learning/one-vs-all-Multiclass-classifcation/Iranis-dataset/dataset/validation/$i 
	done 

done