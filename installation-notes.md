# Installation notes:

## On fresh Ubuntu 24.04 installation:
* Install as follows:
```
git clone https://github.com/davidvrba/Spark-Training.git
chmod +x /home/ubuntu/Spark-Training/conf/python_installation.sh
chmod +x /home/ubuntu/Spark-Training/conf/setup_user.sh
sudo /home/ubuntu/Spark-Training/conf/python_installation.sh
/home/ubuntu/Spark-Training/conf/setup_user.sh
```
* Then run the jupyter:
```
source /opt/venv/bin/activate
jupyter notebook
```
* Note: It assumes that your home folder is /home/ubuntu. If it is not, you need to change the commands accordingly.
