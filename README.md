# BetCycle: A DevOps Quest From Exploration To Production

The purpose of this project is to explore the software development lifecycle through the deployment pipeline. I will use this project to share my knowledge, to explore tools and new approachs, for learning, and support my talks, posts, and other materials.  

The deployment pipeline, my favorite technical and cultural tool, will guide us in this quest from writing code in the local environment to the production environment.

Such quest includes the following elements:
- Application
- Deployment pipeline (aka CI/CD) 
- Infrastructure 


> ℹ️ _During the quest I will add information regarding each of the elements._  

## Application

The BetCycle backend is built with **Python** using the **FastAPI** framework.

### Tech Stack
- **Language**: Python 3.x
- **Framework**: FastAPI
- **Server**: Uvicorn (ASGI server)

### Local Setup

1. **Clone the repository**
   ```bash
   git clone <repository-url>
   cd betcycle/backend
   ```

2. **Create and activate a virtual environment**
   ```bash
   python -m venv venv
   source venv/bin/activate  # On Windows: venv\Scripts\activate
   ```

3. **Install dependencies**
   ```bash
   pip install -r requirements.txt
   ```

4. **Run the application**
   ```bash
   uvicorn app.main:app --reload
   ```

   The API will be available at: `http://localhost:8000`

### Available Endpoints

- `GET /` - Hello World endpoint
- `GET /health` - Health check endpoint
- `GET /docs` - Interactive API documentation (Swagger UI)
- `GET /redoc` - Alternative API documentation (ReDoc)

## Deployment Pipeline

> A deployment pipeline should enable __collaboration__ between the __various groups involved in delivering software__ and provide everyone __visibility about the flow of changes__ in the system, together with a thorough audit trail.
>
> by Martin Fowler, [Deployment Pipeline](https://martinfowler.com/bliki/DeploymentPipeline.html)

A deployment pipeline is a set of automated steps that move code changes from development to production.

- Build the application, run tests, perform code analysis, and deploy the code into the different target environments.
- We want to release quickly, reliably, and with high quality. 


### Pipeline diagram

Below is a simple diagram showing the three core stages of the deployment pipeline: Version Control → CI → CD.

![Deployment pipeline diagram](assets/pipeline_simple.png)



## Infrastructure

TBD
