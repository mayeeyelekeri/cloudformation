#!/bin/bash 

environment=dev 

if [ $1 ]; then 
	echo inside if condition, env requested $1 
	environment=$1 
fi
 
#### For signature error, run the command
#sudo /usr/sbin/ntpdate pool.ntp.org

echo environment is $environment 
./network/init.sh $1
./permissions/init.sh $1
./ec2/init.sh $1
