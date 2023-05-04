#!/bin/bash

# sudo yum -y update

# install EPEL repository
sudo yum -y install epel-release

# install Ansible
# TODO: filter installed packages. Need to optimize.
sudo yum -y install ansible
# print Ansible version
ansible --version

# add temporary ip to hosts
echo "192.168.10.10" | sudo tee -a /etc/ansible/hosts

sudo ansible-playbook /vagrant/playbook.yml -vv