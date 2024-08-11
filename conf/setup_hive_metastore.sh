#!/bin/bash

sudo -u postgres psql -c "CREATE DATABASE metastore;"
sudo -u postgres psql -c "CREATE USER hiveuser WITH ENCRYPTED PASSWORD 'hiveuser';"
sudo -u postgres psql -c "GRANT ALL PRIVILEGES ON DATABASE metastore TO hiveuser;"
sudo -u postgres psql -c "ALTER USER postgres PASSWORD 'postgres';"

sudo -u postgres psql -d metastore -c "GRANT ALL PRIVILEGES ON SCHEMA public TO hiveuser;"
sudo -u postgres psql -d metastore -c "GRANT CREATE, USAGE ON SCHEMA public TO hiveuser;"
sudo -u postgres psql -d metastore -c "GRANT ALL PRIVILEGES ON ALL TABLES IN SCHEMA public TO hiveuser;"
sudo -u postgres psql -d metastore -c "GRANT ALL PRIVILEGES ON ALL SEQUENCES IN SCHEMA public TO hiveuser;"
sudo -u postgres psql -d metastore -c "ALTER DEFAULT PRIVILEGES IN SCHEMA public GRANT ALL PRIVILEGES ON TABLES TO hiveuser;"
sudo -u postgres psql -d metastore -c "ALTER DEFAULT PRIVILEGES IN SCHEMA public GRANT ALL PRIVILEGES ON SEQUENCES TO hiveuser;"

sudo -u postgres psql -d metastore -c "CREATE TABLE locations(name varchar, latitude decimal, longitude decimal);"
sudo -u postgres psql -d metastore -c "COPY locations FROM '/var/lib/postgresql/locations.csv' DELIMITERS ',' CSV HEADER;"
