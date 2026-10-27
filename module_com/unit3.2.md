---
layout: page
title: "Unit 3 Reflection:  Cloud Computing Fundamentals"
parent: "Module: Cloud Operations and Management"
nav_order: 5
---


### <i>Reflection on the differences and use cases of IaaS, PaaS, and SaaS, including examples from recent market trends.</i>  
  

IaaS, PaaS and SaaS are best understood as points on a spectrum of responsibility: the further along you move, the more the provider manages and the less control you retain.

Infrastructure as a Service (IaaS) provides the raw building blocks (compute, storage and networking) on a pay-as-you-go basis (AWS, n.d.). With Amazon EC2, for example, the user chooses instance sizes, configures storage and manages the operating system. This suits workloads that need fine-grained control, such as legacy applications being migrated to the cloud.

Platform as a Service (PaaS) abstracts the infrastructure away, leaving the user to focus on code. Services such as AWS Elastic Beanstalk or Google App Engine handle provisioning, scaling and patching, while developers simply deploy their application (AWS, n.d.). Serverless offerings like AWS Lambda push this further, charging only when code runs.

Software as a Service (SaaS) is the finished application, delivered and maintained entirely by the provider. Google Workspace is a typical example: users sign up, pay and use it, with no code or infrastructure to manage (Google Cloud, n.d.).

Recent market trends show these layers increasingly blurring. Managed AI platforms such as AWS Bedrock and Google Vertex AI behave like PaaS, giving developers access to foundation models without provisioning GPUs. Meanwhile, SaaS vendors are embedding AI directly into their products, as Google has done with Gemini in Workspace.

On reflection, the right choice depends less on the technology than on the organisation: its expertise, how much control it needs, and how quickly it must deliver. Smaller teams often lean on SaaS and PaaS to move quickly, reserving IaaS for workloads where control or cost genuinely justifies the extra overhead.


<b>References:</b>

AWS (n.d.) What is IaaS (Infrastructure as a Service)?. Available at: https://aws.amazon.com/what-is/iaas/  (Accessed: 27 October 2026)

AWS (n.d.) AWS Elastic Beanstalk. Available at: https://aws.amazon.com/elasticbeanstalk/ (Accessed: 27 October 2026)

Google Cloud (n.d.) What is IaaS?. Available at: https://cloud.google.com/learn/what-is-iaas?  (Accessed: 27 October 2026)
