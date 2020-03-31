#!/bin/bash

if [ $1 = 2.4.5 ]
then
    echo Spark version 2.4.5
    export SPARK_HOME=/home/student/spark-2.4.5-bin-hadoop2.7
    cd /home/student/spark-2.4.5-bin-hadoop2.7/bin
elif [ $1 = 3.0.0 ]
then
    echo Spark version 3.0.0-preview
    export SPARK_HOME=/home/student/spark-3.0.0-preview2-bin-hadoop2.7
    cd /home/student/spark-3.0.0-preview2-bin-hadoop2.7/bin
fi

export PYTHONPATH=$SPARK_HOME/python:$PYTHONPATH
export PYSPARK_PYTHON=python3

if [ $2 = shell ]
then
    ./spark-shell
elif [ $2 = jupyter ]
then
    cd /home/From-Simple-Transformations-to-Highly-Efficient-Jobs
    jupyter notebook
fi