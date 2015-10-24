#!/bin/sh

 

# Script realizado por Reynaldo Alarcon

# http://www.lawebdelprogramador.com

 

# Muestra el menu general

_menu()

{

    echo "Menu sh vers. 1.0.2.0"

    echo "Selecciona una opción:"

    echo "1) Herramientas red"

    echo "2) Herramientas del sistema"

    echo "4) Sobre el script"

    echo 

    echo "9) Salir"

    echo

    echo -n "Indica una opcion: "

}

# Muestra el menu red

_menured()

{

    echo "Selecciona una opcion:"

    echo "3) Volver al menu principal"

    echo "21) Ver mi ip local "

    echo "22) Ver mi ip publica"

    echo "23) Ping"

    echo "24) MTR"

    echo "25) Whois"

    echo 

    echo

    echo "9) Salir"

    echo

    echo -n "Indica una opcion: "

}

#muestra menu sistema
_menusis()

{

    echo "Selecciona una opcion:"

    echo 

    echo 

    echo "36) actualizar repositorios"

    echo "37) actualizar sistema"

    echo "38) Vesion de linux "

    echo "39) Vesion de java"

    echo "40) Instalar java"

    echo "41) Liberar Memoria Ram"

    echo "42) Actualizar Menu.sh"

    echo "43) Reiniciar Equipo"

    echo "44) Apagar Equipo"

    echo "45) Instalar soporte Mp3 y Multimedia"

    echo "3) volver a menu principal"

    echo "9) Salir"

    echo

    echo -n "Indica una opcion: "

}


# bucle menu principal

until [ "$opc" -eq "12" ];

do

    case $opc in

        1)
		clear		
		_menured
		

            ;;

        2)
		clear
		_menusis

            ;;

        3)    
		clear
	        _menu

            ;;
	4)
		clear

echo "...........|***********************||_"
echo ".....Creado..por..Reynaldo.Alarcon......"
echo "......................................"
_menu
;;

         9)

            exit

            ;;


        10)


            ;;

        11)


            ;;

        12)



            ;;

        13)



            ;;

        14)


            ;;

	15)
		clear 
		exit 
            ;;
         16)

           

            ;;

       21)

           	clear
		ifconfig
		_menured

            ;;

       22)

           	clear
		curl ifconfig.me
		_menured

            ;;

	23) 
		clear
		read -p "Introduce un dominio o direccion ip" ip1;
		ping -c 10 $ip1
		_menured

;;

        24)
		clear
		read -p "Introduce un dominio o direccion ip" ip1;
		mtr $ip1
		_menured

;;

        25)
		
		clear
		read -p "Introduce un dominio o direccion ip" ip1;
		whois $ip1
		_menured

;;

       26)

#               muestra version del sistema
            	clear
		cat /etc/issue
            	_menu

            ;;
         27)

            exit

            ;;
        36)
		apt-get update 
		_menusis
;;
	37)
		apt-get upgrade
		_menusis
            ;;
	38)
            	clear
		cat /etc/issue
            	_menusis
	;;
	39) 
           	clear
		java -version
		_menusis
;;
	40)
           	clear
		sudo add-apt-repository ppa:webupd8team/java -y
		sudo apt-get update
		sudo apt-get install oracle-java8-installer
		_menusis
;;
	41)
		sudo sync
		sudo sysctl -w vm.drop_caches=3
		clear
echo 		"Memoria Liberada"
		_menusis
;;
	42)
		cd ..
		sudo rm -R programas
		git clone https://github.com/reyhaker/programas.git
		clear
echo		"Reiniciar el programa para comprobar la versión"
		exit & cd ..
;;
	43)
		sudo reboot
;;

	44) 
		sudo shutdown now
;;

	45)	
		sudo apt-get install ubuntu-restricted-extras
;;

        *)

            # Esta opcion se ejecuta si no es ninguna de las anteriores

            clear

            _menu

            ;;

    esac

    read opc

done

# opcion por defecto

opc="0"

 
