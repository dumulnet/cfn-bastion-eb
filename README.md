# cfn-bastion-eb

## 사전 준비
1. AWS 콘솔 > S3 > Create bucket: cfn 템플릿 파일을 업로드합니다.(직접 템플릿 파일의 S3 웹 주소를 호출해서 생성하는 경우에는 불필요)
1. AWS 콘솔 > Seoul Region > EC2 > Network & Security > Key Pairs > Create key pair

## 구성도

### Main template
[![main](./docs/images/main.png)](https://dumulnet.github.io/cfn-bastion-eb)
### VPC 
[![vpc](./docs/images/vpc.png)](https://dumulnet.github.io/cfn-bastion-eb/vpc)
### Bastion 
[![bastion](./docs/images/bastion.png)](https://dumulnet.github.io/cfn-bastion-eb/bastion)
### Elastic Beanstalk 
[![eb](./docs/images/eb.png)](https://dumulnet.github.io/cfn-bastion-eb/eb)

## 배포

To deploy the solution, you use [AWS CloudFormation](https://aws.amazon.com/cloudformation). You can use the CloudFormation console, or download the CloudFormation template to deploy it on your own.

> **Note:** You must have IAM permissions to launch CloudFormation templates that create IAM roles, and to create all the AWS resources in the solution. Also, you are responsible for the cost of the AWS services used while running this solution. For more information about costs, see the pricing pages for each AWS service.

## Use the CloudFormation console

**To deploy the solution using the CloudFormation console**

1. Click the **Launch on AWS** button to open the solution in the CloudFormation console.


[![Launch the AWS Elastic Beanstalk app with CloudFormation](./docs/images/deploy-to-aws.png)](https://console.aws.amazon.com/cloudformation/home?region=ap-northeast-2#/stacks/quickcreate?templateUrl=https%3A%2F%2Frnd-cfn-repository-20221009.s3.ap-northeast-2.amazonaws.com%2Fcfn-bastioin-eb%2Fmain.yml&stackName=prj-cfn-stack&param_AppIngressPort=80&param_AppS3Bucket=&param_AppS3Key=php.zip&param_AutoScalingMaxInstanceCount=6&param_AutoScalingMinInstanceCount=2&param_AvailabilityZone1=ap-northeast-2a&param_AvailabilityZone2=ap-northeast-2c&param_EC2KeyPairName=&param_ELBIngressPort=80&param_EbInstanceType=t3.small&param_EnvironmentName=dev&param_KeyName=&param_LogRetentionInDays=30&param_MFA=false&param_SSHFrom=0.0.0.0%2F0&param_SSLCertificateArn=&param_StackType=php)


2. If necessary, sign in with your AWS account credentials.
3. You should see a **Create stack** page, with pre-populated fields that specify the CloudFormation template. Choose the **Next** button at the bottom of the page.
4. On the **Specify stack details** page, enter values for the
   following fields:

    - **RootDomainName:** Your registered domain name, such as example.com. This domain must be pointed to a Route 53 hosted zone.
    - **NotionURL** The Notion web link url containing the domain being used.

   After entering values, choose the **Next** button.
5. On the **Configure stack options** page, you can optionally [add tags and other stack options](https://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/cfn-console-add-tags.html). When finished, choose the **Next** button.
6. On the **Review** page, you must scroll down and check the two boxes in the **Capabilities** section:

    - **I acknowledge that AWS CloudFormation might create IAM resources with custom names.**
    - **I acknowledge that AWS CloudFormation might require the following capability: CAPABILITY_AUTO_EXPAND**

    These capabilities allow CloudFormation to create an IAM role that allows access
   to the stack’s resources, and to name the resources dynamically.
7. Choose the **Create stack** button.
8. Wait for the CloudFormation stack to launch. The stack launches some nested stacks, and can take several minutes to finish. When it’s launched, the **Status** changes to **CREATE_COMPLETE**.
9. After the stack is launched, go to **www.example.com** to view your website (replace **example.com** with your domain name). You should see the website’s default content:

### Download the CloudFormation template

To download the CloudFormation template to deploy on your own, go to: [Download](main/main.yml)
