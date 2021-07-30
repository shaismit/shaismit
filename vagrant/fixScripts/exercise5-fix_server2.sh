#!/bin/bash
#add fix to exercise5-server2 here
#Generate the private & public key in Server2 
#We need to generate the keys under vagrant user in the guest machine
#sudo -H : Request that the security policy set the HOME environment variable to the home directory
#sudo -u : Run the command as a user other than the default target user
#bash -c : -c  option  is  present,  then commands are read from the first non-option argument command string
#echo -e : enable interpretation of backslash escapes
#ssh-keygen : -q quite
#ssh-keygen : -N Provides the new passphrase.

#sudo -H -u vagrant bash -c 'echo -e "\n" | ssh-keygen -q -t rsa -N '' <<< ""$'\n'"y" > /dev/null 2>&1'
sudo -H -u vagrant bash -c 'echo -e "\n" | ssh-keygen -q -N "" '


#In server2 adding the public key
curl http://192.168.100.10/pubkey.txt >> /home/vagrant/.ssh/authorized_keys
