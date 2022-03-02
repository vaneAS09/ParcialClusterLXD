#!/bin/bash
sudo apt-get install -y haproxy
sudo rm /etc/haproxy/haproxy.cfg
sudo cp -f /vagrant/haproxy.cfg /etc/haproxy/
sudo service haproxy restart 
sudo apt-get install -y apache2
