NAME=inception

all:
	cd srcs && \
	sudo COMPOSE_PROJECT_NAME=$(NAME) docker compose build && \
	sudo COMPOSE_PROJECT_NAME=$(NAME) docker compose up

re: fclean all

clean:
	cd srcs && \
	sudo COMPOSE_PROJECT_NAME=$(NAME) docker compose down

fclean: clean
	yes | sudo docker system prune --all