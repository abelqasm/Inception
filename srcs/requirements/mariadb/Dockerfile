FROM debian:buster

RUN apt-get update && apt-get install -y \
       mariadb-server \
       curl   

ARG DB_NAME DB_USER DB_USER_PW DB_ROOT_PW

COPY tools/config.sh .

RUN chmod +x config.sh && ./config.sh

CMD ["mysqld", "--bind-address=0.0.0.0"]