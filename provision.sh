#!/bin/bash
set -e
#provision.sh
 sudo apt-get update
 echo "************************apt-get update done*************************"
 #sudo apt-get -y upgrade
 sudo apt-add-repository ppa:ansible/ansible
 echo ***********************************Updating and Installing Ansible****************************************
 sudo apt-get update && sudo apt-get install -y ansible
 sudo timedatectl set-timezone Asia/Kolkata
 sudo timedatectl status
 sudo localectl set-locale LANG=en_US.utf8
 sudo apt-get install -y net-tools
 sudo wget https://s3-ap-southeast-1.amazonaws.com/ak-ansible/playbook.yml
 echo "**********************Running build********************************"
 sudo ansible-playbook playbook.yml
