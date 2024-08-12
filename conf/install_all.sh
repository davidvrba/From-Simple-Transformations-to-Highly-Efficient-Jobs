#!/bin/bash

chmod +x /home/ubuntu/From-Simple-Transformations-to-Highly-Efficient-Jobs/conf/python_installation.sh
chmod +x /home/ubuntu/From-Simple-Transformations-to-Highly-Efficient-Jobs/conf/export_variables.sh
chmod +x /home/ubuntu/From-Simple-Transformations-to-Highly-Efficient-Jobs/conf/setup_hive_metastore.sh

sudo /home/ubuntu/From-Simple-Transformations-to-Highly-Efficient-Jobs/conf/python_installation.sh ubuntu
/home/ubuntu/From-Simple-Transformations-to-Highly-Efficient-Jobs/conf/export_variables.sh
source ~/.bashrc
/home/ubuntu/From-Simple-Transformations-to-Highly-Efficient-Jobs/conf/setup_hive_metastore.sh
