aws cloudformation create-stack --stack-name codebuild --template-body file://codebuild.yaml $*

aws cloudformation wait stack-create-complete --stack-name codebuild

# To pass different environment information 
# ./create_stack.sh --parameters ParameterKey=environment,ParameterValue=prod
