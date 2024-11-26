
all: up

up:
	@mkdir -p ~/data/wp-db
	@mkdir -p ~/data/wp-files
	@mkdir -p ~/data/port-data
	docker compose -f ./srcs/docker-compose.yml up --build

down:
	docker compose -f ./srcs/docker-compose.yml down

stop:
	docker compose -f ./srcs/docker-compose.yml stop

rmv:
	sudo rm -rf ~/data/*

logs:
	docker compose -f ./srcs/docker-compose.yml logs

ps:
	docker compose -f ./srcs/docker-compose.yml ps

prune:
	@docker system prune -a --volumes -f
