
all: up

up:
	@mkdir -p ~/data/wp-db
	@mkdir -p ~/data/wp-files
	docker compose -f ./srcs/docker-compose.yml up --build 

down:
	@rm -rf ~/data/wp-db
	@rm -rf ~/data/wp-files
	docker compose -f ./srcs/docker-compose.yml down

stop:
	docker compose -f ./srcs/docker-compose.yml stop

rm:
	docker compose -f ./srcs/docker-compose.yml rm -f

logs:
	docker compose -f ./srcs/docker-compose.yml logs

ps:
	docker compose -f ./srcs/docker-compose.yml ps

prune:
	@docker system prune -a --volumes -f
