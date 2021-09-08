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
cp $(dirname $0)/netfilter /usr/local/bin
cp $(dirname $0)/netfilter.service /etc/systemd/system
