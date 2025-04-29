# BetCycle

> _A DevOps Quest from Exploration to Production_

BetCycle covers the full lifecycle of software development and deployment from exploration to production, with an emphasis on automation, tools, and best practices.

The goal is to embark on a quest that starts with writing code in the local environment (aka my laptop) - and finishes in production. The path to production includes writing and testing code, building artifacts, deploying artifacts in production, monitoring, security, and cost.

During this quest, an application will be developed while exploring various tools to support the path to production.

My goals for this quest are aimed at enhancing the development and deployment processes within the BetCycle project, ensuring a seamless journey from code creation to production:

- __Application Development:__ Focus on improving programming skills, particularly in Python, to build robust and scalable components for the BetCycle application.
    - Improve my programming skills: Python, to build robust and scalable components for the BetCycle application.

- __CI/CD Pipeline__: Define and explore the anatomy of a CI/CD pipeline to automate and streamline the deployment process.
    - Define the anatomy of a CI/CD pipeline while exploring the different tools for the various stages of the pipeline, to automate and streamline the deployment process.

- __Platform Engineering__: Build an Internal Developer Platform to simplify and standardize development workflows for the BetCycle project.
    - Build an Internal Developer Platform to simplify and standardize development workflows for the BetCycle project.

- __Infrastructure as Code (IaC)__:  Enhance skills in Terraform to provision and manage infrastructure efficiently for BetCycle.
    - Improve my programming skills: Terraform, to provision and manage infrastructure efficiently for BetCycle.


## Key Areas

Here are the major components of the project and what can be explored in each:

__1. Local Development and Exploration__
- Tools for local development (e.g., Docker, Vagrant).
- Setting up a reproducible development environment.
- Designing a workflow that integrates seamlessly with CI/CD.

__2. CI/CD Pipelines__
- CI/CD tools like GitHub Actions, Jenkins, GitLab CI, CircleCI, etc.
- Writing pipelines as code (e.g., YAML configurations for GitHub Actions or GitLab).
- Triggering pipelines based on different events (e.g., code pushes, PRs).
- Automating tests (unit tests, integration tests, etc.).

__3. Infrastructure as Code (IaC)__
- Tools like Terraform, Pulumi, or AWS CloudFormation.
- Versioning and managing your infrastructure as you would code.
- Setting up environments (e.g., staging, production).


__4. Policies as Code__
- Tools like Open Policy Agent (OPA) or HashiCorp Sentinel.
- Defining and enforcing policies for deployments, security, and compliance.

__5. Internal Developer Platform (IDP)__
- Building a platform to abstract infrastructure and pipelines for developers.
- Tools like Backstage for developer portals.
- Creating self-service workflows for developers.

__6. Kubernetes__
- Orchestrating containerized applications with Kubernetes.
- Setting up clusters, managing workloads, and ensuring scalability.
- Tools like Helm for managing Kubernetes manifests.

__7. Monitoring and Security__
- Observability tools like Prometheus, Grafana, and ELK Stack.
- Security scanning tools like Snyk, Trivy, or Aqua.
- Setting up alerts and incident response practices.

__8. Cost Management__

- Tools like FinOps, AWS Cost Explorer, Azure Cost Analysis.
- Optimizing cloud resources to reduce costs.


## Roadmap

You can view the [project roadmap here](roadmap.md)

## Local Setup

How to make the [local setup](local-setup.d)


---
## Cycling data

The cycling data can be found in the [ProCyclingStats](https://www.procyclingstats.com/)


## Running locally

### Docker

Build docker image
```
docker build --tag betcycle-backend:0.0.1  .
```

Run container
```
docker run --name betcycle-backend  -p 8000:8000 -d betcycle-backend:0.0.1
```