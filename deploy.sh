aws s3 ls
aws s3 cp bastion.yaml s3://episyche-ems-assets/
aws cloudformation create-stack --stack-name bastion-stack-1 --template-url https://episyche-ems-assets.s3.ap-south-1.amazonaws.com/bastion.yaml --parameters ParameterKey=KeyName,ParameterValue=dataload_appsync
