#!/bin/bash
#add fix to exercise2 here

#After checking again ... I found the host file a wrong DNS transaltion : 
#cat /etc/hosts
#On of the rows includes : 
#127.0.0.1 www.ascii-art.de
#So we need to remove wrong DNS translation
sudo sed -i 's/127.0.0.1 www.ascii-art.de//g' /etc/hosts

#I "curled" the site without using the "www".
#After a secound thought I had to do something more sophisticated (like I to remove is from a wrong field\row from the host file ...:) 
curl 007.txt http://ascii-art.de/ascii/ab/007.txt

#Creating also a local file using "echo" command to insert the command exercise2-fix.sh
echo "curl -o 007.txt http://ascii-art.de/ascii/ab/007.txt" >  exercise2-fix.sh

#Change the exercise2-fix.sh file to executable file
sudo chmod +x exercise2-fix.sh
