#!/bin/bash

# Execucao do programa
id()
{
	while ((1))
	do
		clear
		echo -e "\033[01;34m\n  ----- Execucao ----- \n\033[01;37m"
		
		echo -n -e "\033[01;32m  # Hash: \033[01;37m"
		read hash

		# Comando
		clear && hashid $hash && echo "" && read -p "<< ENTER >>"
	done
}

# Instalacao do programa
identifier()
{
	clear
	hash-identifier
}

clear
echo -e "\033[01;34m -------------- \033[01;37m"
echo -e "\033[01;35m     Verify     \033[01;37m"
echo -e "\033[01;34m -------------- \033[01;37m"
echo ""
echo -e "\033[01;33m [1] ID 	    \033[01;37m"
echo -e "\033[01;34m [2] Identifier \033[01;37m"
echo ""
echo -e -n "\033[01;36m # Opc: \033[01;37m"
read opc
clear

# Estrutura de escolha
case $opc in

1)	id;;
2)	identifier;;
*)	;;

esac
