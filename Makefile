
all: up

up:
	@mkdir -p /home/mmaila/data/wp-db
	@mkdir -p /home/mmaila/data/wp-files
	docker compose -f ./srcs/docker-compose.yml up

down:
	docker compose -f ./srcs/docker-compose.yml down

stop:
	docker compose -f ./srcs/docker-compose.yml stop

prune:
	@docker system prune -a --volumes -f
