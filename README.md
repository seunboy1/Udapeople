# UdaPeople
A CI-CD pipeline for a client/server TypeScript project hosted on AWS EC2 and CloudFront and monitored with Prometheus.

## Repo Structure
It contains the following files:
1. CircleCI + Ansible configurations - `.circleci` folder
2. GitHub Actions workflow to trigger CircleCI - `.github` folder
3. Backend app - `backend` folder
4. Frontend app - `frontend` folder
5. Screenshots folder - `screenshots`

<br/>


## Resource Used

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

| KEY                    | VALUE                                    |
| ---------------------- | ---------------------------------------- |
| AWS_ACCESS_KEY_ID      | (from IAM user with programmatic access) |
| AWS_SECRET_ACCESS_KEY  | (from IAM user with programmatic access) |
| AWS_DEFAULT_REGION     | (your default region in aws)             |
| TYPEORM_CONNECTION     | postgres                                 |
| TYPEORM_MIGRATIONS_DIR | ./src/migrations                         |
| TYPEORM_ENTITIES       | ./src/modules/domain/\*_/_.entity.ts     |
| TYPEORM_MIGRATIONS     | ./src/migrations/\*.ts                   |
| TYPEORM_HOST           | {your postgres database hostname in RDS} |
| TYPEORM_PORT           | 5432                                     |
| TYPEORM_USERNAME       | {your postgres database username in RDS} |
| TYPEORM_PASSWORD       | {your postgres database username in RDS} |
| TYPEORM_DATABASE       | postgres                                 |
| THISDB_BUCKET          | {Your bucket name from thisdb.com}       |
| THISDB_API_KEY         | {Your API key from thisdb.com}           |

3. Create a sample **public** S3 bucket
4. Setup a CloudFront distribution using CloudFormation; `.circleci/files/cloudfront.yml`
5. Sign up and set up a key bucket on [KVDB](https://kvdb.io/) (needed inside the circleci `config.yml` file)
6. Run `config.yml` file
7. **Extras:** Setup an EC2 instance for Prometheus and add monitoring configurations

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
