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
mv /home/ubuntu/From-Simple-Transformations-to-Highly-Efficient-Jobs/data/locations.csv /var/lib/postgresql/
wget -P /home/$student/spark-3.5.1-bin-hadoop3/jars https://jdbc.postgresql.org/download/postgresql-42.4.0.jar
source ~/.bashrc

cd From-Simple-Transformations-to-Highly-Efficient-Jobs
