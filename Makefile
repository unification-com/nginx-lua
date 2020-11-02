.DEFAULT_GOAL := build

.PHONY: all, run

build:
	docker-compose --file Docker/docker-compose.yml build

up:
	docker-compose --file Docker/docker-compose.yml up

run:
	docker run -it docker_nginx /bin/bash

exec:
	docker exec -it nginx /bin/bash

test:
	curl http://localhost:8080
