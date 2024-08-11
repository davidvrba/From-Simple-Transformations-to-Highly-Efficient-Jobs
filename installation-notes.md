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
* geopy
* geopandas
* descartes
* Postgresql

### On fresh Ubuntu 22.04 installation:
* There is an installation script that you can use for Python installation as follows (look inside conf/python_installation.sh to see what is being installed):
```
git clone https://github.com/davidvrba/From-Simple-Transformations-to-Highly-Efficient-Jobs.git
chmod +x /home/ubuntu/From-Simple-Transformations-to-Highly-Efficient-Jobs/conf/python_installation.sh
chmod +x /home/ubuntu/From-Simple-Transformations-to-Highly-Efficient-Jobs/conf/export_variables.sh
chmod +x /home/ubuntu/From-Simple-Transformations-to-Highly-Efficient-Jobs/conf/setup_metastore.sh
sudo /home/ubuntu/From-Simple-Transformations-to-Highly-Efficient-Jobs/conf/python_installation.sh ubuntu
/home/ubuntu/From-Simple-Transformations-to-Highly-Efficient-Jobs/conf/export_variables.sh
source ~/.bashrc
/home/ubuntu/From-Simple-Transformations-to-Highly-Efficient-Jobs/conf/setup_metastore.sh

```
* Note: It assumes that your home folder is /home/ubuntu. If it is not, you need to change the commands accordingly.
