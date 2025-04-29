# Betcycle

> _A DevOps Quest from Exploration to Production_

BetCycle covers the full lifecycle of software development and deployment from exploration to production, with an emphasis on the following topics:
- Application development
- CI/CD pipeline design and implementation
- Internal Developer Platform capabilities implementation and exploration 

The goal is to embark on a quest that starts with writing code in the local environment (aka my laptop) - and finishes in production. The path to production includes writing and testing code, building artifacts, deploying artifacts in production, monitoring, security, and cost.


## Cycling data

The cycling data can be found in the [ProCyclingStats](https://www.procyclingstats.com/)

## Deployment Pipeline

The deployment pipeline has the following stages:

1. Source Control
2. Continuous Integration
3. Continuous Delivery

## Database

### Database migrations


---

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