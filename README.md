# Udapeople

 Prerequisites
Key pair - You should have an AWS EC2 key pair already created in your AWS Console, and downloaded to your local mahcine. We are assuming the key pair name is udacity.pem.
This repository set up in circleci
AWS Access keys must have saved in the CircleCI project settings.
You should have finished the previous Exercise: Infrastructure Creation and Exercise: Remote Control Using Ansible, and have the following files in your repo and local:
Save the SSH key pair
Verify the public IP address of the EC2 instance in your AWS console and the inventory file. If not, manually add the public IP address of your EC2 instance to the inventory file underneath [all]



aws cloudformation create-stack --stack-name myFirstTest --region us-east-1 --template-body file://infra.yml
aws cloudformation create-stack --stack-name myFirstTest --region us-east-1 --template-body file://infra.yml
aws cloudformation deploy --template-file infra.yml --stack-name myStack-new --region us-east-1 