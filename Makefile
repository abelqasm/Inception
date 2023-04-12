up:
	cd ./srcs && docker-compose up
dowm:
	cd ./srcs && docker-compose down
build:
	cd ./srcs && docker-compose build
clear:
	cd ./srcs && docker-compose down --rmi all --volumes 