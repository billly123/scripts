#!/bin/bash
for i in *.jpg;
do
	#Method below in comments is using bash command substitution operator
	#See Command Substitution in bash man page
	#Syntax ${Change_ in_ this_ variable/replace_component/replace with this} 
	#mv "$i" "${i/-}";
	#The command below uses sed output which is saved in newname
	#Syntax sed 's/replace_component/replace_with_this/global' (repeat replacement for all occurences
	newname=`echo "$i" |  sed 's/-//g'`;
	mv $i $newname
done
