#!/bin/bash
#add fix to exercise1 here
curl bnbascii.txt http://www.textfiles.com/art/bnbascii.txt
#I created also a script that will enable to run the the command manual if something went worng
echo "curl bnbascii.txt http://www.textfiles.com/art/bnbascii.txt" >  exercise1-fix.sh
sudo chmod +x exercise1-fix.sh
