.PHONY: build up down run clean

DOCKER_COMPOSE := docker-compose

OS := $(shell uname)

ifeq ($(OS), Linux)
    BUILD_COMMAND := @echo "Running in $(OS)"; $(DOCKER_COMPOSE) build
else
    BUILD_COMMAND := $(DOCKER_COMPOSE) build
endif

build:
	$(BUILD_COMMAND)

up:
	$(DOCKER_COMPOSE) up -d

down:
	$(DOCKER_COMPOSE) down

clean:
	docker system prune -y


