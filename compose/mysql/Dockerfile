FROM mysql:5.7

ENV MYSQL_ROOT_PASSWORD 123
ENV MYSQL_DATABASE recipe
ENV MYSQL_USERS dev
ENV MYSQL_PASSWORD devp

ADD ./init/ /docker-entrypoint-initdb.d/
ADD ./data.sql /docker-entrypoint-initdb.d/
EXPOSE 3306
