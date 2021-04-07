FROM docker.io/mysql:8.0

ENV MYSQL_USER=travel_user
ENV MYSQL_PASSWORD=27BEYOBob7
ENV MYSQL_ROOT_PASSWORD=root

RUN	mkdir /usr/sql
RUN	chmod 644 /usr/sql
ADD ["mysql-db-script.sql", "/usr/sql/sources.sql"]

EXPOSE 3306