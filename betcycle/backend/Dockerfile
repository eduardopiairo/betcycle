FROM tiangolo/uvicorn-gunicorn-fastapi:python3.7

WORKDIR /app/



# Copy poetry.lock* in case it doesn't exist in the repo
#COPY ./betcycle/backend/app/requirements.txt /app/
COPY ./app/requirements.txt /app/

# Allow installing dev dependencies to run tests
ARG INSTALL_DEV=false
RUN bash -c "pip install -r requirements.txt"

#COPY ./betcycle/backend/app /app
COPY ./app /app

CMD ["uvicorn", "main:app", "--host", "0.0.0.0", "--port", "8000"]
