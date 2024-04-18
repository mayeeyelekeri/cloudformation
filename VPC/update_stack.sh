aws cloudformation update-stack --stack-name vpc --template-body file://vpc.yaml $*

# To change values to prod, pass the following 
# ./update_stack.sh --parameters ParameterKey=vpcCidr,ParameterValue=/prod/vpc/vpc_cidr
