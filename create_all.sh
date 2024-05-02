#!/bin/bash 

#### For signature error, run the command
sudo /usr/sbin/ntpdate pool.ntp.org

dirs=(network permissions ) 
#dirs=(network permissions alb autoscale codebuild codedeploy) 

# Change into each directory and execute create stack script 
for i in "${dirs[@]}"
do 
   echo Creating $i stack .... 
   (cd $i && ./create_stack.sh)
   echo .. done creating $i stack!!! 
done 
