import pyspark
from pyspark import HiveContext
from pyspark.sql import SparkSession
from pyspark.sql import Row
from pyspark.sql import functions as func

spark =  SparkSession.builder.master("local").appName("DayData_Operations_Pyspark").enableHiveSupport().getOrCreate()

# To create and use database
# Cannot create(need to give location)spark.sql("create database stocks;")
spark.sql("use stocks;")

# Uploading Day Data from Hive to DataFrame
SixtyMinData_Hive_DF = spark.sql("select * from 60min_data_view;")

# Viewing Schema from Hive
SixtyMinData_Hive_DF.printSchema()

# Confirming Count with Hive Table Data
count_SixtyMinData_Hive_DF = SixtyMinData_Hive_DF.count()
print(count_SixtyMinData_Hive_DF)

# Converting the string date to timestamp date and change the timezone to Asia/Calcutta
SixtyMinData_Hive_DF_Timezone = SixtyMinData_Hive_DF.withColumn("dated", func.from_utc_timestamp(func.to_timestamp("dated"), "Asia/Calcutta"))
SixtyMinData_Hive_DF_final = SixtyMinData_Hive_DF_Timezone.withColumn("date_data",func.split((SixtyMinData_Hive_DF_Timezone.dated)," ").getItem(0)).withColumn("time_data",func.split((SixtyMinData_Hive_DF_Timezone.dated)," ").getItem(1))

SixtyMinData_Hive_DF_final.printSchema()

# Display Stock volume data on a given day per hour per stock
stock_volume_data = SixtyMinData_Hive_DF_final.filter(SixtyMinData_Hive_DF_final.date_data == "2015-02-02").filter(SixtyMinData_Hive_DF_final.stock == "ACC").select("stock","date_data","time_data","volume").show()

spark.stop()

def question4:
    # Uploading Day Data from Hive to DataFrame
    SixtyMinData_Hive_DF = spark.sql("select * from 60min_data_view;")

    # Viewing Schema from Hive
    SixtyMinData_Hive_DF.printSchema()

    # Confirming Count with Hive Table Data
    count_SixtyMinData_Hive_DF = SixtyMinData_Hive_DF.count()
    print(count_SixtyMinData_Hive_DF)

    # Converting the string date to timestamp date and change the timezone to Asia/Calcutta
    SixtyMinData_Hive_DF_Timezone = SixtyMinData_Hive_DF.withColumn("dated", func.from_utc_timestamp(func.to_timestamp("dated"), "Asia/Calcutta"))
    SixtyMinData_Hive_DF_final = SixtyMinData_Hive_DF_Timezone.withColumn("date_data",func.split((SixtyMinData_Hive_DF_Timezone.dated)," ").getItem(0)).withColumn("time_data",func.split((SixtyMinData_Hive_DF_Timezone.dated)," ").getItem(1))

    SixtyMinData_Hive_DF_final.printSchema()

    # Display Stock volume data on a given day per hour per stock
    stock_volume_data = SixtyMinData_Hive_DF_final.filter(SixtyMinData_Hive_DF_final.date_data == dateQuestion2).filter(SixtyMinData_Hive_DF_final.stock == "stockName").select("stock","date_data","time_data","volume").show()