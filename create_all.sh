#!/bin/bash 

#### For signature error, run the command
sudo /usr/sbin/ntpdate pool.ntp.org

# 1) Create Network stack  
aws cloudformation create-stack --stack-name nw --template-body file://network/network.yaml $*

# Wait for network stack to complete 
aws cloudformation wait stack-create-complete --stack-name nw
#aws cloudformation describe-stacks --region us-east-1 --query Stacks[?StackName=='nw'].StackId --output text 

# 2) Create Permissions stack  
aws cloudformation create-stack --stack-name perm --template-body file://permissions/perm.yaml $*

# Wait for network stack to complete 
aws cloudformation wait stack-create-complete --stack-name perm

# 3) Create codebuild stack  
aws cloudformation create-stack --stack-name ec2 --capabilities CAPABILITY_NAMED_IAM --template-body file://codebuild/codebuild.yaml $*

# Wait for EC2 stack to complete 
aws cloudformation wait stack-create-complete --capabilities CAPABILITY_NAMED_IAM --stack-name codebuild

# 4) Create ec2 stack  
#aws cloudformation create-stack --stack-name ec2 --template-body file://ec2/ec2.yaml $*

# Wait for EC2 stack to complete 
#aws cloudformation wait stack-create-complete --stack-name ec2

