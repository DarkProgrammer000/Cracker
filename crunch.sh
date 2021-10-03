#!/bin/bash

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
	echo -e "\033[01;32m Desenvolvido por DarProgrammer000	 \033[01;37m"
	echo -e "\033[31;5m  Black Hat DarkProgrammer000 	 \033[0m"
	echo -e "\033[01;33m ################################### \033[01;37m\n"
	
	echo -e "\033[01;34m ---------------- 	  		   \033[01;37m"
	echo -e "\033[01;35m      CRUNCH     	  	  	   \033[01;37m"
	echo -e "\033[01;34m ----------------		  	   \033[01;37m"
	echo -e "\033[01;34m\n # Path: cd /usr/share/crunch	   \033[01;37m"
	echo -e "\033[01;34m # cat /usr/share/crunch/charset.lst \n\033[01;37m"
}

# Letras Maiusculas
1()
{	
	clear
	echo -e "\033[01;34m ------------------------- \033[01;37m"
	echo -e "\033[01;35m     Letras Maiusculas     \033[01;37m"
	echo -e "\033[01;34m ------------------------- \033[01;37m"
	echo ""

	# Comando
	entradaDados && clear
	crunch $min $max -f /usr/share/crunch/charset.lst ualpha -o WordList/letrasMaiusculas.txt
	
	# Analise do arquivo
	clear
	linhas=$(wc -l WordList/letrasMaiusculas.txt | cut -d " " -f 1)
	tamPath=$(du -hs WordList/letrasMaiusculas.txt)
	echo -e "\033[01;34m Linas: $linhas \033[01;37m"
	echo -e "\033[01;34m Tamanho/Path: $tamPath \033[01;37m"
	echo ""
	read -p "<< ENTER >>"

	# Limpeza de variavel
	opc=""
}

# Letras Minusculas
2()
{	
	clear
	echo -e "\033[01;34m ------------------------- \033[01;37m"
	echo -e "\033[01;35m     Letras Minusculas     \033[01;37m"
	echo -e "\033[01;34m ------------------------- \033[01;37m"
	echo ""

	# Comando
	entradaDados && clear
	crunch $min $max -f /usr/share/crunch/charset.lst lalpha -o WordList/letrasMinusculas.txt
	
	# Analise do arquivo
	clear
	linhas=$(wc -l WordList/letrasMinusculas.txt | cut -d " " -f 1)
	tamPath=$(du -hs WordList/letrasMinusculas.txt)
	echo -e "\033[01;34m Linas: $linhas \033[01;37m"
	echo -e "\033[01;34m Tamanho/Path: $tamPath \033[01;37m"
	echo ""
	read -p "<< ENTER >>"

	# Limpeza de variavel
	opc=""
}

# Letras Maiusculas + Numeros
3()
{	
	clear
	echo -e "\033[01;34m ----------------------------------- \033[01;37m"
	echo -e "\033[01;35m     Letras Maiusculas + Numeros     \033[01;37m"
	echo -e "\033[01;34m ----------------------------------- \033[01;37m"
	echo ""

	# Comando
	entradaDados && clear
	crunch $min $max -f /usr/share/crunch/charset.lst ualpha-numeric -o WordList/letrasMaiusculas_Numeros.txt

	# Analise do arquivo
	clear
	linhas=$(wc -l WordList/letrasMaiusculas_Numeros.txt | cut -d " " -f 1)
	tamPath=$(du -hs WordList/letrasMaiusculas_Numeros.txt)
	echo -e "\033[01;34m Linas: $linhas \033[01;37m"
	echo -e "\033[01;34m Tamanho/Path: $tamPath \033[01;37m"
	echo ""
	read -p "<< ENTER >>"

	# Limpeza de variavel
	opc=""
}

# Letras Minusculas + Numeros
4()
{	
	clear
	echo -e "\033[01;34m ----------------------------------- \033[01;37m"
	echo -e "\033[01;35m     Letras Minusculas + Numeros     \033[01;37m"
	echo -e "\033[01;34m ----------------------------------- \033[01;37m"
	echo ""

	# Comando
	entradaDados && clear
	crunch $min $max -f /usr/share/crunch/charset.lst lalpha-numeric -o WordList/letrasMinusculas_Numeros.txt

	# Analise do arquivo
	clear
	linhas=$(wc -l WordList/letrasMinusculas_Numeros.txt | cut -d " " -f 1)
	tamPath=$(du -hs WordList/letrasMinusculas_Numeros.txt)
	echo -e "\033[01;34m Linas: $linhas \033[01;37m"
	echo -e "\033[01;34m Tamanho/Path: $tamPath \033[01;37m"
	echo ""
	read -p "<< ENTER >>"

	# Limpeza de variavel
	opc=""
}

# Letras Minusculas + Letras Maiusculas
5()
{	
	clear
	echo -e "\033[01;34m --------------------------------------------- \033[01;37m"
	echo -e "\033[01;35m     Letras Minusculas + Letras Maiusculas     \033[01;37m"
	echo -e "\033[01;34m --------------------------------------------- \033[01;37m"
	echo ""

	# Comando
	entradaDados && clear
	crunch $min $max -f /usr/share/crunch/charset.lst lalpha-numeric -o WordList/letrasMinusculas_Numeros.txt

	# Analise do arquivo
	clear
	linhas=$(wc -l WordList/letrasMinusculas_Numeros.txt | cut -d " " -f 1)
	tamPath=$(du -hs WordList/letrasMinusculas_Numeros.txt)
	echo -e "\033[01;34m Linas: $linhas \033[01;37m"
	echo -e "\033[01;34m Tamanho/Path: $tamPath \033[01;37m"
	echo ""
	read -p "<< ENTER >>"

	# Limpeza de variavel
	opc=""
}

# Letras Minusculas + Numeros + Espaco + Caracteres Especiais 
6()
{	
	clear
	echo -e "\033[01;34m ------------------------------------------------------------------- \033[01;37m"
	echo -e "\033[01;35m     Letras Minusculas + Numeros + Espaco + Caracteres Especiais     \033[01;37m"
	echo -e "\033[01;34m ------------------------------------------------------------------- \033[01;37m"
	echo ""

	# Comando
	entradaDados && clear
	crunch $min $max -f /usr/share/crunch/charset.lst lalpha-numeric-all-space -o WordList/letrasMinusculas_Numeros_Espaco_Especial.txt

	# Analise do arquivo
	clear
	linhas=$(wc -l WordList/letrasMinusculas_Numeros_Espaco_Especial.txt | cut -d " " -f 1)
	tamPath=$(du -hs WordList/letrasMinusculas_Numeros_Espaco_Especial.txt)
	echo -e "\033[01;34m Linas: $linhas \033[01;37m"
	echo -e "\033[01;34m Tamanho/Path: $tamPath \033[01;37m"
	echo ""
	read -p "<< ENTER >>"

	# Limpeza de variavel
	opc=""
}

# Letras Maiusculas + Numeros + Espaco + Caracteres Especiais
7()
{	
	clear
	echo -e "\033[01;34m ------------------------------------------------------------------- \033[01;37m"
	echo -e "\033[01;35m     Letras Maiusculas + Numeros + Espaco + Caracteres Especiais     \033[01;37m"
	echo -e "\033[01;34m ------------------------------------------------------------------- \033[01;37m"
	echo ""

	# Comando
	entradaDados && clear
	crunch $min $max -f /usr/share/crunch/charset.lst ualpha-numeric-all-space -o WordList/letrasMaiusculas_Numeros_Espaco_Especial.txt
	
	# Analise do arquivo
	clear
	linhas=$(wc -l WordList/letrasMaiusculas_Numeros_Espaco_Especial.txt | cut -d " " -f 1)
	tamPath=$(du -hs WordList/letrasMaiusculas_Numeros_Espaco_Especial.txt)
	echo -e "\033[01;34m Linas: $linhas \033[01;37m"
	echo -e "\033[01;34m Tamanho/Path: $tamPath \033[01;37m"
	echo ""
	read -p "<< ENTER >>"

	# Limpeza de variavel
	opc=""
}

# Letras Minusculas + Letras Maiusculas + Numeros + Espaco + Caracteres Especiais
8()
{	
	clear
	echo -e "\033[01;34m --------------------------------------------------------------------------------------- \033[01;37m"
	echo -e "\033[01;35m     Letras Minusculas + Letras Maiusculas + Numeros + Espaco + Caracteres Especiais     \033[01;37m"
	echo -e "\033[01;34m --------------------------------------------------------------------------------------- \033[01;37m"
	echo ""

	# Comando
	entradaDados && clear
	crunch $min $max -f /usr/share/crunch/charset.lst mixalpha-numeric-all-space -o WordList/all.txt
	
	# Analise do arquivo
	clear
	linhas=$(wc -l WordList/all.txt | cut -d " " -f 1)
	tamPath=$(du -hs WordList/all.txt)
	echo -e "\033[01;34m Linas: $linhas \033[01;37m"
	echo -e "\033[01;34m Tamanho/Path: $tamPath \033[01;37m"
	echo ""
	read -p "<< ENTER >>"

	# Limpeza de variavel
	opc=""
}

# Letras Minusculas + Letras Maiusculas + Numeros + Espaco + Caracteres Especiais
9()
{	
	clear
	echo -e "\033[01;34m ------------------- \033[01;37m"
	echo -e "\033[01;35m     Customizado     \033[01;37m"
	echo -e "\033[01;34m ------------------- \033[01;37m"
	echo ""

	# Comando
	entradaDados
	entradaCaracteres && clear
	crunch $min $max $caracteres -o WordList/custom.txt

	# Analise do arquivo
	clear
	linhas=$(wc -l WordList/custom.txt | cut -d " " -f 1)
	tamPath=$(du -hs WordList/custom.txt)
	echo -e "\033[01;34m Linas: $linhas \033[01;37m"
	echo -e "\033[01;34m Tamanho/Path: $tamPath \033[01;37m"
	echo ""
	read -p "<< ENTER >>"

	# Limpeza de variavel
	opc=""
}

# Entrada de dados
entradaDados()
{
	# Configuracao do arquivo
	echo -e -n "\033[01;33m # Tamanho minimo da senha: \033[01;37m"
	read min

	# Configuracao do arquivo
	echo -e -n "\033[01;33m\n # Tamanho maximo da senha: \033[01;37m"
	read max
}

# Entrada de dados
entradaCaracteres()
{
	# Configuracao do arquivo
	echo -e -n "\n\033[01;33m # Caracteres [abc123%@#]: \033[01;37m"
	read caracteres
}

# Montagem de menu principal
montagemMenu()
{
	# Montagem de um array list
	declare -a arr=("Letras Maiusculas"
			"Letras Minusculas"
       			"Letras Maiusculas + Numeros"
			"Letras Minusculas + Numeros"
       			"Letras Minusculas + Letras Maiusculas"
       			"Letras Minusculas + Numeros + Espaco + Caracteres Especiais"
			"Letras Maiusculas + Numeros + Espaco + Caracteres Especiais"
			"Letras Minusculas + Letras Maiusculas + Numeros + Espaco + Caracteres Especiais"
       			"Customizado"
			)

	# Tamanho do vetor: ${#arr[@]}
	# Estrutura em loop (estilo C))
	# $i(indice): ${arr[$i]} (conteudo na lista)
	
	echo -e "\033[01;33m # Main Menu  \n\033[01;37m"
	
	for (( i=0; i < ${#arr[@]}; i++))
	do
		echo -e "\033[01;3$((i+1))m # [$((i+1))]: ${arr[$i]} \033[01;37m"
	done
	
	echo -e "\033[01;31m # [0]: Exit \n\033[01;37m"
	echo -n -e "\033[01;37m # Opc.: \033[01;37m"
	read opc

	# Metodo
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
	9)	9;;
	0)	exit 1;;
	*)	 ;;
	esac
}

# Controle de fluxo
Programa()
{
	# Estrutura de decisao: Caso nao exista a pasta 'WordList'
	if [[ ! -r WordList ]]
	then
		# Criacao de pasta
		mkdir WordList
	fi
	
	# Estrutura de repeticao
	while ((1))
	do
		apresentacao
		montagemMenu
		escolha
	done
}

################
### PROGRAMA ###
################
Programa
