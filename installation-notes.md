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
sudo apt update
sudo apt-get install git
git clone https://github.com/davidvrba/From-Simple-Transformations-to-Highly-Efficient-Jobs.git
cd /home/student/From-Simple-Transformations-to-Highly-Efficient-Jobs/conf
chmod +x python_installation.sh
cd /home/student
sudo ./From-Simple-Transformations-to-Highly-Efficient-Jobs/conf/python_installation.sh
```
* Note: It assumes that your home folder is /home/student. If it is not, you need to change the script accordingly.
