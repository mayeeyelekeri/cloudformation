aws cloudformation create-stack --stack-name perm --template-body file://perm.yaml $*

# To pass different environment information 
# ./create_stack.sh --parameters ParameterKey=environment,ParameterValue=prod
