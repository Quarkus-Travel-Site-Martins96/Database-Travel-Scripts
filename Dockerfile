FROM docker.io/mysql:8.0

ENV MYSQL_USER=travel_user
ENV MYSQL_PASSWORD=27BEYOBob7
ENV MYSQL_ROOT_PASSWORD=root
ENV MYSQL_DATABASE=travel_site

LABEL author="Luca Martinelli"
LABEL name="travelsite-mysql-db"

ADD ["mysql-db-script.sql", "/docker-entrypoint-initdb.d/sources.sql"]

EXPOSE 3306