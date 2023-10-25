FROM tiangolo/uvicorn-gunicorn-fastapi:python3.7

WORKDIR /app/



# Copy poetry.lock* in case it doesn't exist in the repo
COPY ./app/requirements.txt /app/

# Allow installing dev dependencies to run tests
ARG INSTALL_DEV=false
RUN bash -c "pip install -r requirements.txt"

COPY ./app /app
