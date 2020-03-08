#!/bin/bash

echo 'export SPARK_HOME=/home/student/spark-3.0.0-preview2-bin-hadoop2.7' >> ~/.bashrc
echo 'export PYTHONPATH=$SPARK_HOME/python:$PYTHONPATH' >> ~/.bashrc
echo 'export PYSPARK_PYTHON=python3' >> ~/.bashrc

SPARK_HOME=/home/student/spark-3.0.0-preview2-bin-hadoop2.7