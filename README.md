# devops04-immutable-infra

this project is made to run on minikube but you can configure it to run in aws.

# Set-up

0- minikube should be runnig

1- create a security group for an aws rds with postgres inbound rules

2- in the file infrastructure/kubernetes/main.tf add your path to minikube config file
    or configure it to run on aws

3- in the file infrastructure/kubernetes/terraform.tfvars fill the docker image and the database_url

4- in the infrastructure/rds/terraform.tfvars fill the profile(aws user profile) and password(the db password)

5- in the file infrastructure/rds/main.tf put your rds security group

6- and thats it!. run inside kubernetes and rds folder the command:
    terraform apply -var-file=terraform.tfvars --auto-approve



