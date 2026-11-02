---
layout: page
title: "Cloud Configuration"
parent: "Unit 5: Cloud Native Technology Part 2"
---

## Cloud Configuration  


<b>Task</b>  
Create a small script or configuration using a cloud design tool of your choice (e.g., MS Azure, AWS CLI), and write a brief report on your experience and challenges faced.

<hr>

For this task, I chose to use **AWS CloudFormation** as my design tool to create a simple template that creates an S3 Bucket that is encrypted and not publicly accessible. I have prior experience with AWS, and I wanted to explore how CloudFormation could help automate the deployment of resources in a repeatable and consistent manner.

**Cloud Formation Template**:
```yaml
AWSTemplateFormatVersion: '2010-09-09'
Description: 'A simple CloudFormation template to deploy an S3 bucket with public access blocked and encryption enabled.'

Resources:
  EssexSecureBucket:
    Type: 'AWS::S3::Bucket'
    Properties:
      BucketName: !Sub 'essexuni-storage-${AWS::AccountId}-${AWS::Region}'
      PublicAccessBlockConfiguration:
        BlockPublicAcls: true
        BlockPublicPolicy: true
        IgnorePublicAcls: true
        RestrictPublicBuckets: true
      BucketEncryption:
        ServerSideEncryptionConfiguration:
          - ServerSideEncryptionByDefault:
              SSEAlgorithm: 'AES256'

Outputs:
  BucketName:
    Description: 'Name of the bucket created in S3'
    Value: !Ref EssexSecureBucket
```

Creating templates in CloudFormation is quite straightforward, but it does require a good understanding of AWS resources and their properties (AWS CloudFormation, n.d.a). To begin creating a template, you first need to define the resources you want to provision.

I defined an S3 bucket with a unique name that includes the AWS account ID and region to ensure it is globally unique. I also specified that public access should be blocked and that server-side encryption should be enabled using AES256.

Most of the resource properties, line up with the AWS Console options, so it is easy to translate what you see in the console into a CloudFormation template (At least for me as I'm an AWS user). However, it is important to refer to the AWS documentation to ensure that you are using the correct syntax and property names.

Once defined, you can deploy the template. This will require you to be authenticated with AWS using your IAM credentials. Once authenticated, ensure you are in the correct region and account where you want to create the resources.

Your IAM user will also need to have the necessary permissions to create the resources defined in your template. I have `AdministratorAccess` permissions, which grants me access to all AWS resources. However, if you were creating a once off user, make sure you give it the least privilege necessary to perform the actions defined in your template.

One of the challenges I faced was ensuring that the bucket name was unique across all AWS accounts, as S3 bucket names must be globally unique. To address this, I used the `!Sub` intrinsic function to append the AWS account ID and region to the bucket name (AWS CloudFormation, n.d.b). 




**References**:  

AWS CloudFormation. (n.d.a). *CloudFormation template format*. Available from https://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/template-formats.html (Accessed: 2 November 2026)

AWS CloudFormation. (n.d.b). *Fn::Sub*. Available from https://docs.aws.amazon.com/AWSCloudFormation/latest/TemplateReference/intrinsic-function-reference-sub.html (Accessed: 2 November 2026)


