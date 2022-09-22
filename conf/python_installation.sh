#!/bin/bash

student=$1

apt-get  update
apt install python3.7
apt --assume-yes install python3-pip
apt-get --assume-yes install openjdk-8-jdk
echo 'export JAVA_HOME=/usr/lib/jvm/java-8-openjdk-amd64' >> ~/.bashrc
apt-get --assume-yes install scala
pip3 install py4j
pip3 install numpy
pip3 install pandas
pip3 install 'pyarrow==1.0.0'
pip3 install scipy
pip3 install matplotlib==3.0.0
pip3 install --upgrade cython
pip3 install geopy
pip3 install geopandas==0.9.0
pip3 install descartes
pip3 install jupyter

wget /home/$student https://archive.apache.org/dist/spark/spark-3.3.0/spark-3.3.0-bin-hadoop3.tgz
tar xvf spark-3.3.0-bin-hadoop3.tgz

cp /home/$student/From-Simple-Transformations-to-Highly-Efficient-Jobs/conf/hive-site.xml /home/$student/spark-3.3.0-bin-hadoop3/conf/

SPARK_HOME=/home/$student/spark-3.3.0-bin-hadoop3

echo 'export SPARK_HOME='$SPARK_HOME >> ~/.bashrc
echo 'export PYTHONPATH=$SPARK_HOME/python:$PYTHONPATH' >> ~/.bashrc
echo 'export PYSPARK_PYTHON=python3' >> ~/.bashrc

wget -P /home/$student/spark-3.3.0-bin-hadoop3/jars https://jdbc.postgresql.org/download/postgresql-9.4.1212.jar

apt --assume-yes install postgresql postgresql-contrib
sudo -u postgres bash -c "psql -c \"CREATE DATABASE metastore; \""
sudo -u postgres bash -c "psql -c \"CREATE USER hiveuser with encrypted password 'hiveuser'; \""
sudo -u postgres bash -c "psql -c \"GRANT ALL PRIVILEGES on database metastore to hiveuser; \""

sudo -u postgres bash -c "psql -c \" create table locations(name varchar, latitude decimal, longitude decimal); \""
sudo -u postgres bash -c "psql -c \" COPY locations FROM '/home/$student/From-Simple-Transformations-to-Highly-Efficient-Jobs/data/locations.csv' DELIMITERS ',' CSV HEADER; \""
sudo -u postgres bash -c "psql -c \" create table user_clusters(user_id bigint, cluster_id integer); \""
sudo -u postgres bash -c "psql -c \"ALTER USER postgres PASSWORD 'postgres'; \" "

source ~/.bashrc

cd From-Simple-Transformations-to-Highly-Efficient-Jobs
PYSPARK_PYTHON=/usr/bin/python3 $SPARK_HOME/bin/spark-submit --master local --py-files conf/py-install-test.py conf/py-install-test.py
