#!/bin/bash
#add fix to exercise5-server1 here
#Generate the private & public key in Server1 
#We need to generate the keys under vagrant user in the guest machine
#sudo -H : Request that the security policy set the HOME environment variable to the home directory
#sudo -u : Run the command as a user other than the default target user
#bash -c : -c  option  is  present,  then commands are read from the first non-option argument command string
#echo -e : enable interpretation of backslash escapes
sudo -H -u vagrant bash -c 'echo -e "\n" | ssh-keygen -q -N "" '

#Give permission to create file in apache html folder
sudo chmod 777 /var/www/html -R	

#Copy the genreated public key of server1 to the public txt file
sudo cat /home/vagrant/.ssh/id_rsa.pub > /var/www/html/pubkey.txt
