aws cloudformation deploy \
  --template-file provision.yml \
  --stack-name PrometheusStack \
  --profile udapeople \
  --capabilities CAPABILITY_NAMED_IAM
