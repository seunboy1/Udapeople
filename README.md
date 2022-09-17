
# Udacity Cloud DevOps Engineer Nanodegree Project 3
My repo for the third nanodegree project - Give your Application Auto-Deploy Superpowers.

## Repo Structure
It contains the following files:
1. CircleCI + Ansible configurations - `.circleci` folder
2. GitHub Actions workflow to trigger CircleCI - `.github` folder
3. Backend app - `backend` folder
4. Frontend app - `frontend` folder
5. Screenshots folder - `screenshots`

Submitted deploy URL: http://udapeople-01dd2a8.s3-website-us-east-1.amazonaws.com
<br/>


## What's Needed
Links to resources are at the end:
### 1. AWS
You would need to have an AWS account (a free tier works, but please take note of resources that are not free/eligible for free tier)

### 2. CircleCI
Cloud-based CI-CD tool

### 3. Ansible
Configuration management tool

### 4. Prometheus
Environment monitoring tool

<br/>

## How to run

1. Create AWS RDS database
2. Setup repo as a CircleCI project and add all necessary configurations: Environment variables, SSH keys, API tokens(for GitHub actions trigger), Slack integrations(for alerts), etc
3. Create a sample **public** S3 bucket
4. Setup a CloudFront distribution using CloudFormation; `.circleci/files/cloudfront.yml`
5. Sign up and set up a key bucket on [KVDB](https://kvdb.io/) (needed inside the circleci `config.yml` file)
6. Run `config.yml` file
7. **Extras:** Setup an EC2 instance for Prometheus and add monitoring configurations

<br/>

## Confirm Your Running App

1) **Frontend app:** `S3-Bucket-URL` (Grab from CloudFormation stack) or CloudFront distribution link
2) **Backend app:** `[your-backend-EC2-DNS]:3030/api/status`
3) **Database:** setup postgres db server with pgAdmin

<br/>

### Built With
- [Amazon AWS](https://aws.amazon.com/) - Cloud services
- [AWS CLI](https://aws.amazon.com/cli/) - AWS Command-line tool
- [CloudFormation](https://aws.amazon.com/cloudformation/) - Infrastructure-as-code (IaC)
- [Circle CI](www.circleci.com) - Cloud-based CI/CD service
- [GitHub Actions](https://github.com/features/actions) - Cloud-based CI/CD service
- [Ansible](https://www.ansible.com/) - Configuration management tool
- [Prometheus](https://prometheus.io/) - Monitoring tool

### License

[License](LICENSE.md)
