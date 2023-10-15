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
DayData_Hive_DF = spark.sql("select * from day_data_view;")

# Viewing Schema from Hive
DayData_Hive_DF.printSchema()

# Confirming Count with Hive Table Data
count_DayData_Hive_DF = DayData_Hive_DF.count()
print(count_DayData_Hive_DF)

# Viewing the formatted date
day_data_timestamp = DayData_Hive_DF.select("dated", func.to_timestamp("dated"))
day_data_date = day_data_timestamp.select("dated", func.to_date("dated"))

# Converting the string date to timestamp date and then to date format
DayData_Hive_DF_final = DayData_Hive_DF.withColumn("dated", func.to_date(func.to_timestamp("dated")))

# Top 5 Highest Stock Volume on a given date
top5_given_date = DayData_Hive_DF_final.filter(DayData_Hive_DF_final.dated == "2015-01-01").orderBy(DayData_Hive_DF_final.volume, ascending=False).select("id","stock","dated","volume").show()
# Bottom 5 Lowest Stock Volume on a given date
bottom5_given_date = DayData_Hive_DF_final.filter(DayData_Hive_DF_final.dated == "2015-01-01").orderBy(DayData_Hive_DF_final.volume).select("id","stock","dated","volume").show(5)

# spark.sql("select dated,sum(volume) as summation from day_data where extract(year from dated) == 2015 group by dated;")

# DayData_Hive_DF_final.groupBy(year(DayData_Hive_DF_final.dated) == 2015).sum(DayData_Hive_DF_final.volume).alias("total_volume")

year = "2015"
startRange = year+"-01-01"
endRange = year+"-12-31"

# top5_given_date = DayData_Hive_DF_final.filter(DayData_Hive_DF_final.dated == startRange).orderBy(DayData_Hive_DF_final.volume, ascending=False).select("id","stock","dated","volume").show(5)

# DayData_Hive_DF_final.select(DayData_Hive_DF_final.dated.between(startRange,endRange)).show()

# DayData_Hive_DF_final.filter(DayData_Hive_DF_final.dated == "2015-01-01").select(DayData_Hive_DF_final.agg(func.sum(DayData_Hive_DF_final.volume))).show()

DayData_Hive_DF_final.filter(DayData_Hive_DF_final.dated == "2015-01-01").select(func.sum(DayData_Hive_DF_final.volume).alias("totalVolume")).show()

DayData_Hive_DF_final.select(func.year(DayData_Hive_DF_final.dated)).show()

DayData_Hive_DF_final_new = DayData_Hive_DF_final.withColumn("year", func.year(DayData_Hive_DF_final.dated))

DayData_Hive_DF_final_new.printSchema()

DayData_Hive_DF_final_new.select("year").show()

DayData_Hive_DF_final_new.groupBy(DayData_Hive_DF_final_new.year).count()

# DayData_Hive_DF_final.select(func.year(DayData_Hive_DF_final.dated), func.sum(DayData_Hive_DF_final.volume)).show()

# DayData_Hive_DF_final.groupBy(DayData_Hive_DF_final.dated.between(startRange,endRange)).select(func.sum(DayData_Hive_DF_final.volume)).show()

spark.stop()