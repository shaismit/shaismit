#!/bin/bash
#add fix to exercise6-fix here

#First, if we will run the script in server1
#and we want that server2 will be able to communicate via ssh to server1
#we have to copy public key from server2 to server1

#scp -r vagrant@192.168.100.11:~/.ssh/id_rsa.pub /home/vagrant/server2key.pub
#cat server2key.pub >> .ssh/authorized_keys

#START

#Variable statement:
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

#Save the arguments in array
arr=($@)
echo '/n' ${arr[@]} '/n'
echo

#Checking if the argument is above two as required
if [ "$#" -lt 2 ];
        then
                echo "ERROR: The Minimum arguments should be 2 as required"
                echo "Please try and run the script again"
        else
                echo ${arr[@]}
                echo


		#Read from the user the destination path folder of the server we would like to make the copy
		destPath="${@: -1}"
		echo $destPath
		echo

		#Remove the last argument that present the destination path
		lenCut=$(($#-1))

		arr=${@:1:$lenCut}
		echo $arr

		#read a


		#Make the copy operation to the destination server by using scp
		scp -v $arr "$destSrv":"$destPath" &> /home/vagrant/logEx6.txt

		#Output the total bytes that copied and and saving that in the last line as it should be
		grep "Transferred: sent" /home/vagrant/logEx6.txt | tail -n 2 | awk '{print $3}' | sed "s/[^0-9]*//g"
fi
#end if
