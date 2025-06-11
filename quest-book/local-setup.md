# Local Setup

### Docker

Build docker image
```
docker build --tag betcycle-backend:0.0.1  .
```

Run container
```
docker run --name betcycle-backend  -p 8000:8000 -d betcycle-backend:0.0.1