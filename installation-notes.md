# Installation notes:

## To run all examples in this repository you will need to have installed:

### For Python code:
* python
* java
* scala
* py4j
* Apache Spark
* jupyter
* numpy
* pandas
* pyarrow
* scipy
* matplotlib

### Also you will need to export environmental variables

#### On MacOS or Linux you can do it like this:
* export SPARK_HOME='/{YOUR_SPARK_DIRECTORY}/spark-2.4.0-bin-hadoop2.7'
* export PYTHONPATH=$SPARK_HOME/python:$PYTHONPATH
* export PYSPARK_PYTHON=python3

### For Scala code:
* java
* scala
* Apache Spark
* Apache Zeppelin

### References
* [Apache Zeppelin](https://zeppelin.apache.org/docs/latest/quickstart/install.html)

#### On Ubuntu 18.04:
* There is an installation script that you can use as follows:
* sudo apt update
* sudo apt-get install git
* git clone https://github.com/davidvrba/From-Simple-Transformations-to-Highly-Efficient-Jobs.git
* cd /home/student/From-Simple-Transformations-to-Highly-Efficient-Jobs/conf
* chmod +x python_installation.sh
* cd /home/student
* sudo ./From-Simple-Transformations-to-Highly-Efficient-Jobs/conf/python_installation.sh

