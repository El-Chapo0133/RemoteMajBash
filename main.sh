#!/bin/sh
# ===============================
# Author : Loris Levêque
# Date 14.11.2019
# Version 1
# Modification date : 14.11.2019
# Description :
#  Start maj from ssh
# ===============================

script="sudo apt-get update; sudo apt-get -y upgrade; sudo apt-get -y dist-upgrade; sudo apt-get clean; sudo apt-get check > /etc/perso_check_maj.txt"

# if you want to update ALL of your network
# nmap -p 22 -oG - 172.20.140.0/24 | awk '/22\/open/ print {$2} > hosts'
# cat hosts | while read line ; do
#   echo "host :" ${host}
#   read -p "username :" username
#   read -p "password :" password
#   export SSHPASS = ${password}
#   sshpass -e ssh ${username}@${host} ${script}
# done

# if you want to update from static array
#hostnames=("pi" "pi" "pi" "pi")
#hosts=("172.20.140.10" "172.20.140.14" "172.20.140.16" "172.20.140.20")
#passwords=("")
#for index in ${hosts[*]} ; do
#    echo "host :" ${hosts[index]}
#    export SSHPASS=${passwords[index]}
#    sshpass -e ssh ${hostnames[index]}@${hosts[index]} ${script}
#done

# if you want to update from .csv file
IFS=,
cat data.csv | while read -r host username password ; do
    echo "host :" ${host}
    export SSHPASS = ${password}
    sshpass -e ssh ${username}@${host} ${script}
done