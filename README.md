# Vagrant Study Repo

This repo contains demos of Vagrant files that can be used to provision VMs on other projects.

There are some common configurations commented on the Vagrant files that can be used as reference, for example, port forwarding, folder sync and provision script.  
For the complete documentation access https://docs.vagrantup.com.

All files are configured to use **centos/7** box.

## Scripts
* **bootstrap.sh**: installs Docker on CentOS machines.
* **create-ssh-key-pair.sh**: creates a SSH key pair to be used with Vagrant machines.

## Useful commands

* vagrant up - starts and provisions the vagrant environment
* vagrant destroy - stops and deletes all traces of the vagrant machine
* vagrant ssh - connects to machine via SSH
* vagrant reload - restarts vagrant machine, loads new/changed Vagrantfile configuration
* vagrant suspend - suspends the machine
* vagrant resume - resume a suspended vagrant machine