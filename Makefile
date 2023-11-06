NAME			= inception
VOL_LOCCATION	= /home/khorike/data

all: 
	@mkdir -p $(VOL_LOCCATION)/mariadb
	@mkdir -p $(VOL_LOCCATION)/wordpress
	@ cd srcs && \
	sudo COMPOSE_PROJECT_NAME=$(NAME) docker compose build && \
	sudo COMPOSE_PROJECT_NAME=$(NAME) docker compose up

re: fclean all

clean:
	@cd srcs && \
	sudo COMPOSE_PROJECT_NAME=$(NAME) docker compose down

fclean: clean
	@yes | sudo docker system prune --all
	@yes | sudo rm -rf $(VOL_LOCCATION)