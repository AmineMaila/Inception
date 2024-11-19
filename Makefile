
all: up

up:
	@mkdir -p ~/data/wp-db
	@mkdir -p ~/data/wp-files
	docker compose -f ./srcs/docker-compose.yml up --build -d

down:
	docker compose -f ./srcs/docker-compose.yml down

stop:
	docker compose -f ./srcs/docker-compose.yml stop

rm:
	docker compose -f ./srcs/docker-compose.yml rm -f

prune:
	@docker system prune -a --volumes -f
