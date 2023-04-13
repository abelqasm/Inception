up:
	cd ./srcs && docker-compose up
down:
	cd ./srcs && docker-compose down
build:
	cd ./srcs && docker-compose build
clear:
	cd ./srcs && docker-compose down --rmi all --volumes 