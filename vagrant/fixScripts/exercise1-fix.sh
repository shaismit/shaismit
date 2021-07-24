#!/bin/bash
#add fix to exercise1 here
curl -o bnbascii.txt http://www.textfiles.com/art/bnbascii.txt

#I created a script that will enable to run the the command manual in server1 
#curl is a command line tool to transfer data to or from a server, using any of the supported protocols
#...(HTTP, FTP, IMAP, POP3, SCP, SFTP, SMTP, TFTP, TELNET, LDAP or FILE)
#curl command is using as a tool to transfer data to or from a server

#The "-o" display the process & make a local copy of bnbascii.txt
echo "curl -o bnbascii.txt http://www.textfiles.com/art/bnbascii.txt" >  exercise1-fix.sh

#I also add to the sh file executable option 
sudo chmod +x exercise1-fix.sh
