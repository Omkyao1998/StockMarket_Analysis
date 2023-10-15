import pyspark
from pyspark.sql import SparkSession
from pyspark.sql import Row

spark =  SparkSession.builder.master("local").appName("Hive_Pyspark").enableHiveSupport().getOrCreate()

#To create and use database
#Cannot create(need to give location)spark.sql("create database stocks;")
spark.sql("use stocks;")

#creating external table for loading pig data
#Cannot create table (need to give location)spark.sql("create external table if not exists 60min_Data (ID string,stock string,stockfilename string,dated string,close double,high double,low double,open double,volume int) ROW FORMAT DELIMITED FIELDS TERMINATED BY ',';")

#loading the pig data into database
spark.sql("LOAD DATA INPATH 'hdfs://cluster-group17-m/Pigresult2' INTO TABLE 60min_Data;")
'''spark.sql("LOAD DATA INPATH 'hdfs://cluster-group17-m/Pigresult1/part-m-00001' INTO TABLE Day_Data;")
spark.sql("LOAD DATA INPATH 'hdfs://cluster-group17-m/Pigresult1/part-m-00002' INTO TABLE Day_Data;")
spark.sql("LOAD DATA INPATH 'hdfs://cluster-group17-m/Pigresult1/part-m-00003' INTO TABLE Day_Data;")
spark.sql("LOAD DATA INPATH 'hdfs://cluster-group17-m/Pigresult1/part-m-00004' INTO TABLE Day_Data;")
spark.sql("LOAD DATA INPATH 'hdfs://cluster-group17-m/Pigresult1/part-m-00005' INTO TABLE Day_Data;")
spark.sql("LOAD DATA INPATH 'hdfs://cluster-group17-m/Pigresult1/part-m-00006' INTO TABLE Day_Data;")
spark.sql("LOAD DATA INPATH 'hdfs://cluster-group17-m/Pigresult1/part-m-00007' INTO TABLE Day_Data;")
spark.sql("LOAD DATA INPATH 'hdfs://cluster-group17-m/Pigresult1/part-m-00008' INTO TABLE Day_Data;")
spark.sql("LOAD DATA INPATH 'hdfs://cluster-group17-m/Pigresult1/part-m-00009' INTO TABLE Day_Data;")
spark.sql("LOAD DATA INPATH 'hdfs://cluster-group17-m/Pigresult1/part-m-00010' INTO TABLE Day_Data;")

spark.sql("LOAD DATA INPATH 'hdfs://cluster-group17-m/Pigresult1/part-m-00011' INTO TABLE Day_Data;")
spark.sql("LOAD DATA INPATH 'hdfs://cluster-group17-m/Pigresult1/part-m-00012' INTO TABLE Day_Data;")
spark.sql("LOAD DATA INPATH 'hdfs://cluster-group17-m/Pigresult1/part-m-00013' INTO TABLE Day_Data;")
spark.sql("LOAD DATA INPATH 'hdfs://cluster-group17-m/Pigresult1/part-m-00014' INTO TABLE Day_Data;")
spark.sql("LOAD DATA INPATH 'hdfs://cluster-group17-m/Pigresult1/part-m-00015' INTO TABLE Day_Data;")
spark.sql("LOAD DATA INPATH 'hdfs://cluster-group17-m/Pigresult1/part-m-00016' INTO TABLE Day_Data;")
spark.sql("LOAD DATA INPATH 'hdfs://cluster-group17-m/Pigresult1/part-m-00017' INTO TABLE Day_Data;")
spark.sql("LOAD DATA INPATH 'hdfs://cluster-group17-m/Pigresult1/part-m-00018' INTO TABLE Day_Data;")
spark.sql("LOAD DATA INPATH 'hdfs://cluster-group17-m/Pigresult1/part-m-00019' INTO TABLE Day_Data;")
spark.sql("LOAD DATA INPATH 'hdfs://cluster-group17-m/Pigresult1/part-m-00020' INTO TABLE Day_Data;")

spark.sql("LOAD DATA INPATH 'hdfs://cluster-group17-m/Pigresult1/part-m-00021' INTO TABLE Day_Data;")
spark.sql("LOAD DATA INPATH 'hdfs://cluster-group17-m/Pigresult1/part-m-00022' INTO TABLE Day_Data;")
spark.sql("LOAD DATA INPATH 'hdfs://cluster-group17-m/Pigresult1/part-m-00023' INTO TABLE Day_Data;")
spark.sql("LOAD DATA INPATH 'hdfs://cluster-group17-m/Pigresult1/part-m-00024' INTO TABLE Day_Data;")
spark.sql("LOAD DATA INPATH 'hdfs://cluster-group17-m/Pigresult1/part-m-00025' INTO TABLE Day_Data;")
spark.sql("LOAD DATA INPATH 'hdfs://cluster-group17-m/Pigresult1/part-m-00026' INTO TABLE Day_Data;")
spark.sql("LOAD DATA INPATH 'hdfs://cluster-group17-m/Pigresult1/part-m-00027' INTO TABLE Day_Data;")
spark.sql("LOAD DATA INPATH 'hdfs://cluster-group17-m/Pigresult1/part-m-00028' INTO TABLE Day_Data;")
spark.sql("LOAD DATA INPATH 'hdfs://cluster-group17-m/Pigresult1/part-m-00029' INTO TABLE Day_Data;")
spark.sql("LOAD DATA INPATH 'hdfs://cluster-group17-m/Pigresult1/part-m-00030' INTO TABLE Day_Data;")

spark.sql("LOAD DATA INPATH 'hdfs://cluster-group17-m/Pigresult1/part-m-00031' INTO TABLE Day_Data;")
spark.sql("LOAD DATA INPATH 'hdfs://cluster-group17-m/Pigresult1/part-m-00032' INTO TABLE Day_Data;")
spark.sql("LOAD DATA INPATH 'hdfs://cluster-group17-m/Pigresult1/part-m-00033' INTO TABLE Day_Data;")
spark.sql("LOAD DATA INPATH 'hdfs://cluster-group17-m/Pigresult1/part-m-00034' INTO TABLE Day_Data;")
spark.sql("LOAD DATA INPATH 'hdfs://cluster-group17-m/Pigresult1/part-m-00035' INTO TABLE Day_Data;")
spark.sql("LOAD DATA INPATH 'hdfs://cluster-group17-m/Pigresult1/part-m-00036' INTO TABLE Day_Data;")
spark.sql("LOAD DATA INPATH 'hdfs://cluster-group17-m/Pigresult1/part-m-00037' INTO TABLE Day_Data;")
spark.sql("LOAD DATA INPATH 'hdfs://cluster-group17-m/Pigresult1/part-m-00038' INTO TABLE Day_Data;")
spark.sql("LOAD DATA INPATH 'hdfs://cluster-group17-m/Pigresult1/part-m-00039' INTO TABLE Day_Data;")
spark.sql("LOAD DATA INPATH 'hdfs://cluster-group17-m/Pigresult1/part-m-00040' INTO TABLE Day_Data;")

spark.sql("LOAD DATA INPATH 'hdfs://cluster-group17-m/Pigresult1/part-m-00041' INTO TABLE Day_Data;")
spark.sql("LOAD DATA INPATH 'hdfs://cluster-group17-m/Pigresult1/part-m-00042' INTO TABLE Day_Data;")
spark.sql("LOAD DATA INPATH 'hdfs://cluster-group17-m/Pigresult1/part-m-00043' INTO TABLE Day_Data;")
spark.sql("LOAD DATA INPATH 'hdfs://cluster-group17-m/Pigresult1/part-m-00044' INTO TABLE Day_Data;")
spark.sql("LOAD DATA INPATH 'hdfs://cluster-group17-m/Pigresult1/part-m-00045' INTO TABLE Day_Data;")
spark.sql("LOAD DATA INPATH 'hdfs://cluster-group17-m/Pigresult1/part-m-00046' INTO TABLE Day_Data;")
spark.sql("LOAD DATA INPATH 'hdfs://cluster-group17-m/Pigresult1/part-m-00047' INTO TABLE Day_Data;")
spark.sql("LOAD DATA INPATH 'hdfs://cluster-group17-m/Pigresult1/part-m-00048' INTO TABLE Day_Data;")
spark.sql("LOAD DATA INPATH 'hdfs://cluster-group17-m/Pigresult1/part-m-00049' INTO TABLE Day_Data;")
spark.sql("LOAD DATA INPATH 'hdfs://cluster-group17-m/Pigresult1/part-m-00050' INTO TABLE Day_Data;")

spark.sql("LOAD DATA INPATH 'hdfs://cluster-group17-m/Pigresult1/part-m-00051' INTO TABLE Day_Data;")
spark.sql("LOAD DATA INPATH 'hdfs://cluster-group17-m/Pigresult1/part-m-00052' INTO TABLE Day_Data;")
spark.sql("LOAD DATA INPATH 'hdfs://cluster-group17-m/Pigresult1/part-m-00053' INTO TABLE Day_Data;")
spark.sql("LOAD DATA INPATH 'hdfs://cluster-group17-m/Pigresult1/part-m-00054' INTO TABLE Day_Data;")
spark.sql("LOAD DATA INPATH 'hdfs://cluster-group17-m/Pigresult1/part-m-00055' INTO TABLE Day_Data;")
spark.sql("LOAD DATA INPATH 'hdfs://cluster-group17-m/Pigresult1/part-m-00056' INTO TABLE Day_Data;")
spark.sql("LOAD DATA INPATH 'hdfs://cluster-group17-m/Pigresult1/part-m-00057' INTO TABLE Day_Data;")
spark.sql("LOAD DATA INPATH 'hdfs://cluster-group17-m/Pigresult1/part-m-00058' INTO TABLE Day_Data;")
spark.sql("LOAD DATA INPATH 'hdfs://cluster-group17-m/Pigresult1/part-m-00059' INTO TABLE Day_Data;")
spark.sql("LOAD DATA INPATH 'hdfs://cluster-group17-m/Pigresult1/part-m-00060' INTO TABLE Day_Data;")

spark.sql("LOAD DATA INPATH 'hdfs://cluster-group17-m/Pigresult1/part-m-00061' INTO TABLE Day_Data;")
spark.sql("LOAD DATA INPATH 'hdfs://cluster-group17-m/Pigresult1/part-m-00062' INTO TABLE Day_Data;")
spark.sql("LOAD DATA INPATH 'hdfs://cluster-group17-m/Pigresult1/part-m-00063' INTO TABLE Day_Data;")
spark.sql("LOAD DATA INPATH 'hdfs://cluster-group17-m/Pigresult1/part-m-00064' INTO TABLE Day_Data;")
spark.sql("LOAD DATA INPATH 'hdfs://cluster-group17-m/Pigresult1/part-m-00065' INTO TABLE Day_Data;")
spark.sql("LOAD DATA INPATH 'hdfs://cluster-group17-m/Pigresult1/part-m-00066' INTO TABLE Day_Data;")
spark.sql("LOAD DATA INPATH 'hdfs://cluster-group17-m/Pigresult1/part-m-00067' INTO TABLE Day_Data;")
spark.sql("LOAD DATA INPATH 'hdfs://cluster-group17-m/Pigresult1/part-m-00068' INTO TABLE Day_Data;")
spark.sql("LOAD DATA INPATH 'hdfs://cluster-group17-m/Pigresult1/part-m-00069' INTO TABLE Day_Data;")
spark.sql("LOAD DATA INPATH 'hdfs://cluster-group17-m/Pigresult1/part-m-00070' INTO TABLE Day_Data;")

spark.sql("LOAD DATA INPATH 'hdfs://cluster-group17-m/Pigresult1/part-m-00071' INTO TABLE Day_Data;")
spark.sql("LOAD DATA INPATH 'hdfs://cluster-group17-m/Pigresult1/part-m-00072' INTO TABLE Day_Data;")
spark.sql("LOAD DATA INPATH 'hdfs://cluster-group17-m/Pigresult1/part-m-00073' INTO TABLE Day_Data;")
spark.sql("LOAD DATA INPATH 'hdfs://cluster-group17-m/Pigresult1/part-m-00074' INTO TABLE Day_Data;")
spark.sql("LOAD DATA INPATH 'hdfs://cluster-group17-m/Pigresult1/part-m-00075' INTO TABLE Day_Data;")
spark.sql("LOAD DATA INPATH 'hdfs://cluster-group17-m/Pigresult1/part-m-00076' INTO TABLE Day_Data;")
spark.sql("LOAD DATA INPATH 'hdfs://cluster-group17-m/Pigresult1/part-m-00077' INTO TABLE Day_Data;")
spark.sql("LOAD DATA INPATH 'hdfs://cluster-group17-m/Pigresult1/part-m-00078' INTO TABLE Day_Data;")
spark.sql("LOAD DATA INPATH 'hdfs://cluster-group17-m/Pigresult1/part-m-00079' INTO TABLE Day_Data;")
spark.sql("LOAD DATA INPATH 'hdfs://cluster-group17-m/Pigresult1/part-m-00080' INTO TABLE Day_Data;")

spark.sql("LOAD DATA INPATH 'hdfs://cluster-group17-m/Pigresult1/part-m-00081' INTO TABLE Day_Data;")
spark.sql("LOAD DATA INPATH 'hdfs://cluster-group17-m/Pigresult1/part-m-00082' INTO TABLE Day_Data;")
spark.sql("LOAD DATA INPATH 'hdfs://cluster-group17-m/Pigresult1/part-m-00083' INTO TABLE Day_Data;")
spark.sql("LOAD DATA INPATH 'hdfs://cluster-group17-m/Pigresult1/part-m-00084' INTO TABLE Day_Data;")
spark.sql("LOAD DATA INPATH 'hdfs://cluster-group17-m/Pigresult1/part-m-00085' INTO TABLE Day_Data;")
spark.sql("LOAD DATA INPATH 'hdfs://cluster-group17-m/Pigresult1/part-m-00086' INTO TABLE Day_Data;")
spark.sql("LOAD DATA INPATH 'hdfs://cluster-group17-m/Pigresult1/part-m-00087' INTO TABLE Day_Data;")
spark.sql("LOAD DATA INPATH 'hdfs://cluster-group17-m/Pigresult1/part-m-00088' INTO TABLE Day_Data;")
spark.sql("LOAD DATA INPATH 'hdfs://cluster-group17-m/Pigresult1/part-m-00089' INTO TABLE Day_Data;")
spark.sql("LOAD DATA INPATH 'hdfs://cluster-group17-m/Pigresult1/part-m-00090' INTO TABLE Day_Data;")

spark.sql("LOAD DATA INPATH 'hdfs://cluster-group17-m/Pigresult1/part-m-00091' INTO TABLE Day_Data;")
spark.sql("LOAD DATA INPATH 'hdfs://cluster-group17-m/Pigresult1/part-m-00092' INTO TABLE Day_Data;")
spark.sql("LOAD DATA INPATH 'hdfs://cluster-group17-m/Pigresult1/part-m-00093' INTO TABLE Day_Data;")
spark.sql("LOAD DATA INPATH 'hdfs://cluster-group17-m/Pigresult1/part-m-00094' INTO TABLE Day_Data;")
spark.sql("LOAD DATA INPATH 'hdfs://cluster-group17-m/Pigresult1/part-m-00095' INTO TABLE Day_Data;")
spark.sql("LOAD DATA INPATH 'hdfs://cluster-group17-m/Pigresult1/part-m-00096' INTO TABLE Day_Data;")
spark.sql("LOAD DATA INPATH 'hdfs://cluster-group17-m/Pigresult1/part-m-00097' INTO TABLE Day_Data;")
spark.sql("LOAD DATA INPATH 'hdfs://cluster-group17-m/Pigresult1/part-m-00098' INTO TABLE Day_Data;")
spark.sql("LOAD DATA INPATH 'hdfs://cluster-group17-m/Pigresult1/part-m-00099' INTO TABLE Day_Data;")
spark.sql("LOAD DATA INPATH 'hdfs://cluster-group17-m/Pigresult1/part-m-00100' INTO TABLE Day_Data;")'''


#to show tables in database
spark.sql("show tables;").show()

#to show data from database
total_data = spark.sql("select count(*) from 60min_data;").show()
stock_data_limit = spark.sql("select * from 60min_data limit 10;").show()



WITH ans AS (SELECT stock, dated, difference ROW_NUMBER() OVER (PARTITION BY stock ORDER BY difference DESC) AS rn FROM D_day_data_view) SELECT stock, dated, difference FROM ans WHERE rn = 1 order by difference desc limit 20;
WITH ans AS (SELECT stock, dated, difference ROW_NUMBER() OVER (PARTITION BY stock ORDER BY difference DESC) AS rn FROM D_day_Data_view) SELECT stock, dated, difference FROM ans WHERE rn = 1 ORDER BY difference DESC limit 20;