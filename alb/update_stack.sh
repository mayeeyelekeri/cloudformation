aws cloudformation update-stack --stack-name alb --template-body file://alb.yaml $*

aws cloudformation wait stack-update-complete --stack-name alb

# To change values to prod, pass the following 
# ./update_stack.sh --parameters ParameterKey=vpcCidr,ParameterValue=/prod/vpc/vpc_cidr
