#!/bin/bash
#   
#   Installiert den Apache Web Server
#

# Create local directory in VM which contains the Mysql DB
sudo mkdir /mysqldata
sudo chown 999:999 /mysqldata

export KUBECONFIG=$HOME/.kube/config
kubectl apply -f ~/M153/mysql.yaml
kubectl apply -f ~/M153/phpmyadmin.yaml
sudo cp $(dirname $0)/netfilter /usr/local/bin
sudo cp $(dirname $0)/netfilter.service /etc/systemd/system
sudo chmod 755 /usr/local/bin/netfilter
