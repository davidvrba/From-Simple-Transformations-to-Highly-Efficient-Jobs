# Installation notes:

## To run all examples in this repository you will need to have installed:
* python
* java
* py4j
* Spark
* jupyter
* numpy
* pandas
* pyarrow
* scipy
* matplotlib

## Also you will need to export environmental variables

### On MacOS or Linux you can do it like this:
* export SPARK_HOME='/{YOUR_SPARK_DIRECTORY}/spark-2.4.0-bin-hadoop2.7'
* export PYTHONPATH=$SPARK_HOME/python:$PYTHONPATH
* export PYSPARK_PYTHON=python3
