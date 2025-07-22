# Installation notes:

## On fresh Ubuntu 24.04 installation:
* Install as follows:
```
git clone https://github.com/davidvrba/From-Simple-Transformations-to-Highly-Efficient-Jobs.git
chmod +x /home/ubuntu/From-Simple-Transformations-to-Highly-Efficient-Jobs/conf/python_installation.sh
chmod +x /home/ubuntu/From-Simple-Transformations-to-Highly-Efficient-Jobs/conf/setup_user.sh
sudo /home/ubuntu/From-Simple-Transformations-to-Highly-Efficient-Jobs/conf/python_installation.sh
/home/ubuntu/From-Simple-Transformations-to-Highly-Efficient-Jobs/conf/setup_user.sh
```
* Then run the jupyter:
```
source /opt/venv/bin/activate
jupyter notebook
```
* Note: It assumes that your home folder is /home/ubuntu. If it is not, you need to change the commands accordingly.
