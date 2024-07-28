#!/bin/bash

student=$1

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

wget /home/$student https://archive.apache.org/dist/spark/spark-3.5.1/spark-3.5.1-bin-hadoop3.tgz
tar xvf spark-3.5.1-bin-hadoop3.tgz

cp /home/$student/From-Simple-Transformations-to-Highly-Efficient-Jobs/conf/hive-site.xml /home/$student/spark-3.5.1-bin-hadoop3/conf/

SPARK_HOME=/home/$student/spark-3.5.1-bin-hadoop3

echo 'export SPARK_HOME='$SPARK_HOME >> ~/.bashrc
echo 'export PYTHONPATH=$SPARK_HOME/python:$PYTHONPATH' >> ~/.bashrc
echo 'export PYSPARK_PYTHON=python3' >> ~/.bashrc

wget -P /home/$student/spark-3.5.1-bin-hadoop3/jars https://jdbc.postgresql.org/download/postgresql-42.4.0.jar
source ~/.bashrc

cd From-Simple-Transformations-to-Highly-Efficient-Jobs
