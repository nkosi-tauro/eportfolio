---
layout: page
title: "Unit 1: AWS vs GCP"
parent: "Module: Cloud Operations and Management"
nav_order: 2
---

## Comparing AWS and Google Cloud: Service Models, Pricing, Availability and Developer Experience

<br>


Cloud providers compete for customers on pricing, availability and developer experience. This post compares how Amazon Web Services (AWS) and Google Cloud Platform (GCP) structure their services and attract customers to their platforms.


<b>Service Models</b>


Both providers offer services across various cloud service models, such as Infrastructure as a Service (IaaS) and Platform as a Service (PaaS). They also offer serverless and container options that sit between IaaS and PaaS (Google Cloud, 2024).

| Model        | AWS         | GCP   |
|:-------------|:------------------|:------|
| IaaS         | EC2, EBS, VPC | Compute Engine, VPC |
| PaaS         | Elastic Beanstalk, RDS | App Engine, Cloud SQL |
| Containers   | ECS, Fargate, EKS | GKE, Cloud Run |
| Serverless   | Lambda | Cloud Run functions |
| Data and AI  | Bedrock, Redshift | BigQuery, Agent Platform |



<b>Pricing and Credit Programmes</b>. 


Both providers offer generous startup packages and free tiers for new users. AWS Activate offers up to $200,000 in credits through its Portfolio tier. The Google for Startups Cloud Program offers up to $200,000 over two years, rising to $350,000 for AI-first startups (Fin, 2026). Both require the organisation to qualify, typically through venture partners.

In general pricing, list prices for services are within 10–20% of each other (RunXBuild, 2026). Price is therefore rarely the deciding factor. More often, the deciding factor is which provider attracted the organisation first through credits. Once workloads, skills and data are in one ecosystem, switching costs create vendor lock-in.



<b>Availability</b>.


Platform availability between cloud providers is measured in Regions, Availability Zones (AZ) and Edge locations (AWS, n.d; Google Cloud, 2026).

| Cloud Provider        | AWS         | GCP   |
|:-------------|:------------------|:------|
| Regions         | +39 | +43 |
| Availability Zones | +124 | +130 |
| Edge Locations | +218 | +171 |


Organisations may choose a provider because of local regulations. For example, South Africa’s Protection of Personal Information Act (POPIA) and the EU’s GDPR place conditions on where and how personal data is stored and transferred. These rules can sway an organisation towards the provider with a region in its country.


Cost can outweigh location, however. In Southern Africa, AWS’s af-south-1 (Cape Town) region came online in 2020 (McKane, 2020). Because of the price premium that comes with smaller economies of scale, many organisations chose to stay in eu-west-1 (Ireland).




<b>Developer Experience</b>


AWS and GCP have broad feature parity across their core services (Google Cloud, 2024). Much of why developers choose one over the other comes down to how each platform feels to use.


AWS offers a unified experience, and its product names, while often acronyms such as S3 (Simple Storage Service) and EC2 (Elastic Compute Cloud), become familiar with use. Its breadth of products, though, leads to overlapping services and decision fatigue. Choosing between ECS and EKS for containers is a common example (Singh, 2020).


Google uses more descriptive names, such as Cloud Storage and Cloud SQL. It does, however, have a history of renaming products. For example, Vertex AI has now become Agent Platform. These changes cause confusion when developers follow documentation and tutorials.


<b>Conclusion</b>

There is no definitive cloud platform to select. In practice, the decision comes down to business requirements, the regulations an organisation must comply with, and which provider offers the most attractive credit package. That credit package is designed to bring customers into the provider’s ecosystem and keep them there.



<b>References:</b>


AWS (n.d.) AWS Global Infrastructure. Available at: https://aws.amazon.com/about-aws/global-infrastructure/ (Accessed: 22 October 2026).


Fin (2026) Startup Programs Compared 2026: AWS, Google, Microsoft. Available at: https://fin.ai/learn/startup-credit-programs (Accessed: 22 October 2026). 


Google Cloud (2024) Compare AWS and Azure services to Google Cloud. Available at: https://docs.cloud.google.com/docs/get-started/aws-azure-gcp-service-comparison (Accessed: 22 October 2026).


Google Cloud (2026) Cloud locations.  Available at: https://cloud.google.com/about/locations (Accessed: 22 October 2026).


McKane, J. (2020) AWS Cape Town region goes live. MyBroadband. Available at: https://mybroadband.co.za/news/cloud-hosting/349001-aws-cape-town-region-goes-live.html  (Accessed: 22 October 2026).


RunXBuild (2026) AWS vs GCP Pricing for Startups: Credits, Sustained Use, and the Real Cost. Available at: https://www.runxbuild.com/blog/aws-vs-gcp-pricing-startups/ (Accessed: 22 October 2026).


Singh, D. (2020) Amazon ECS vs Amazon EKS: making sense of AWS container services. Available at: https://aws.amazon.com/blogs/containers/amazon-ecs-vs-amazon-eks-making-sense-of-aws-container-services/ (Accessed: 22 October 2026)