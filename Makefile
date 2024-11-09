
all: up

up:
	@mkdir -p ~/data/wp-db
	@mkdir -p ~/data/wp-files
	docker compose -f ./srcs/docker-compose.yml up -d

down:
	docker compose -f ./srcs/docker-compose.yml down

stop:
	docker compose -f ./srcs/docker-compose.yml stop

prune:
	@docker system prune -a --volumes -f
