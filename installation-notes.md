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
* geopandas
* descartes
* Postgresql

### For Scala code:
* java
* scala
* Apache Spark
* Apache Zeppelin
* Postgresql

### On fresh Ubuntu 18.04 installation:
* There is an installation script that you can use for Python installation as follows (look inside conf/python_installation.sh to see what is being installed):
```
sudo apt-get install git
git clone https://github.com/davidvrba/From-Simple-Transformations-to-Highly-Efficient-Jobs.git
chmod +x /home/student/From-Simple-Transformations-to-Highly-Efficient-Jobs/conf/python_installation.sh
sudo /home/student/From-Simple-Transformations-to-Highly-Efficient-Jobs/conf/python_installation.sh student
```
* Note: It assumes that your home folder is /home/student. If it is not, you need to change the commands accordingly.
