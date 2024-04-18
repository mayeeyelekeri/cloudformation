# DEV values 
aws ssm put-parameter \
    --name "/dev/network/vpc_cidr" \
    --type "String" \
    --value "10.0.0.0/24" \
    --overwrite

aws ssm put-parameter \
    --name "/dev/network/public_subnet1_cidr" \
    --type "String" \
    --value "10.0.0.0/26" \
    --overwrite

aws ssm put-parameter \
    --name "/dev/network/public_subnet2_cidr" \
    --type "String" \
    --value "10.0.0.64/26" \
    --overwrite

aws ssm put-parameter \
    --name "/dev/network/private_subnet1_cidr" \
    --type "String" \
    --value "10.0.0.128/26" \
    --overwrite

aws ssm put-parameter \
    --name "/dev/network/private_subnet2_cidr" \
    --type "String" \
    --value "10.0.0.192/26" \
    --overwrite

aws ssm put-parameter \
    --name "/dev/network/open_cidr" \
    --type "String" \
    --value "0.0.0.0/0" \
    --overwrite

aws ssm put-parameter \
    --name "/dev/network/zone1" \
    --type "String" \
    --value "us-east-1a" \
    --overwrite

aws ssm put-parameter \
    --name "/dev/network/zone2" \
    --type "String" \
    --value "us-east-1b" \
    --overwrite

#### PROD values 
aws ssm put-parameter \
    --name "/prod/network/vpc_cidr" \
    --type "String" \
    --value "192.168.1.0/24" \
    --overwrite

aws ssm put-parameter \
    --name "/prod/network/public_subnet1_cidr" \
    --type "String" \
    --value "192.168.1.0/26" \
    --overwrite

aws ssm put-parameter \
    --name "/prod/network/public_subnet2_cidr" \
    --type "String" \
    --value "192.168.1.64/26" \
    --overwrite

aws ssm put-parameter \
    --name "/prod/network/private_subnet1_cidr" \
    --type "String" \
    --value "192.168.1.128/26" \
    --overwrite

aws ssm put-parameter \
    --name "/prod/network/private_subnet2_cidr" \
    --type "String" \
    --value "192.168.1.192/26" \
    --overwrite

aws ssm put-parameter \
    --name "/prod/network/open_cidr" \
    --type "String" \
    --value "0.0.0.0/0" \
    --overwrite

aws ssm put-parameter \
    --name "/prod/network/zone1" \
    --type "String" \
    --value "us-east-1a" \
    --overwrite

aws ssm put-parameter \
    --name "/prod/network/zone2" \
    --type "String" \
    --value "us-east-1b" \
    --overwrite
aws ec2 import-key-pair --key-name info --public-key-material fileb://~/.ssh/id_rsa.pub
