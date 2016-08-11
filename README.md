# Kubernetes-ansible

## Usage

Record the IP address of which machine you want to be your master
Record the IP address of the machine you want to be your etcd server
Record the IP addresses of the machines you want to be your minions.

Stick the system information into the 'inventory' file.

###  Set up ssh access via public keys

1. Create public key 
    ssh-keygen -P '' -t rsa
2. Copy public key to all hosts
    ssh-copy-id -i user@ip_address

   Or:

    a. Put ssh password for all nodes to ~/sshpassword
    b. ssh-keygen -P '' -t rsa
    c. ansible-playbook -i inventory pre-setup/keys.yml

### Configure your cluster

Configure `group_vars/all.yml` to reflect your needs. The options should be
described there in full detail.

### Set up the actual kubernetes cluster

You already did the config!  Just run the setup::

    $ ansible-playbook -i inventory setup.yml

## Set up fileserver 

 ansible-playbook -i inventory fileserver.yml

## Set up docker registry repo

 ansible-playbook -i inventory registry.yml

