COMPOSE = @docker-compose -f srcs/docker-compose.yml

.PHONY: all up down re rm-volumes ps

all: up

up:
	${COMPOSE} up --build -d

down:
	${COMPOSE} down

re: down
	@make --no-print-directory

clean:
	${COMPOSE} rm -sfv \$(docker ps -a -q)

ps:
	${COMPOSE} ps -a
