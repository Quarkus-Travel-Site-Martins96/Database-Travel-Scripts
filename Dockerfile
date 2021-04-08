FROM docker.io/mysql:8.0

ENV MYSQL_USER=travel_user
ENV MYSQL_PASSWORD=27BEYOBob7
ENV MYSQL_ROOT_PASSWORD=root

ADD ["mysql-db-script.sql", "/etc/mysql/conf.d/sources.sql"]

EXPOSE 3306