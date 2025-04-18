# Betcycle Project

A project to explore concepts related to the design and implementation of the deployment pipeline. I will use this project to share my knowledge about the deployment pipeline, explore new approaches, and support my talks, presentations, and posts ... 

The intended deployment pipeline will support applications, databases, and infrastructure changes. 


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