aws cloudformation update-stack --stack-name codedeploy --capabilities CAPABILITY_NAMED_IAM --template-body file://codedeploy.yaml $*

aws cloudformation wait stack-update-complete --stack-name codedeploy

# To change values to prod, pass the following 
# ./update_stack.sh --parameters ParameterKey=vpcCidr,ParameterValue=/prod/vpc/vpc_cidr
