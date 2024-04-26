# DEV values 
# bucket_name, project_name, project_description, source_provider, git_creds 

aws ssm put-parameter \
    --name "/dev/codebuild/bucket_name" \
    --type "String" \
    --value "codebuild" \
    --overwrite

aws ssm put-parameter \
    --name "/dev/codebuild/source_provider" \
    --type "String" \
    --value "github" \
    --overwrite

aws ssm put-parameter \
    --name "/dev/codebuild/project_name" \
    --type "String" \
    --value "springdemo2" \
    --overwrite

aws ssm put-parameter \
    --name "/dev/codebuild/project_description" \
    --type "String" \
    --value "Springboot test application" \
    --overwrite
    
aws ssm put-parameter \
    --name "/dev/codebuild/git_creds" \
    --type "String" \
    --value "git_creds" \
    --overwrite
    
#### PROD values 
aws ssm put-parameter \
    --name "/prod/codebuild/bucket_name" \
    --type "String" \
    --value "codebuild" \
    --overwrite

aws ssm put-parameter \
    --name "/prod/codebuild/source_provider" \
    --type "String" \
    --value "github" \
    --overwrite

aws ssm put-parameter \
    --name "/prod/codebuild/project_name" \
    --type "String" \
    --value "springdemo2" \
    --overwrite

aws ssm put-parameter \
    --name "/prod/codebuild/project_description" \
    --type "String" \
    --value "Springboot test application" \
    --overwrite
    
aws ssm put-parameter \
    --name "/prod/codebuild/git_creds" \
    --type "String" \
    --value "git_creds" \
    --overwrite

