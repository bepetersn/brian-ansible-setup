#!/bin/bash 
sudo apt-add-repository --yes --update ppa:ansible/ansible
sudo apt-add-repository --yes --update ppa:git-core/ppa
sudo apt update
sudo apt upgrade -y
sudo apt install -y ansible
sudo apt install -y git 
git clone https://github.com/bepetersn/brian-ansible-setup .dev-env
cd .dev-env
ansible-playbook playbook.yml -vv --ask-become-pass
