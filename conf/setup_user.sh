source /opt/venv/bin/activate

pip install --upgrade pip

pip install py4j
pip install jsonschema
pip install delta-spark==3.3.1
pip install numpy==2.1.3
pip install pandas==2.2.3
pip install pyarrow==19.0.1
pip install geopandas==1.0.1
pip install matplotlib==3.10.1
pip install scipy==1.15.2
pip install spark-nlp==6.0.0
pip install textstat==0.7.5
pip install sentence_transformers==4.1.0
pip install networkx==3.4.2
pip install scikit_learn==1.6.1
pip install jupyter


wget https://archive.apache.org/dist/spark/spark-3.5.3/spark-3.5.3-bin-hadoop3.tgz
tar xvf spark-3.5.3-bin-hadoop3.tgz
rm spark-3.5.3-bin-hadoop3.tgz

mkdir -p ~/.jupyter
cp /home/ubuntu/Spark-Training/conf/jupyter_notebook_config.py ~/.jupyter/

echo 'export SPARK_HOME=/home/ubuntu/spark-3.5.3-bin-hadoop3' >> /opt/venv/bin/activate
echo 'export PATH=$SPARK_HOME/bin:$PATH' >> /opt/venv/bin/activate
echo 'export PYSPARK_PYTHON=python3' >> /opt/venv/bin/activate
