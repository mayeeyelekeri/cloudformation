# DEV values 
# ami_id, keyname  
aws ssm put-parameter \
    --name "/dev/ec2/ami_id" \
    --type "String" \
    --value "ami-0cf43e890af9e3351" \
    --overwrite

aws ssm put-parameter \
    --name "/dev/ec2/keyname" \
    --type "String" \
    --value "info" \
    --overwrite

aws ssm put-parameter \
    --name "/dev/ec2/instance_type" \
    --type "String" \
    --value "t2.micro" \
    --overwrite

#### PROD values 
aws ssm put-parameter \
    --name "/prod/ec2/ami_id" \
    --type "String" \
    --value "ami-0cf43e890af9e3351" \
    --overwrite

aws ssm put-parameter \
    --name "/prod/ec2/keyname" \
    --type "String" \
    --value "info" \
    --overwrite

aws ssm put-parameter \
    --name "/prod/ec2/instance_type" \
    --type "String" \
    --value "t2.micro" \
    --overwrite

aws ec2 import-key-pair --key-name info --public-key-material fileb://~/.ssh/id_rsa.pub
