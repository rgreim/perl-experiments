#! /bin/bash

#Dieses Script rechnet einfache Aufgaben
while (true) 
do
Z1=$(($RANDOM % 100))
Z2=$(($RANDOM % 100))
Z3=$(($RANDOM % 2 ))
Z4=0

if ((Z3 == 0 ))
 	then
	echo "Was ergibt ${Z1} + ${Z2}?"
	read Z4
        echo "Das ist ..."
        sleep 2
	if (($Z4 == (($Z1 + $Z2))))
	then
		echo "... korrekt."
	else
		echo "... leider falsch."
	fi
else
	echo "Was ergibt ${Z1} - ${Z2}?"
	read Z4
	echo "Das ist ..."
	sleep 2
	if (($Z4 == (($Z1 - $Z2))))
	then
		echo "... korrekt."
	else
		echo "... leider falsch."
	fi
fi
done
