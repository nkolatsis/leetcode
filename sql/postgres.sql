-- Useful commands for troubleshooting problems

-- podman run --rm --name postgres -e POSTGRES_PASSWORD=password -d -p 5432:5432 postgres
-- podman exec -it postgres bash
-- su - postman
-- psql
CREATE USER myuser WITH PASSWORD 'asdf';
CREATE DATABASE mydb WITH OWNER myuser ENCODING='UTF8' LC_COLLATE='en_US.utf8' LC_CTYPE='en_US.utf8';
-- psql -h 127.0.0.1 -U myuser mydb
CREATE TABLE working_table (name varchar(255));