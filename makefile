dc-build:
	docker-compose -f ./cycleflow/docker-compose-cycleflow-backend.yml build

dc-up:
	docker compose -f docker-compose.yml up -d

pi-req:
	pip install -r ./betcycle/backend/app/requirements.txt


