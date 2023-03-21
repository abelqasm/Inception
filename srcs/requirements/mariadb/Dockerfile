FROM debian:buster-slim

RUN apt-get update && apt-get install -y \
       mariadb-server \
       mariadb-client \
       vim \
       curl \
       sudo

EXPOSE 3306

# CMD ["systemctl", "start", "mariadb"]