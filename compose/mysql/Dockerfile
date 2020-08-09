FROM mysql:5.7

DOCKER_HOST tcp://172.31.6.240:2375

ENV MYSQL_DATABASE recipe

COPY ./scripts /docker-entrypoint-initdb.d/
