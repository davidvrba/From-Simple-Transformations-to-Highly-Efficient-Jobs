"""
This test verifies
    - installation of spark
    - installation of postgress
    - data load to postgress
"""

from pyspark.sql import SparkSession

spark = (
    SparkSession
    .builder
    .appName('Installation-Test')
    .config("spark.sql.hive.metastore.version", "1.2.1")
    .config("spark.sql.hive.metastore.jars", "maven")
    .getOrCreate()
)

spark.sparkContext.setLogLevel("ERROR")


driver = 'org.postgresql.Driver'
url = 'jdbc:postgresql://localhost/postgres'
table = 'public.locations'
user = 'postgres'
password = 'postgres'


locations = (
    spark
    .read
    .format('jdbc')
    .option("driver", driver)
    .option('url', url)
    .option('dbtable', table)
    .option('user', user)
    .option('password', password)
    .load()
)


result = locations.count()

print('---------------------')
print('Test result = {}'.format(result))
