---
layout: page
title: "Peer Response (Molly Fraser)"
parent: "Unit 3: Cloud Design Tools"
nav_order: 1
---

<b>Peer Response: Cloud Design Tools</b>  


Student Name: Molly Fraser   

Topic: Draw.io as the preferred cloud design tool for multi-cloud environments

<b>Original Post:</b> I have chosen diagrams.net (formerly draw.io) as the cloud design tool I consider superior for most architecture work. Its strength is that it combines the capabilities that matter in practice without the constraints of commercial alternatives such as Lucidchart, Cloudcraft or Microsoft Visio.


First, it is provider neutral. It ships with official shape libraries for AWS, Azure and Google Cloud as well as Kubernetes and generic network components, so one tool can model single cloud, hybrid and multi cloud designs. Tools tied to one provider or one pricing model make comparison across providers harder, which matters in a module comparing Azure and Google Cloud.


Second, it is free and open source, so cost does not limit who can contribute to design reviews. Paid tools often put collaboration, export or revision history behind subscriptions.

Third, it gives control over where data lives. Diagrams can be saved locally or to Git repositories, OneDrive or Google Drive, and the desktop application works offline. Architecture diagrams reveal network layout, trust boundaries and service dependencies, so keeping them out of a third party SaaS is a real security benefit.

Fourth, diagram files can be saved as uncompressed XML, version controlled, reviewed in pull requests and exported to SVG or PNG for documentation. This fits infrastructure as code and DevOps practice better than proprietary formats.

There are trade offs. Cloudcraft and similar tools can import live infrastructure and estimate costs, which diagrams.net cannot do natively, and its real time collaboration is less polished than commercial rivals. However, for design intent, communication and documentation, which is the purpose of a design tool, I believe these limitations matter less than portability, security and cost.

In summary, diagrams.net is superior because it is neutral, free, controllable and compatible with modern engineering workflows.

<b>References</b>

JGraph Ltd (n.d.) diagrams.net documentation. Available at: https://www.diagrams.net (Accessed: 26 October 2026).
Lucid Software Inc. (n.d.) Lucidchart cloud architecture diagrams. Available at: https://www.lucidchart.com (Accessed: 26 October 2026).
Cloudcraft (n.d.) Cloudcraft documentation. Available at: https://www.cloudcraft.co (Accessed: 26 October 2026).

<hr>

<b>Peer Response:</b> I agree with your assessment of diagrams.net as a cloud design tool. Its provider neutrality and open-source nature make it an excellent choice for multi-cloud environments. Its simple interface also allows quick diagramming without the overhead of learning a complex tool, which benefits teams iterating rapidly on designs as well as non-technical stakeholders.

Your point about version control stood out, as this is where the tool I chose, AWS Infrastructure Composer, takes a different approach. Rather than producing a diagram that sits alongside the infrastructure code, Composer turns the diagram into the code itself. Resources dragged onto its canvas become a CloudFormation or AWS Serverless Application Model (SAM) template that can be deployed directly (AWS, n.d.a). With local sync enabled, these templates are saved straight to the developer’s machine, where they can be committed to Git like any other code (AWS, n.d.b).

This addresses a limitation you acknowledged. A diagrams.net file records design intent, but nothing guarantees it still matches the infrastructure it describes, and diagrams tend to drift over time. In Composer, the diagram and the template are the same artefact, so one cannot fall out of step with the other.

The trade-off is the reverse of yours. Composer only supports AWS, so it offers none of the neutrality you rightly value when comparing multi-cloud providers.

Overall, I think diagrams.net remains the stronger choice for communicating and comparing designs across providers, and your case for it is convincing. I know you value open-source and provider-neutral tooling, but what, if anything, would make you consider a proprietary tool that is free to use, such as Composer? For example, would keeping diagrams automatically in step with deployable code outweigh being tied to a single provider?


<b>References</b>

AWS (n.d.a) Create templates visually with Infrastructure Composer. Available at: https://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/app-composer-for-cloudformation.html (Accessed: 27 October 2026).

AWS (n.d.b) Manage your project from the Infrastructure Composer console. Available at: https://docs.aws.amazon.com/infrastructure-composer/latest/dg/using-composer-project.html (Accessed: 27 October 2026).


