#!/bin/bash
echo -e "\e[37;46m HOSTNAME:\e[0m"; hostname
echo -e "\e[37;46m S.O:\e[0m";cat /etc/*release
echo -e "\e[37;46m KERNEL:\e[0m"; rpm -qa kernel
echo -e "\e[37;46m ARQUITETURA:\e[0m";uname -m
echo -e "\e[37;46m DISCO:\e[0m"; df -h
echo -e "\e[37;46m MEMORIA:\e[0m"; free -m
echo -e "\e[37;46m CPU:\e[0m"; cat /proc/cpuinfo 

 
