aws cloudformation update-stack --stack-name perm --template-body file://perm.yaml $*

# To change values to prod, pass the following 
# ./update_stack.sh --parameters ParameterKey=vpcCidr,ParameterValue=/prod/vpc/vpc_cidr
