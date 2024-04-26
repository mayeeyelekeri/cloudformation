aws cloudformation update-stack --stack-name codebuild --template-body file://codebuild.yaml $*

aws cloudformation wait stack-update-complete --stack-name codebuild

# To change values to prod, pass the following 
# ./update_stack.sh --parameters ParameterKey=vpcCidr,ParameterValue=/prod/vpc/vpc_cidr
