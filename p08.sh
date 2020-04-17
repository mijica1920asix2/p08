#!/bin/bash
#
clear
if (( EUID != 0 ))
then
	zenity --error --text="Aquest script s'ha d'executar amb privilegis de l'usuari root" --width=400
	exit 1  #Finalització del script si l'usuari que l'executa no té privilegis de root. L'enunciat no diu res i he escollit sortir amb un codi de retorn igual a 1
fi
##########################################################################################
#
###FORMULARI
servei=$(zenity --forms --title="Nom del servei" --text="Nom del servei" )
servei=$(echo $servei | cut -d '|' -f 1)

#then
	zenity --question --text="Vols fer executable el fitxer $file"
	if [[ $? == 0 ]]
	then 
		chmod a+x $file
	fi
fi
exit 0
