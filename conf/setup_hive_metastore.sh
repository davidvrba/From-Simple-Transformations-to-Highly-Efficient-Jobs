#!/bin/bash

#!/bin/bash

sudo -u postgres psql -c "CREATE DATABASE metastore;"
sudo -u postgres psql -c "CREATE USER hiveuser WITH ENCRYPTED PASSWORD 'hiveuser';"
sudo -u postgres psql -c "GRANT ALL PRIVILEGES ON DATABASE metastore TO hiveuser;"
sudo -u postgres psql -c "ALTER USER postgres PASSWORD 'postgres';"

# Connect to the metastore database and set schema privileges
sudo -u postgres psql -d metastore <<EOF
GRANT ALL PRIVILEGES ON SCHEMA public TO hiveuser;
GRANT CREATE, USAGE ON SCHEMA public TO hiveuser;
GRANT ALL PRIVILEGES ON ALL TABLES IN SCHEMA public TO hiveuser;
GRANT ALL PRIVILEGES ON ALL SEQUENCES IN SCHEMA public TO hiveuser;
ALTER DEFAULT PRIVILEGES IN SCHEMA public GRANT ALL PRIVILEGES ON TABLES TO hiveuser;
ALTER DEFAULT PRIVILEGES IN SCHEMA public GRANT ALL PRIVILEGES ON SEQUENCES TO hiveuser;

CREATE TABLE locations(name varchar, latitude decimal, longitude decimal);
COPY locations FROM '/var/lib/postgresql/locations.csv' DELIMITERS ',' CSV HEADER;
EOF
