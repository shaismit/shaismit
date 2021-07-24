#!/bin/bash
#add fix to exercise2 here

#calling the site without using the "www"
"curl -o 007.txt http://ascii-art.de/ascii/ab/007.txt

#Creating also a local file using "echo" command to insert the command exercise2-fix.sh
echo "curl -o 007.txt http://ascii-art.de/ascii/ab/007.txt" >  exercise2-fix.sh

#Change the exercise2-fix.sh file to executable file
sudo chmod +x exercise2-fix.sh
