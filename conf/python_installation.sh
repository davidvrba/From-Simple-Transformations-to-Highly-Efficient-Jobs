#!/bin/bash
apt-get  update
apt install python3-pip
apt-get install openjdk-8-jdk
echo 'export JAVA_HOME=/usr/lib/jvm/java-8-openjdk-amd64' >> ~/.bashrc
apt-get install scala
pip3 install py4j
pip3 install numpy
pip3 install pandas
pip3 install pyarrow
pip3 install scipy
pip3 install matplotlib
pip3 install jupyter

wget /home/david apache.miloslavbrada.cz/spark/spark-2.4.3/spark-2.4.3-bin-hadoop2.7.tgz
tar xvf spark-2.4.3-bin-hadoop2.7.tgz

echo 'export SPARK_HOME=/home/david/spark-2.4.3-bin-hadoop2.7' >> ~/.bashrc
echo 'export PYTHONPATH=$SPARK_HOME/python:$PYTHONPATH' >> ~/.bashrc
echo 'export PYSPARK_PYTHON=python3' >> ~/.bashrc

wget -P /home/david/spark-2.4.3-bin-hadoop2.7/jars https://jdbc.postgresql.org/download/postgresql-9.4.1212.jar

apt install postgresql postgresql-contrib
sudo -u postgres bash -c "psql -c \"CREATE DATABASE metastore; \""
sudo -u postgres bash -c "psql -c \"CREATE USER hiveuser with encrypted password 'hiveuser'; \""
sudo -u postgres bash -c "psql -c \"GRANT ALL PRIVILEGES on database metastore to hiveuser; \""

source ~/.bashrc