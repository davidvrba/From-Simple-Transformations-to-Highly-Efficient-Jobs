#!/bin/bash
apt-get  update
apt --assume-yes install python3-pip
apt-get --assume-yes install openjdk-8-jdk
echo 'export JAVA_HOME=/usr/lib/jvm/java-8-openjdk-amd64' >> ~/.bashrc
apt-get --assume-yes install scala
pip3 install py4j
pip3 install numpy
pip3 install pandas
pip3 install pyarrow
pip3 install scipy
pip3 install matplotlib
pip3 install geopy
pip3 install geopandas
pip3 install descartes
pip3 install jupyter

wget /home/student https://archive.apache.org/dist/spark/spark-2.4.0/spark-2.4.0-bin-hadoop2.7.tgz
tar xvf spark-2.4.0-bin-hadoop2.7.tgz

cp /home/student/From-Simple-Transformations-to-Highly-Efficient-Jobs/conf/hive-site.xml /home/student/spark-2.4.0-bin-hadoop2.7/conf/

echo 'export SPARK_HOME=/home/student/spark-2.4.0-bin-hadoop2.7' >> ~/.bashrc
echo 'export PYTHONPATH=$SPARK_HOME/python:$PYTHONPATH' >> ~/.bashrc
echo 'export PYSPARK_PYTHON=python3' >> ~/.bashrc

wget -P /home/student/spark-2.4.0-bin-hadoop2.7/jars https://jdbc.postgresql.org/download/postgresql-9.4.1212.jar

apt --assume-yes install postgresql postgresql-contrib
sudo -u postgres bash -c "psql -c \"CREATE DATABASE metastore; \""
sudo -u postgres bash -c "psql -c \"CREATE USER hiveuser with encrypted password 'hiveuser'; \""
sudo -u postgres bash -c "psql -c \"GRANT ALL PRIVILEGES on database metastore to hiveuser; \""

sudo -u postgres bash -c "psql -c \" create table locations(name varchar, latitude decimal, longitude decimal); \""
sudo -u postgres bash -c "psql -c \" COPY locations FROM '/home/student/From-Simple-Transformations-to-Highly-Efficient-Jobs/data/locations.csv' DELIMITERS ',' CSV HEADER; \""
sudo -u postgres bash -c "psql -c \" create table user_clusters(user_id bigint, cluster_id integer); \""
sudo -u postgres bash -c "psql -c \"ALTER USER postgres PASSWORD 'postgres'; \" "


wget /home/student apache.miloslavbrada.cz/kafka/2.2.0/kafka_2.12-2.2.0.tgz
tar xvf kafka_2.12-2.2.0.tgz

echo 'broker.id=0' >> ~/kafka_2.12-2.2.0/config/server.properties
echo 'listeners=PLAINTEXT://:9092' >> ~/kafka_2.12-2.2.0/config/server.properties
echo 'log.dirs=/tmp/kafka-logs' >> ~/kafka_2.12-2.2.0/config/server.properties

source ~/.bashrc
