#!/bin/bash
#add fix to exercise4-server1 here

#We need to add the server1 ip translation because we don't have a DNS server
#I tried this command & I got a permission denied 
#sudo echo "192.168.100.10 server1" >> /etc/hosts

#So I seek for other command and found other command that help me to overcome the permission issue : 
sudo -- sh -c -e "echo '192.168.100.10 server1' >> /etc/hosts"

#sh is a command language interpreter that executes commands read from a command line string, the standard input, or a specified file
