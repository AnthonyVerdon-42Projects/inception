all:
	make up

up: down
	make build	
	-mkdir /home/averdon/data
	-mkdir /home/averdon/data/wordpress
	-mkdir /home/averdon/data/mariadb
	-mkdir /home/averdon/data/redis
	-mkdir /home/averdon/data/minecraft_server
	docker-compose -f srcs/docker-compose.yml up -d

down:
	docker-compose -f srcs/docker-compose.yml down

build: 
	docker-compose -f srcs/docker-compose.yml build

clean: down
	docker system prune -af

fclean: clean
	docker volume prune -f
	-sudo rm -r /home/averdon/data

re:
	make fclean
	make up

.PHONY : all up down build clean fclean re
