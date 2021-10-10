#!/bin/bash

# Configuracao do tipo de Hash a ser decodificado
# 0     -> MD5
# 22000 -> WPA-PBKDF2-PMKID+EAPOL 
hashType=22000			    # USER CHANGE

# Apresentacao
apresentacao()
{
	clear
	printf "     \e[1;92m.-\"\"\"\"-. \e[0m\n"
	printf "    \e[1;92m/        \ \e[0m\n"
	printf " \e[1;77m  \e[0m\e[1;92m/_        _\ \e[0m\n"
	printf "\e[1;77m  \e[0m\e[1;92m// \      / \\ \e[0m\n"
	printf "\e[1;77m  \e[0m\e[1;92m|\__\    /__/ \e[0m\n"
	printf "\e[1;77m  \e[0m\e[1;92m\    ||    / \e[0m\n"
	printf "\e[1;77m   \e[0m\e[1;92m\        / \e[0m\n"
	printf "\e[1;92m \e[0m   \e[1;92m\  __  / \e[0m\n"
	printf "     \e[1;92m'.__.' \e[0m\n\n"
 
	echo -e "\033[01;33m ################################### \033[01;37m"
	echo -e "\033[01;32m  Desenvolvido por DarProgrammer000	 \033[01;37m"
	echo -e "\033[31;5m  Black Hat DarkProgrammer000 	 \033[0m"
	echo -e "\033[01;33m ################################### \033[01;37m\n"
	
	echo -e "\033[01;34m ----------------- 	 		  	       \033[01;37m"
	echo -e "\033[01;35m      HashCat   			   	       \033[01;37m"
	echo -e "\033[01;34m -----------------				       \033[01;37m"
	echo -e "\033[01;32m # Pasta 'sessions': /root/.hashcat/sessions       \033[01;37m"	
	echo -e -n "\033[01;34m # Converter HandShake para o padrao HashCat -> \033[01;37m"
	echo -e "\033[01;35mhttps://hashcat.net/cap2hashcat/ 		       \033[01;37m"
	echo ""
}

####################################
#        METODOS PRINCIPAIS        #
####################################

# Brute Force
1()
{	
	clear
	echo -e "\033[01;34m ------------------- \033[01;37m"
	echo -e "\033[01;35m      Brute Force    \033[01;37m"
	echo -e "\033[01;34m ------------------- \033[01;37m"
	echo ""
	echo -e "\033[01;31m [1] Attack 	 \033[01;37m"
	echo -e "\033[01;32m [2] Restore session \033[01;37m"
	echo -e "\033[01;33m [3] Resultados 	 \033[01;37m"
	echo ""
	echo -e "\033[01;34m [ENTER] Back	 \033[01;37m"
	echo ""

	# Entrada de dados
	echo -e -n "\033[01;36m # Opc: \033[01;37m"
	read opc

	# Comando [bruteForce MD5]: hashcat -O -w 4 -n 64 -u 256 -T 64 --force --session=bruteForce -a 3 -m 0 hash
	kernel="-O -w 4 -n 64 -u 256 -T 64 --force"
	session="--session=bruteForce"
	bruteForce="-a 3 -m $hashType"

	# Estrutura de escolha
	case $opc in

	1)	# Metodo
		arquivo && clear
		hashcat $kernel $session $bruteForce "$arq";;
	
	2)	# Comando
		clear && hashcat $kernel --session bruteForce --restore;;

	3)	# Metodo
		show;;

	*)	;;

	esac

	# Limpeza de variavel
	opc=""
}

# Brute Force
2()
{	
	clear
	echo -e "\033[01;34m --------------------- \033[01;37m"
	echo -e "\033[01;35m      Brute Force      \033[01;37m"
	echo -e "\033[01;34m --------------------- \033[01;37m"
	echo ""
	echo -e "\033[01;31m [1] Attack 	 \033[01;37m"
	echo -e "\033[01;32m [2] Restore session \033[01;37m"
	echo -e "\033[01;33m [3] Resultados 	 \033[01;37m"
	echo ""
	echo -e "\033[01;34m [ENTER] Back	 \033[01;37m"
	echo ""

	# Entrada de dados
	echo -e -n "\033[01;36m # Opc: \033[01;37m"
	read opc

	# Comando [bruteForce MD5]: hashcat -O -w 4 -n 64 -u 256 -T 64 --force --session=bruteForce -a 3 -m 0 -1 ?a hash ?1?1?1?1?1?1?1?1
	kernel="-O -w 4 -n 64 -u 256 -T 64 --force"
	session="--session=bruteForceAll"
	bruteForceAll="-a 3 -m $hashType"

	# Estrutura de escolha
	case $opc in

	1)	# Metodo
		arquivo
		
		# Entrada de dados
		echo -e -n "\033[01;33m\n # Quantidade de caracteres (Ex: '8 caracteres' digite: ?1?1?1?1?1?1?1?1 | ?1lack?1at: \033[01;37m"
		read qtdCaractere && clear

		# Comando
		hashcat $kernel $session $bruteForceAll -1 ?a "$arq" $qtdCaractere;;

	2)	# Comando
		clear && hashcat $kernel --session bruteForceAll --restore;;

	3)	# Metodo
		show;;

	*)	;;

	esac

	# Limpeza de variavel
	opc=""
}

# Word List
3()
{
	clear
	echo -e "\033[01;34m ------------------- \033[01;37m"
	echo -e "\033[01;35m      Word List      \033[01;37m"
	echo -e "\033[01;34m ------------------- \033[01;37m"
	echo ""
	echo -e "\033[01;31m [1] Attack 	 \033[01;37m"
	echo -e "\033[01;32m [2] Restore session \033[01;37m"
	echo -e "\033[01;33m [3] Resultados 	 \033[01;37m"
	echo ""
	echo -e "\033[01;34m [ENTER] Back	 \033[01;37m"
	echo ""

	# Entrada de dados
	echo -e -n "\033[01;36m # Opc: \033[01;37m"
	read opc

	# Comando [bruteForce MD5]: hashcat -O -w 4 -n 64 -u 256 -T 64 --force --session=wordList -a 0 -m 0 hash "/usr/share/wordlists/rockyou.txt"
	kernel="-O -w 4 -n 64 -u 256 -T 64 --force"
	session="--session=wordList"
	wordList="-a 0 -m $hashType"

	# Estrutura de escolha
	case $opc in

	1)	# Metodo
		arquivo

		# Entrada de dados
		echo -e -n "\033[01;33m\n # WordList (Ex: /usr/share/wordlists/rockyou.txt): \033[01;37m"
    		read path && clear

		# Comando
		hashcat $kernel $session "$arq" $wordList "$path";;

	2)	# Comando
		clear && hashcat $kernel --session wordList --restore;;

	3)	# Metodo
		show;;

	*)	;;
		
	esac

	# Limpeza de variavel
	opc=""
}

# Numbers
4()
{
	clear
	echo -e "\033[01;34m ----------------- \033[01;37m"
	echo -e "\033[01;35m      Numbers      \033[01;37m"
	echo -e "\033[01;34m ----------------- \033[01;37m"
	echo ""
	echo -e "\033[01;31m [1] Attack 	 \033[01;37m"
	echo -e "\033[01;32m [2] Restore session \033[01;37m"
	echo -e "\033[01;33m [3] Resultados 	 \033[01;37m"
	echo ""
	echo -e "\033[01;34m [ENTER] Back	 \033[01;37m"
	echo ""

	# Entrada de dados
	echo -e -n "\033[01;36m # Opc: \033[01;37m"
	read opc

	# Comando [bruteForce MD5]: hashcat -O -w 4 -n 64 -u 256 -T 64 --force --session=numbers -1 ?d -a 3 -m 0 hash ?1?1?1?1?1?1?1?1 
	kernel="-O -w 4 -n 64 -u 256 -T 64 --force"
	session="--session=numbers"
	numbers="-a 3 -m $hashType"

	# Estrutura de escolha
	case $opc in

	1)	# Metodo
		arquivo

		# Entrada de dados
		echo -e -n "\033[01;33m\n # Quantidade de caracteres (Ex: '8 caracteres' digite: ?1?1?1?1?1?1?1?1 | ?1lack?1at: \033[01;37m"
    		read qtdCaractere && clear

		# Comando
		hashcat $kernel $session -1 ?d $numbers "$arq" $qtdCaractere;;

	2)	# Comando
		clear && hashcat $kernel --session numbers --restore;;

	3)	# Metodo
		show;;

	*)	;;
	
	esac

	# Limpeza de variavel
	opc=""
}

# Letters
5()
{
	clear
	echo -e "\033[01;34m ----------------- \033[01;37m"
	echo -e "\033[01;35m      Letters      \033[01;37m"
	echo -e "\033[01;34m ----------------- \033[01;37m"
	echo ""
	echo -e "\033[01;31m [1] Attack 	 \033[01;37m"
	echo -e "\033[01;32m [2] Restore session \033[01;37m"
	echo -e "\033[01;33m [3] Resultados 	 \033[01;37m"
	echo ""
	echo -e "\033[01;34m [ENTER] Back	 \033[01;37m"
	echo ""

	# Entrada de dados
	echo -e -n "\033[01;36m # Opc: \033[01;37m"
	read opc

	# Comando [bruteForce MD5]: hashcat -O -w 4 -n 64 -u 256 -T 64 --force --session=letters -1 ?l?u -a 3 -m 0 hash ?1?1?1?1?1?1?1?1 
	kernel="-O -w 4 -n 64 -u 256 -T 64 --force"
	session="--session=letters"
	numbers="-a 3 -m $hashType"

	# Estrutura de escolha
	case $opc in

	1)	# Metodo
		arquivo

		# Entrada de dados
		echo -e -n "\033[01;33m\n # Quantidade de caracteres (Ex: '8 caracteres' digite: ?1?1?1?1?1?1?1?1 | ?1lack?1at: \033[01;37m"
    		read qtdCaractere && clear

		# Comando
		hashcat $kernel $session -1 ?l?u $numbers "$arq" $qtdCaractere;;

	2)	# Metodo
		clear && hashcat $kernel --session letters --restore;;
	
	3)	# Metodo
		show;;

	*)	;;
	
	esac

	# Limpeza de variavel
	opc=""
}

# Minuscule letters
6()
{
	clear
	echo -e "\033[01;34m -------------------------- \033[01;37m"
	echo -e "\033[01;35m      Minuscule Letter      \033[01;37m"
	echo -e "\033[01;34m -------------------------- \033[01;37m"
	echo ""
	echo -e "\033[01;31m [1] Attack 	 \033[01;37m"
	echo -e "\033[01;32m [2] Restore session \033[01;37m"
	echo -e "\033[01;33m [3] Resultados 	 \033[01;37m"
	echo ""
	echo -e "\033[01;34m [ENTER] Back	 \033[01;37m"
	echo ""

	# Entrada de dados
	echo -e -n "\033[01;35m # Opc: \033[01;37m"
	read opc

	# Comando [bruteForce MD5]: hashcat -O -w 4 -n 64 -u 256 -T 64 --force --session=numbers -1 ?l -a 3 -m 0 hash ?1?1?1?1?1?1?1?1 
	kernel="-O -w 4 -n 64 -u 256 -T 64 --force"
	session="--session=minusculeLetter"
	minusculeLetter="-a 3 -m $hashType"

	# Estrutura de escolha
	case $opc in

	1)	# Metodo
		arquivo

		# Tamanho da senha
		echo -e -n "\033[01;33m\n # Quantidade de caracteres (Ex: '8 caracteres' digite: ?1?1?1?1?1?1?1?1 | ?1lack?1at: \033[01;37m"
    		read qtdCaractere && clear

		# Comando
		hashcat $kernel $session -1 ?l $minusculeLetter "$arq" $qtdCaractere;;

	2)	# Comando
		clear && hashcat $kernel --session minusculeLetter --restore;;

	3)	# Metodo
		show;;

	*)	;;
	
	esac

	# Limpeza de variavel
	opc=""
}

# Letter + Numbers
7()
{
	clear
	echo -e "\033[01;34m -------------------------- \033[01;37m"
	echo -e "\033[01;35m      Letter + Numbers      \033[01;37m"
	echo -e "\033[01;34m -------------------------- \033[01;37m"
	echo ""
	echo -e "\033[01;31m [1] Attack 	 \033[01;37m"
	echo -e "\033[01;32m [2] Restore session \033[01;37m"
	echo -e "\033[01;33m [3] Resultados 	 \033[01;37m"
	echo ""
	echo -e "\033[01;34m [ENTER] Back	 \033[01;37m"
	echo ""

	# Entrada de dados
	echo -e -n "\033[01;35m # Opc: \033[01;37m"
	read opc

	# Comando [bruteForce MD5]: hashcat -O -w 4 -n 64 -u 256 -T 64 --force --session=numbers -1 ?l?d?u -a 3 -m 0 hash ?1?1?1?1?1?1?1?1 
	kernel="-O -w 4 -n 64 -u 256 -T 64 --force"
	session="--session=letterNumbers"
	letterNumbers="-a 3 -m $hashType"

	# Estrutura de escolha
	case $opc in

	1)	# Metodo
		arquivo

		# Tamanho da senha
		echo -e -n "\033[01;33m\n # Quantidade de caracteres (Ex: '8 caracteres' digite: ?1?1?1?1?1?1?1?1 | ?1lack?1at: \033[01;37m"
    		read qtdCaractere && clear

		# Comando
		hashcat $kernel $session -1 ?l?d?u $letterNumbers "$arq" $qtdCaractere;;

	2)	# Comando
		clear && hashcat $kernel --session letterNumbers --restore;;

	3)	# Metodo
		show;;

	*)	;;
	
	esac

	# Limpeza de variavel
	opc=""
}

# Custom
8()
{
	clear
	echo -e "\033[01;34m ---------------- \033[01;37m"
	echo -e "\033[01;35m      Custom      \033[01;37m"
	echo -e "\033[01;34m ---------------- \033[01;37m"
	echo ""
	echo -e "\033[01;31m [1] Attack 	 \033[01;37m"
	echo -e "\033[01;32m [2] Restore session \033[01;37m"
	echo -e "\033[01;33m [3] Resultados 	 \033[01;37m"
	echo ""
	echo -e "\033[01;34m [ENTER] Back	 \033[01;37m"
	echo ""

	# Entrada de dados
	echo -e -n "\033[01;35m # Opc: \033[01;37m"
	read opc

	# Comando [bruteForce MD5]: hashcat -O -w 4 -n 64 -u 256 -T 64 --force --session=custom -1 abcde12345 -a 3 -m 0 hash ?1?1?1?1?1?1?1?1 
	kernel="-O -w 4 -n 64 -u 256 -T 64 --force"
	session="--session=custom"
	custom="-a 3 -m $hashType"

	# Estrutura de escolha
	case $opc in

	1)	# Metodo
		arquivo

	        # Tamanho da senha
		echo -e -n "\033[01;31m\n # Caracteres (Ex:abc123): \033[01;37m"
	    	read caracteres
		
		# Tamanho da senha
		echo -e -n "\033[01;33m\n # Quantidade de caracteres (Ex: '8 caracteres' digite: ?1?1?1?1?1?1?1?1 | ?1lack?1at: \033[01;37m"
    		read qtdCaractere && clear
		
		# Comando
		hashcat $kernel $session -1 $caracteres $custom "$arq" $qtdCaractere;;

	2)	clear && hashcat $kernel --session custom --restore;;

	3)	# Metodo
		show;;
	
	esac

	# Limpeza de variavel
	opc=""
}

##################################
#        CONTROLE DE MENU        #
##################################

# Montagem de menu principal
montagemMenu()
{
	# Montagem de um array list
	declare -a arr=("Brute force -> Default"
       			"Brute force -> all"
			"Word list"
			"Numbers"
			"Letters"
			"Minuscule letters"
			"Letter + Numbers"
			"Custom"
			)
	
	# Tamanho do vetor: ${#arr[@]}
	# Estrutura em loop (estilo C))
	# $i(indice): ${arr[$i]} (conteudo na lista)
	
	echo -e "\033[01;33m # Main Menu  \n\033[01;37m"
	
	for (( i=0; i < ${#arr[@]}; i++))
	do
		echo -e "\033[01;3$((i+1))m # [$((i+1))]: ${arr[$i]} \033[01;37m"
	done
	
	echo ""
	echo -e "\033[01;32m # [i]: Press Passwords  \033[01;37m"
	echo -e "\033[01;31m # [0]: Exit 	     \n\033[01;37m"
	echo -n -e "\033[01;37m # Opc.: \033[01;37m"
	read opc

	escolha
}

# Estrutura em escolha
escolha()
{
	case $opc in
	1)	1;;
	2)	2;;
	3) 	3;;
	4) 	4;;
	5) 	5;;
	6)	6;;
	7)	7;;
	8)	8;;
	i)	imprimirSenhas;;
	0)	exit 1;;
	*)	 ;;
	esac
}

# Controle de fluxo
Programa()
{
	while ((1))
	do
		apresentacao
		montagemMenu
		escolha
	done
}

#########################
#        SUPORTE        #
#########################

# Arquivo a ser analisado
arquivo()
{
	# Configuracao do arquivo
	echo -e -n "\033[01;33m\n # Arquivo (Ex: hash | hash.txt | hash.hc22000): \033[01;37m"
	read arq
}

# Mostrar resultado das senhas
show()
{
	clear && cat /root/.hashcat/hashcat.potfile && echo -e "\n\033[01;33m<<< ENTER >>>\033[01;37m" && read
	#arquivo && clear && hashcat $kernel $session -1 ?1 $custom "$arq" ?1 --show && echo -e "\n\033[01;33m<<< ENTER >>>\033[01;37m" && read
}

# Mostrar resultado das senhas
imprimirSenhas()
{
	clear
	echo -e "\033[01;34m ------------------------- \033[01;37m"
	echo -e "\033[01;35m      Press Passwords      \033[01;37m"
	echo -e "\033[01;34m ------------------------- \033[01;37m"
	echo ""

	# Senhas
	linhas=$(sort /root/.hashcat/hashcat.potfile | wc -l)
	echo -e "\033[01;31m # Senhas: $linhas \n\033[01;37m"
	sort /root/.hashcat/hashcat.potfile
	
	# Relatorio
	sort /root/.hashcat/hashcat.potfile | uniq > Relatorio.txt

	#echo $relatorio
	echo -e "\n\n\033[01;34m [ENTER] Back \033[01;37m"
	read 
	
	# Limpeza de variavel
	opc=""
}
# Inicio
Programa
