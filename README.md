# Nifty 100 Stock Volume Analysis on Hadoop (Pig, Hive, PySpark)

A big-data pipeline on a Hadoop cluster (Google Cloud Dataproc) that loads daily and hourly trading data for about 100 Indian stocks (Nifty 100, 2015–2022), combines it with Apache Pig, stores it in Hive, and answers trading-volume questions with PySpark. Team assignment for the Cloud Technologies module of my MSc at Dublin City University.

## Business problem

Traders and analysts want quick answers to questions like:

- Which stocks traded the most (and least) volume on a given day?
- How much total volume did the market trade in a day or a year?
- How does a stock's volume move hour by hour during the trading day?
- Which day had the biggest price swing for each stock?

With 100+ stocks at daily and hourly granularity over 8 years, the data is spread across hundreds of CSV files. The pipeline turns it into one queryable table.

## Architecture

```
101 daily CSVs + hourly CSVs (one file per stock)
        │  hdfs dfs -copyFromLocal
        ▼
      HDFS
        │  Apache Pig: load each file, tag rows with the stock name, UNION all
        ▼
  Combined dataset in HDFS (Pigresult1 / Pigresult2)
        │  Hive external tables: Day_Data, 60min_Data (+ views)
        ▼
      Hive
        │  PySpark with Hive support
        ▼
  Volume queries: top/bottom 5 by volume, totals by day and year,
  hourly volume per stock (converted to IST), biggest daily price range
```

## Files

| File | Purpose |
|---|---|
| `dataloadandappend.pig` | Loads 101 daily stock files, adds the stock name to each row, unions them and stores the result in HDFS |
| `Hive_code.py` | Loads the Pig output into the Hive `Day_Data` table using PySpark |
| `Hive_code_60min.py` | Same for hourly data (`60min_Data`), plus row-count checks |
| `DayData_Ops.py` | Daily analysis: top and bottom 5 stocks by volume on a date, total volume per day and per year |
| `SixtyMins_Ops.py` | Hourly analysis: converts timestamps from UTC to IST and shows hourly volume for a stock on a date |
| `Cloud_Assignment_2_Command_List.txt` | Step-by-step HDFS, Pig and Hive commands to rebuild the pipeline |
| `pig_command.txt`, `ratings-counter.py` | Warm-up exercises from the module (not part of this pipeline) |

## Example query

```sql
-- Day with the largest high-low price range for each stock (Hive)
WITH ans AS (
  SELECT stock, dated, difference,
         ROW_NUMBER() OVER (PARTITION BY stock ORDER BY difference DESC) AS rn
  FROM d_day_data_view
)
SELECT stock, dated, difference FROM ans WHERE rn = 1
ORDER BY difference DESC LIMIT 20;
```

## Tech stack

Hadoop HDFS · Apache Pig · Apache Hive · PySpark (Spark SQL) · Google Cloud Dataproc

## How to run

You need a Hadoop cluster with Pig, Hive and Spark (for example a Google Cloud Dataproc cluster) and the Nifty 100 daily and hourly CSV files.

1. Copy the CSVs to HDFS: `hdfs dfs -copyFromLocal /home/Day_Dataset /`
2. Run the Pig script: `pig -f dataloadandappend.pig`
3. Load into Hive: `spark-submit Hive_code.py` (and `Hive_code_60min.py` for hourly data)
4. Run the analysis: `spark-submit DayData_Ops.py` and `spark-submit SixtyMins_Ops.py`

Update the HDFS paths (`hdfs://cluster-group17-m/...`) to match your cluster. The full command list is in `Cloud_Assignment_2_Command_List.txt`.

## What I would improve next

- Replace the 101 hand-written Pig `LOAD` statements with one glob load (`/Day_Dataset/*.csv`) and the source file name as the stock column
- Load all Pig output parts with a single `LOAD DATA INPATH` on the folder instead of one line per part file
- Rebuild it the modern way: PySpark reading the CSVs straight from cloud storage into Parquet or Delta tables, with no Pig step
- Turn the questions into parameterised functions and add a small dashboard on top

## Author

**Omkar Gokhale** — Data Engineer & BI Analyst · [GitHub](https://github.com/Omkyao1998)
