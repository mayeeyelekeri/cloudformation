aws cloudformation create-stack --stack-name vpc --template-body file://vpc.yaml $*

# To pass different environment information 
# ./create_stack.sh --parameters ParameterKey=environment,ParameterValue=prod
