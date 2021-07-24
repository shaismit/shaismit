#!/bin/bash
#add fix to exercise1 here
#curl is a command line tool to transfer data to or from a server, using any of the supported protocols
#...(HTTP, FTP, IMAP, POP3, SCP, SFTP, SMTP, TFTP, TELNET, LDAP or FILE)
#curl command is using as a tool to transfer data to or from a server

#shutdown -r 00
#I ran the command route -n (after installing the net-tools by using apt-get net-tools)
#I found the a strange route : 208.86.224.90   0.0.0.0 
#I ping -a to this address (in my local computer):
#Pinging www.textfiles.com [208.86.224.90]
#And understand there something wrong with the routing table 
#Then I remove the wrong route by using the command : 
sudo route del -host www.textfiles.com

#This right command should be : 
curl bnbascii.txt http://www.textfiles.com/art/bnbascii.txt

#I created a script that will enable to run the the command manual in server1 

#The "-o" display the process & make a local copy of bnbascii.txt
echo "curl -o bnbascii.txt http://www.textfiles.com/art/bnbascii.txt" >  exercise1-fix.sh

#Change the exercise1-fix.sh file to executable file
sudo chmod +x exercise1-fix.sh
