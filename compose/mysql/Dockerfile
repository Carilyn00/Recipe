FROM mysql:5.7

COPY ./init/ /docker-entrypoint-initdb.d/
COPY ~/data.sql/ /docker-entrypoint-initdb.d/
