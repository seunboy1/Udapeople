# Udapeople DevOps Project

[![CircleCI](https://circleci.com/gh/ahmedaidev/udapeople/tree/main.svg?style=svg)](https://circleci.com/gh/ahmedaidev/udapeople/tree/main)

![pipeline](https://raw.githubusercontent.com/ahmedaidev/udapeople/master/pipeline.jpg)

A CI-CD pipeline for a client/server TypeScript project hosted on AWS EC2 and CloudFront and monitored with Prometheus, with Slack notifications used for alerts.

## Prerequisites

- [Nodejs 13](https://nodejs.org/en/)
- [Docker](https://www.docker.com/)
- [GitHub account](https://github.com)
- [CircleCi account](https://circleci.com)
- [AWS account](https://aws.amazon.com/)
- [ThisDB api key and bucket](https://thisdb.com)

## Development

### Configuration

1. Inside the backend folder rename ".env.sample"

```
cd backend
mv .env.sample .env
```

### Steps

1. Start the database

```
cd util
docker compose up
```

2. Start the backend

```
cd backend
npm install
npm run start:dev
```

3. Start the frontend

```
cd frontend
npm install
npm run start
```

## Production

### Steps

1. Fork the repository.

2. In you AWS account create an RDS PostgreSQL instance.

3. Connect the repository to CircleCi (Cancel workflow).

4. Inside CircleCi console, edit project settings to set environment variables.

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

5. Run the workflow again to deploy the project in your AWS infrastructure.

## Built With

- [Circle CI](www.circleci.com) - Cloud-based CI/CD service
- [Amazon AWS](https://aws.amazon.com/) - Cloud services
- [CloudFormation](https://aws.amazon.com/cloudformation/) - Infrastructure as code
- [Ansible](https://www.ansible.com/) - Configuration management tool
- [Prometheus](https://prometheus.io/) - Monitoring tool
