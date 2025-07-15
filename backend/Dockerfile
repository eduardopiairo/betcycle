FROM python:3.13.5

WORKDIR /usr/src/app

COPY requirements.txt ./
RUN pip install --no-cache-dir -r requirements.txt



# Copy poetry.lock* in case it doesn't exist in the repo
#COPY ./betcycle/backend/app/requirements.txt /app/
#COPY ./app/requirements.txt /app/

# Allow installing dev dependencies to run tests
#ARG INSTALL_DEV=false
#RUN bash -c "pip install -r requirements.txt"

#COPY ./betcycle/backend/app /app
#COPY ./app /app

CMD ["uvicorn", "main:app", "--host", "0.0.0.0", "--port", "8000"]
