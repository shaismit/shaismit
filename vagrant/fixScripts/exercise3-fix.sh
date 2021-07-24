#!/bin/bash
#add fix to exercise3 here
#Changing the permission of get in into the root link site from denying to granted by using the command "sed"
#SED command in UNIX is stands for stream editor and it can perform lot’s of function on file like, searching, find and replace, insertion or deletion.

sudo sed -i "s/denied/granted/g" /etc/apache2/sites-available/000-default.conf

#Changing the message from "Hello world" to "Hello OpsSchool"
sudo sed -i "s/Hello world/Hello OpsSchool/g" /var/www/html/index.html

#Reset the Apache service that it'll take effect
sudo systemctl restart apache2

#Doing the same but inserting all the command into "exercise3-fix.sh" file for running is manual 
echo "sudo sed -i "s/denied/granted/g" /etc/apache2/sites-available/000-default.conf" >  exercise3-fix.sh
echo "sudo sed -i "s/Hello world/Hello OpsSchool/g" /var/www/html/index.html" >>  exercise3-fix.sh
echo "sudo sed -i "sudo systemctl restart apache2" >>  exercise3-fix.sh
sudo chmod +x exercise3-fix.sh
