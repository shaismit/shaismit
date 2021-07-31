#!/bin/bash
#add fix to exercise6-fix here

#First, if we will run the script in server1
#and we want that server2 will be able to communicate via ssh to server1
#we have to copy public key from server2 to server1

#scp -r vagrant@192.168.100.11:~/.ssh/id_rsa.pub /home/vagrant/server2key.pub
#cat server2key.pub >> .ssh/authorized_keys

#START

#Variable statement:
#Initiate the counter
i=0;

#Extract the destination server from the hosts file that we already updated earlier
#destSrv=$(grep -o "192.168.100.*\s" /etc/hosts)

#Extract the local ip address
destSrv=$(ip -4 addr | grep -oP '(?<=inet\s)\d+(\.\d+){3}' | tail -1)



#Checking if it's server1(192.168.100.10) or server2 (192.168.100.11)
if [[ "$destSrv" == "192.168.100.10" ]];
        then
                destSrv="192.168.100.11"
                echo no $destSrv
        else
                echo yes $destSrv
fi
#end if

#Read from user the number of paths that will be use for this parctice
read -p 'Please enter the number of paths do you like to input (the minimum should 2): ' pathNum

#Checking if the argument is above two as required
if (($pathNum < 2));
        then
                echo "ERROR: The Minimum arguments should be 2 as required"
                echo "Please try and run the script again"
                echo $pathNum
        else
                #echo "Everything is fine"
                #echo $pathNum

                while (($i < $pathNum));
                do
                        #echo "Welcome times"
                        printf "Path number %d.\n" $(($i+1))
                        read -p "Please enter the path do you like to copy:" arr[${#arr[*]}]

                        #i=$(expr $i + 1)
                        let "i+=1"
                        echo
                done
fi
#end if

#echo '\n' ${arr[@]} '\n'


#Read from the user the destination path folder of the server we would like to make the copy
read -p "Please enter the folder path in the destination server :" destPath

#Initiate the counter
#i=0;

#while (($i < $pathNum));
#do
#       echo "The pasths are:" ${arr[i]}
#       let "i+=1"
#done

#Make the copy operation to the destination server by using scp
scp -v "${arr[@]}" "$destSrv":"$destPath" &> /home/vagrant/logEx6.txt

#Output the total bytes that copied and and saving that in the last line as it should be
grep "Transferred: sent" /home/vagrant/logEx6.txt | tail -n 2 | awk '{print $3}' | sed "s/[^0-9]*//g"

#END 
