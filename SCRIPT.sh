#!/bin/bash

PURPLE='0;35'
NC='\033[0m' 
VERSAO=11

	
echo "ATUALIZANDO OS PACOTES!"
 sudo apt update && sudo apt upgrade
 echo “Instalar o protocolo RDP e GUI LXDE”
 sudo apt-get install xrdp lxde-core lxde tigervnc-standalone-server -y

echo  "$(tput setaf 10)[ControlTecBot]:$(tput setaf 7) Bem Vindo, eu sou o ControlTecBot !;"
sleep 2
echo  "$(tput setaf 10)[ControlTecBot]:$(tput setaf 7) Verificando se o java está instalado...;"
sleep 2

java -version
if [ $? -eq 0 ]
	then
		echo "$(tput setaf 10)[ControlTecBot]:$(tput setaf 7) : O java ja está instalado!!"
		sleep 2
	else
		echo "$(tput setaf 10)[ControlTecBot]:$(tput setaf 7) O java não foi identificado"
		sleep 2
		echo "$(tput setaf 10)[ControlTecBot]:$(tput setaf 7)  Confirme a instalação do java (Y/n)?"		
	read inst
	if [ \"$inst\" == \"Y\" ]
		then
			echo "$(tput setaf 10)[ControlTecBot]:$(tput setaf 7)  O java será instalado "
			sleep 2
			echo "$(tput setaf 10)[ControlTecBot]:$(tput setaf 7)  Adicionando o repositório!"
			sleep 2
			sudo add-apt-repository ppa:webupd8team/java -y
			clear
			echo "$(tput setaf 10)[ControlTecBot]:$(tput setaf 7)  Atualizando Pacotes! Quase lá."
			sleep 2
			sudo apt update -y
			clear
			
			if [ $VERSAO -eq 11 ]
				then
					echo "$(tput setaf 10)[ControlTecBot]:$(tput setaf 7) A versão 11 será instalada, confirme quando for solicitado"
					sleep 1
					sudo apt install default-jre ; apt install openjdk-11-jre-headless; -y
					clear
					echo "$(tput setaf 10)[ControlTecBot]:$(tput setaf 7) Java instalado com sucesso!"
					sleep 1
				fi
		else 	
		echo "$(tput setaf 10)[ControlTecBot]:$(tput setaf 7)  Fechando o instalador..."
		sleep 1
	fi
fi

echo “Criar um diretório para baixar a aplicação”
 mkdir rx

 echo “Entrar no diretório criado”
 cd rx

 echo “Baixar o arquivo .jar”
 git clone https://github.com/Luiz0809/ControlTecApp.git

 echo "Entrando na pasta monitoramento"
 cd ControlTecApp

 echo "Listando os arquvos"
 ls

 echo "A APLICAÇÃO SERÁ INICIADA!"
 java -jar ControlTec-1.0-jar-with-dependencies.jar

# ===================================================================
# Todos direitos reservados para o autor: Dra. Profa. Marise Miranda.
# Sob licença Creative Commons @2020
# Podera modificar e reproduzir para uso pessoal.
# Proibida a comercialização e a exclusão da autoria.
# ===================================================================

