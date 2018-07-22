#!/bin/bash
x="teste"
menu ()
{
while true $x != "teste"
do
clear
echo "=x=x=x=x=x=x=x=x=x=x=x=x=x=x=x=x=x=x=x=x="
echo "1) Verificar o Hostname"
echo""
echo "2) Verificar o S.O"
echo ""
echo "3) Verificar o Kernel "
echo ""
echo "4) Verificar a arquitetura "
echo""
echo "5) Verificar o Disco "
echo""
echo "6) Verificar a Memoria"
echo""
echo "7) Verificar o CPU"
echo""
echo "8) Sair do programa"
echo ""
echo "=x=x=x=x=x=x=x=x=x=x=x=x=x=x=x=x=x=x=x=x="

echo "Digite a opção desejada:"
read x
echo "Opção informada ($x)"
echo "================================================"

case "$x" in


    1)
      echo "Hostname deste equipamento"
            hostname
      sleep 5

echo "================================================"
;;
    2)
      echo "Este é o S.O deste equipamento"
      cat /etc/*release      
      sleep 5
echo "================================================"
;;
   3)
      echo "Informações do kernel do equipamento"
      rpm -qa kernel
      sleep 5
echo "================================================"
;;
    4)
       echo "Informações da arquitetura do equipamento"
       uname -m
       sleep 5
echo "================================================"
;;
     5)
       echo "Informações de disco do equipamento"
       df -h
       sleep 5
echo "================================================"
;;
    6)
    echo "Informações de memoria"
    free -m
    sleep 5

echo "================================================"
 ;;
       7)
         echo "Informações de CPU"
	 cat /proc/cpuinfo
         sleep 10
                
echo "================================================"
;;
	8)
	echo "saindo......"
	sleep 3
	clear
	exit;
;;
*)
        echo "Opção inválida!"
esac
done

}
menu
