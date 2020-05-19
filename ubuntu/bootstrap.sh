#!/bin/bash 
sudo apt-add-repository -y ppa:ansible/ansible
sudo apt-add-repository -y ppa:git-core/ppa
sudo apt install -y ansible
sudo apt install -y git 
rm -rf .dev-env
git clone https://github.com/bepetersn/brian-ansible-setup .dev-env
cd .dev-env
ansible-playbook ubuntu/playbook.yml -vv --ask-become-pass
