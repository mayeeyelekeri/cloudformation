#!/bin/bash 

#### For signature error, run the command
sudo /usr/sbin/ntpdate pool.ntp.org


# Store all parameters to parameter store 
./network/paramStoreValues.sh
./ec2/paramStoreValues.sh

# 1) Create Network stack  
aws cloudformation create-stack --stack-name nw --template-body file://network/network.yaml $*

# Wait for network stack to complete 
aws cloudformation wait stack-create-complete --stack-name nw
#aws cloudformation describe-stacks --region us-east-1 --query Stacks[?StackName=='nw'].StackId --output text 

# 2) Create Permissions stack  
aws cloudformation create-stack --stack-name perm --template-body file://permissions/perm.yaml $*

# Wait for network stack to complete 
aws cloudformation wait stack-create-complete --stack-name perm

# 3) Create Permissions stack  
aws cloudformation create-stack --stack-name ec2 --template-body file://ec2/ec2.yaml $*

# Wait for EC2 stack to complete 
aws cloudformation wait stack-create-complete --stack-name ec2
