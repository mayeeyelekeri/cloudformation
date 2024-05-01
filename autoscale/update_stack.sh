aws cloudformation update-stack --stack-name autoscale --template-body file://autoscale.yaml $*

aws cloudformation wait stack-update-complete --stack-name autoscale

# To change values to prod, pass the following 
# ./update_stack.sh --parameters ParameterKey=vpcCidr,ParameterValue=/prod/vpc/vpc_cidr
