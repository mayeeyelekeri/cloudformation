# DEV values 
aws ssm put-parameter \
    --name "/dev/vpc/vpc_cidr" \
    --type "String" \
    --value "10.0.0.0/24" \
    --overwrite

aws ssm put-parameter \
    --name "/dev/vpc/public_subnet1_cidr" \
    --type "String" \
    --value "10.0.0.0/26" \
    --overwrite

aws ssm put-parameter \
    --name "/dev/vpc/public_subnet2_cidr" \
    --type "String" \
    --value "10.0.0.64/26" \
    --overwrite

aws ssm put-parameter \
    --name "/dev/vpc/private_subnet1_cidr" \
    --type "String" \
    --value "10.0.0.128/26" \
    --overwrite

aws ssm put-parameter \
    --name "/dev/vpc/private_subnet2_cidr" \
    --type "String" \
    --value "10.0.0.192/26" \
    --overwrite

aws ssm put-parameter \
    --name "/dev/vpc/open_cidr" \
    --type "String" \
    --value "0.0.0.0/0" \
    --overwrite

#### PROD values 
aws ssm put-parameter \
    --name "/prod/vpc/vpc_cidr" \
    --type "String" \
    --value "192.168.1.0/24" \
    --overwrite

aws ssm put-parameter \
    --name "/prod/vpc/public_subnet1_cidr" \
    --type "String" \
    --value "192.168.1.0/26" \
    --overwrite

aws ssm put-parameter \
    --name "/prod/vpc/public_subnet2_cidr" \
    --type "String" \
    --value "192.168.1.64/26" \
    --overwrite

aws ssm put-parameter \
    --name "/prod/vpc/private_subnet1_cidr" \
    --type "String" \
    --value "192.168.1.128/26" \
    --overwrite

aws ssm put-parameter \
    --name "/prod/vpc/private_subnet2_cidr" \
    --type "String" \
    --value "192.168.1.192/26" \
    --overwrite

aws ssm put-parameter \
    --name "/prod/vpc/open_cidr" \
    --type "String" \
    --value "0.0.0.0/0" \
    --overwrite

