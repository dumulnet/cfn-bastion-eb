# cfn-bastion-eb

## 사전 준비
1. AWS 콘솔 > S3 > Create bucket: cfn 템플릿 파일을 업로드합니다.(직접 템플릿 파일의 S3 웹 주소를 호출해서 생성하는 경우에는 불필요)
1. AWS 콘솔 > Seoul Region > EC2 > Network & Security > Key Pairs > Create key pair
 
 ## 배포

[![Launch the AWS Elastic Beanstalk app with CloudFormation](./docs/images/deploy-to-aws.png)](https://console.aws.amazon.com/cloudformation/home?region=ap-northeast-2#/stacks/quickcreate?templateUrl=https%3A%2F%2Frnd-cfn-repository-20221009.s3.ap-northeast-2.amazonaws.com%2Fcfn-bastioin-eb%2Fmain.yml&stackName=gc-cfn-stack&param_AppIngressPort=80&param_AppS3Bucket=&param_AppS3Key=&param_AutoScalingMaxInstanceCount=6&param_AutoScalingMinInstanceCount=2&param_AvailabilityZone1=ap-northeast-2a&param_AvailabilityZone2=ap-northeast-2c&param_EC2KeyPairName=&param_ELBIngressPort=80&param_EbInstanceType=t3.small&param_EnvironmentName=dev&param_KeyName=greencross&param_LogRetentionInDays=30&param_MFA=false&param_SSHFrom=0.0.0.0%2F0&param_SSLCertificateArn=&param_StackType=php)
