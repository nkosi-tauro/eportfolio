---
layout: page
title: "Unit 3: Cloud Design Tools"
parent: "Module: Cloud Operations and Management"
nav_order: 4
---


## Summary: AWS Infrastructure Composer

As a predominantly AWS engineer, I consider AWS Infrastructure Composer to be the superior cloud design tool. Although it is limited to AWS, its direct integration with CloudFormation makes it invaluable for engineers designing services on that platform (AWS, n.d.).

Its main strength is that the diagram and the infrastructure code are the same artefact. Designs can be built visually by dragging and dropping resources onto a canvas, or by editing the CloudFormation template in JSON or YAML, and the two stay synchronised in real time. Once the design is complete, the resulting template can be deployed through CloudFormation, so the architecture that was designed is the architecture that gets provisioned. It is also available both in the AWS Console and in VS Code through the AWS Toolkit, the latter being the preferred way to design your services (AWS, n.d.).

Because the design is stored as a template (.yaml or .json) file rather than a proprietary diagram, it can be kept in version control alongside the application code, giving the architecture a full change history and allowing it to be reviewed like any other code. Composer can also open existing CloudFormation templates and visualise them, which is useful when inheriting infrastructure written by others.

This is where it surpasses general-purpose tools such as Lucidchart or draw.io. In those tools, a diagram is only a picture: once the infrastructure changes, the diagram drifts out of date unless someone updates it manually. With Infrastructure Composer, the diagram is generated from the code itself, so it cannot fall out of sync. The trade-off is that it is AWS-only, so for multi-cloud environments a tool such as Lucidchart would be more appropriate. For teams working primarily on AWS, however, I believe that trade-off is worth it.


<b>References</b>:

AWS (n.d.) What is AWS Infrastructure Composer? Available at: https://docs.aws.amazon.com/infrastructure-composer/latest/dg/what-is-composer.html (Accessed: 26 October 2026)

AWS (n.d.) Access Infrastructure Composer from the AWS Toolkit for Visual Studio Code? Available at:  https://docs.aws.amazon.com/infrastructure-composer/latest/dg/setting-up-composer-access-ide.html (Accessed: 26 October 2026)



