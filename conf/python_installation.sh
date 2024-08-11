#!/bin/bash

student=$1

apt-get  update
apt --assume-yes install python3-pip
apt-get --assume-yes install openjdk-8-jdk
echo 'export JAVA_HOME=/usr/lib/jvm/java-8-openjdk-amd64' >> ~/.bashrc
apt-get --assume-yes install scala
pip3 install py4j --break-system-packages
pip3 install numpy --break-system-packages
pip3 install pandas --break-system-packages
pip3 install pyarrow --break-system-packages
pip3 install scipy --break-system-packages
pip3 install matplotlib --break-system-packages
pip3 install geopy --break-system-packages
pip3 install geopandas --break-system-packages
pip3 install descartes --break-system-packages

apt --assume-yes remove python3-jsonschema
pip3 install jsonschema --break-system-packages
pip3 install jupyter --break-system-packages

wget /home/$student https://archive.apache.org/dist/spark/spark-3.5.1/spark-3.5.1-bin-hadoop3.tgz
tar xvf spark-3.5.1-bin-hadoop3.tgz

cp /home/$student/From-Simple-Transformations-to-Highly-Efficient-Jobs/conf/hive-site.xml /home/$student/spark-3.5.1-bin-hadoop3/conf/

SPARK_HOME=/home/$student/spark-3.5.1-bin-hadoop3

echo 'export PATH=$PATH:~/.local/bin' >> ~/.bashrc
echo 'export SPARK_HOME='$SPARK_HOME >> ~/.bashrc
echo 'export PYTHONPATH=$SPARK_HOME/python:$PYTHONPATH' >> ~/.bashrc
echo 'export PYSPARK_PYTHON=python3' >> ~/.bashrc

apt --assume-yes install postgresql postgresql-contrib
sudo -u postgres bash -c 'psql -c "CREATE DATABASE metastore;"'
sudo -u postgres bash -c "psql -c \"CREATE USER hiveuser with encrypted password 'hiveuser'; \""
sudo -u postgres bash -c 'psql -c "GRANT ALL PRIVILEGES on database metastore to hiveuser;"'

sudo -u postgres bash -c 'psql -c "grant all privileges on schema public to hiveuser;"'
sudo -u postgres bash -c 'psql -c "grant create, usage on schema public to hiveuser;"'
sudo -u postgres bash -c 'psql -c "GRANT ALL PRIVILEGES ON ALL TABLES IN SCHEMA public TO hiveuser;"'
sudo -u postgres bash -c 'psql -c "GRANT ALL PRIVILEGES ON ALL SEQUENCES IN SCHEMA public TO hiveuser;"'
sudo -u postgres bash -c 'psql -c "ALTER DEFAULT PRIVILEGES IN SCHEMA public GRANT ALL PRIVILEGES ON TABLES TO hiveuser;"'
sudo -u postgres bash -c 'psql -c "ALTER DEFAULT PRIVILEGES IN SCHEMA public GRANT ALL PRIVILEGES ON SEQUENCES TO hiveuser;"'

sudo -u postgres bash -c "psql -c \"ALTER USER postgres PASSWORD 'postgres'; \" "
mv /home/ubuntu/From-Simple-Transformations-to-Highly-Efficient-Jobs/data/locations.csv /var/lib/postgresql/
sudo -u postgres bash -c "psql -c \" COPY locations FROM '/var/lib/postgresql/locations.csv' DELIMITERS ',' CSV HEADER; \""

wget -P /home/$student/spark-3.5.1-bin-hadoop3/jars https://jdbc.postgresql.org/download/postgresql-42.4.0.jar
source ~/.bashrc

cd From-Simple-Transformations-to-Highly-Efficient-Jobs
