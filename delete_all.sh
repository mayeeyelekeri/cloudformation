# Delete EC2 stack  
aws cloudformation delete-stack --stack-name ec2 

# Wait 
aws cloudformation wait stack-delete-complete --stack-name ec2

# Delete Permissions stack  
aws cloudformation delete-stack --stack-name perm 

# Wait 
aws cloudformation wait stack-delete-complete --stack-name perm

# Delete Network stack  
aws cloudformation delete-stack --stack-name nw 

# Wait 
aws cloudformation wait stack-delete-complete --stack-name nw
