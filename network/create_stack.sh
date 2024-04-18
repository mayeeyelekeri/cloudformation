aws cloudformation create-stack --stack-name nw --template-body file://network.yaml $*

# To pass different environment information 
# ./create_stack.sh --parameters ParameterKey=environment,ParameterValue=prod
