aws s3 ls
aws s3 cp bastion.yaml s3://episyche-ems-assets/
aws cloudformation create-stack --stack-name bastion-stack-1 --template-url https://episyche-ems-assets.s3.ap-south-1.amazonaws.com/bastion.yaml --parameters ParameterKey=KeyPair,ParameterValue=ci_cd_bastion_keypair ParameterKey=VpcId,ParameterValue=vpc-0462743ddeb841ac5 ParameterKey=Subnet1,ParameterValue=subnet-0b1b21275efb81b93 ParameterKey=Subnet2,ParameterValue=subnet-0709852476ace75f8 ParameterKey=SourceCidr,ParameterValue=0.0.0.0/0
