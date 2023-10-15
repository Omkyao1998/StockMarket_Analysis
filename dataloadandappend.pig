ACC_day_data = load '/Day_Dataset/ACC_day_data.csv ' USING org.apache.pig.piggybank.storage.CSVExcelStorage(',', 'YES_MULTILINE', 'UNIX', 'SKIP_INPUT_HEADER') as (ID:chararray, date:Datetime, close:double, high:double, low:double, open:double, volume:int);
ACC_day_data_append = FOREACH ACC_day_data GENERATE CONCAT ('ACC_day_data_',ID) as (ID:chararray),date,close,high,low,open,volume;

ADANIENT_day_data = load '/Day_Dataset/ADANIENT_day_data.csv ' USING org.apache.pig.piggybank.storage.CSVExcelStorage(',', 'YES_MULTILINE', 'UNIX', 'SKIP_INPUT_HEADER') as (ID:chararray, date:Datetime, close:double, high:double, low:double, open:double, volume:int);
ADANIENT_day_data_append = FOREACH ADANIENT_day_data GENERATE CONCAT ('ADANIENT_day_data_',ID) as (ID:chararray),date,close,high,low,open,volume;
	
ADANIGREEN_day_data = load '/Day_Dataset/ADANIGREEN_day_data.csv ' USING org.apache.pig.piggybank.storage.CSVExcelStorage(',', 'YES_MULTILINE', 'UNIX', 'SKIP_INPUT_HEADER') as (ID:chararray, date:Datetime, close:double, high:double, low:double, open:double, volume:int);
ADANIGREEN_day_data_append = FOREACH ADANIGREEN_day_data GENERATE CONCAT ('ADANIGREEN_day_data_',ID) as (ID:chararray),date,close,high,low,open,volume;

ADANIPORTS_day_data = load '/Day_Dataset/ADANIPORTS_day_data.csv ' USING org.apache.pig.piggybank.storage.CSVExcelStorage(',', 'YES_MULTILINE', 'UNIX', 'SKIP_INPUT_HEADER') as (ID:chararray, date:Datetime, close:double, high:double, low:double, open:double, volume:int);
ADANIPORTS_day_data_append = FOREACH ADANIPORTS_day_data GENERATE CONCAT ('ADANIPORTS_day_data_',ID) as (ID:chararray),date,close,high,low,open,volume;

AMBUJACEM_day_data = load '/Day_Dataset/AMBUJACEM_day_data.csv ' USING org.apache.pig.piggybank.storage.CSVExcelStorage(',', 'YES_MULTILINE', 'UNIX', 'SKIP_INPUT_HEADER') as (ID:chararray, date:Datetime, close:double, high:double, low:double, open:double, volume:int);
AMBUJACEM_day_data_append = FOREACH AMBUJACEM_day_data GENERATE CONCAT ('AMBUJACEM_day_data_',ID) as (ID:chararray),date,close,high,low,open,volume;

APOLLOHOSP_day_data = load '/Day_Dataset/APOLLOHOSP_day_data.csv ' USING org.apache.pig.piggybank.storage.CSVExcelStorage(',', 'YES_MULTILINE', 'UNIX', 'SKIP_INPUT_HEADER') as (ID:chararray, date:Datetime, close:double, high:double, low:double, open:double, volume:int);
APOLLOHOSP_day_data_append = FOREACH APOLLOHOSP_day_data GENERATE CONCAT ('APOLLOHOSP_day_data_',ID) as (ID:chararray),date,close,high,low,open,volume;

ASIANPAINT_day_data = load '/Day_Dataset/ASIANPAINT_day_data.csv ' USING org.apache.pig.piggybank.storage.CSVExcelStorage(',', 'YES_MULTILINE', 'UNIX', 'SKIP_INPUT_HEADER') as (ID:chararray, date:Datetime, close:double, high:double, low:double, open:double, volume:int);
ASIANPAINT_day_data_append = FOREACH ASIANPAINT_day_data GENERATE CONCAT ('ASIANPAINT_day_data_',ID) as (ID:chararray),date,close,high,low,open,volume;

AUROPHARMA_day_data = load '/Day_Dataset/AUROPHARMA_day_data.csv ' USING org.apache.pig.piggybank.storage.CSVExcelStorage(',', 'YES_MULTILINE', 'UNIX', 'SKIP_INPUT_HEADER') as (ID:chararray, date:Datetime, close:double, high:double, low:double, open:double, volume:int);
AUROPHARMA_day_data_append = FOREACH AUROPHARMA_day_data GENERATE CONCAT ('AUROPHARMA_day_data_',ID) as (ID:chararray),date,close,high,low,open,volume;

AXISBANK_day_data = load '/Day_Dataset/AXISBANK_day_data.csv ' USING org.apache.pig.piggybank.storage.CSVExcelStorage(',', 'YES_MULTILINE', 'UNIX', 'SKIP_INPUT_HEADER') as (ID:chararray, date:Datetime, close:double, high:double, low:double, open:double, volume:int);
AXISBANK_day_data_append = FOREACH AXISBANK_day_data GENERATE CONCAT ('AXISBANK_day_data_',ID) as (ID:chararray),date,close,high,low,open,volume;

BAJAJAUTO_day_data = load '/Day_Dataset/BAJAJAUTO_day_data.csv' USING org.apache.pig.piggybank.storage.CSVExcelStorage(',', 'YES_MULTILINE', 'UNIX', 'SKIP_INPUT_HEADER') as (ID:chararray, date:Datetime, close:double, high:double, low:double, open:double, volume:int);
BAJAJAUTO_day_data_append = FOREACH BAJAJAUTO_day_data GENERATE CONCAT ('BAJAJAUTO_day_data_',ID) as (ID:chararray),date,close,high,low,open,volume;

BAJAJFINSV_day_data = load '/Day_Dataset/BAJAJFINSV_day_data.csv ' USING org.apache.pig.piggybank.storage.CSVExcelStorage(',', 'YES_MULTILINE', 'UNIX', 'SKIP_INPUT_HEADER') as (ID:chararray, date:Datetime, close:double, high:double, low:double, open:double, volume:int);
BAJAJFINSV_day_data_append = FOREACH BAJAJFINSV_day_data GENERATE CONCAT ('BAJAJFINSV_day_data_',ID) as (ID:chararray),date,close,high,low,open,volume;

BAJAJHLDNG_day_data = load '/Day_Dataset/BAJAJHLDNG_day_data.csv ' USING org.apache.pig.piggybank.storage.CSVExcelStorage(',', 'YES_MULTILINE', 'UNIX', 'SKIP_INPUT_HEADER') as (ID:chararray, date:Datetime, close:double, high:double, low:double, open:double, volume:int);
BAJAJHLDNG_day_data_append = FOREACH BAJAJHLDNG_day_data GENERATE CONCAT ('BAJAJHLDNG_day_data_',ID) as (ID:chararray),date,close,high,low,open,volume;

BAJFINANCE_day_data = load '/Day_Dataset/BAJFINANCE_day_data.csv ' USING org.apache.pig.piggybank.storage.CSVExcelStorage(',', 'YES_MULTILINE', 'UNIX', 'SKIP_INPUT_HEADER') as (ID:chararray, date:Datetime, close:double, high:double, low:double, open:double, volume:int);
BAJFINANCE_day_data_append = FOREACH BAJFINANCE_day_data GENERATE CONCAT ('BAJFINANCE_day_data_',ID) as (ID:chararray),date,close,high,low,open,volume;

BANDHANBNK_day_data = load '/Day_Dataset/BANDHANBNK_day_data.csv ' USING org.apache.pig.piggybank.storage.CSVExcelStorage(',', 'YES_MULTILINE', 'UNIX', 'SKIP_INPUT_HEADER') as (ID:chararray, date:Datetime, close:double, high:double, low:double, open:double, volume:int);
BANDHANBNK_day_data_append = FOREACH BANDHANBNK_day_data GENERATE CONCAT ('BANDHANBNK_day_data_',ID) as (ID:chararray),date,close,high,low,open,volume;

BANKBARODA_day_data = load '/Day_Dataset/BANKBARODA_day_data.csv ' USING org.apache.pig.piggybank.storage.CSVExcelStorage(',', 'YES_MULTILINE', 'UNIX', 'SKIP_INPUT_HEADER') as (ID:chararray, date:Datetime, close:double, high:double, low:double, open:double, volume:int);
BANKBARODA_day_data_append = FOREACH BANKBARODA_day_data GENERATE CONCAT ('BANKBARODA_day_data_',ID) as (ID:chararray),date,close,high,low,open,volume;

BERGEPAINT_day_data = load '/Day_Dataset/BERGEPAINT_day_data.csv ' USING org.apache.pig.piggybank.storage.CSVExcelStorage(',', 'YES_MULTILINE', 'UNIX', 'SKIP_INPUT_HEADER') as (ID:chararray, date:Datetime, close:double, high:double, low:double, open:double, volume:int);
BERGEPAINT_day_data_append = FOREACH BERGEPAINT_day_data GENERATE CONCAT ('BERGEPAINT_day_data_',ID) as (ID:chararray),date,close,high,low,open,volume;

BHARTIARTL_day_data = load '/Day_Dataset/BHARTIARTL_day_data.csv ' USING org.apache.pig.piggybank.storage.CSVExcelStorage(',', 'YES_MULTILINE', 'UNIX', 'SKIP_INPUT_HEADER') as (ID:chararray, date:Datetime, close:double, high:double, low:double, open:double, volume:int);
BHARTIARTL_day_data_append = FOREACH BHARTIARTL_day_data GENERATE CONCAT ('BHARTIARTL_day_data_',ID) as (ID:chararray),date,close,high,low,open,volume;

BIOCON_day_data = load '/Day_Dataset/BIOCON_day_data.csv ' USING org.apache.pig.piggybank.storage.CSVExcelStorage(',', 'YES_MULTILINE', 'UNIX', 'SKIP_INPUT_HEADER') as (ID:chararray, date:Datetime, close:double, high:double, low:double, open:double, volume:int);
BIOCON_day_data_append = FOREACH BIOCON_day_data GENERATE CONCAT ('BIOCON_day_data_',ID) as (ID:chararray),date,close,high,low,open,volume;

BOSCHLTD_day_data = load '/Day_Dataset/BOSCHLTD_day_data.csv ' USING org.apache.pig.piggybank.storage.CSVExcelStorage(',', 'YES_MULTILINE', 'UNIX', 'SKIP_INPUT_HEADER') as (ID:chararray, date:Datetime, close:double, high:double, low:double, open:double, volume:int);
BOSCHLTD_day_data_append = FOREACH BOSCHLTD_day_data GENERATE CONCAT ('BOSCHLTD_day_data_',ID) as (ID:chararray),date,close,high,low,open,volume;

BPCL_day_data = load '/Day_Dataset/BPCL_day_data.csv ' USING org.apache.pig.piggybank.storage.CSVExcelStorage(',', 'YES_MULTILINE', 'UNIX', 'SKIP_INPUT_HEADER') as (ID:chararray, date:Datetime, close:double, high:double, low:double, open:double, volume:int);
BPCL_day_data_append = FOREACH BPCL_day_data GENERATE CONCAT ('BPCL_day_data_',ID) as (ID:chararray),date,close,high,low,open,volume;

BRITANNIA_day_data = load '/Day_Dataset/BRITANNIA_day_data.csv ' USING org.apache.pig.piggybank.storage.CSVExcelStorage(',', 'YES_MULTILINE', 'UNIX', 'SKIP_INPUT_HEADER') as (ID:chararray, date:Datetime, close:double, high:double, low:double, open:double, volume:int);
BRITANNIA_day_data_append = FOREACH BRITANNIA_day_data GENERATE CONCAT ('BRITANNIA_day_data_',ID) as (ID:chararray),date,close,high,low,open,volume;

CHOLAFIN_day_data = load '/Day_Dataset/CHOLAFIN_day_data.csv ' USING org.apache.pig.piggybank.storage.CSVExcelStorage(',', 'YES_MULTILINE', 'UNIX', 'SKIP_INPUT_HEADER') as (ID:chararray, date:Datetime, close:double, high:double, low:double, open:double, volume:int);
CHOLAFIN_day_data_append = FOREACH CHOLAFIN_day_data GENERATE CONCAT ('CHOLAFIN_day_data_',ID) as (ID:chararray),date,close,high,low,open,volume;

CIPLA_day_data = load '/Day_Dataset/CIPLA_day_data.csv ' USING org.apache.pig.piggybank.storage.CSVExcelStorage(',', 'YES_MULTILINE', 'UNIX', 'SKIP_INPUT_HEADER') as (ID:chararray, date:Datetime, close:double, high:double, low:double, open:double, volume:int);
CIPLA_day_data_append = FOREACH CIPLA_day_data GENERATE CONCAT ('CIPLA_day_data_',ID) as (ID:chararray),date,close,high,low,open,volume;

COALINDIA_day_data = load '/Day_Dataset/COALINDIA_day_data.csv ' USING org.apache.pig.piggybank.storage.CSVExcelStorage(',', 'YES_MULTILINE', 'UNIX', 'SKIP_INPUT_HEADER') as (ID:chararray, date:Datetime, close:double, high:double, low:double, open:double, volume:int);
COALINDIA_day_data_append = FOREACH COALINDIA_day_data GENERATE CONCAT ('COALINDIA_day_data_',ID) as (ID:chararray),date,close,high,low,open,volume;

COLPAL_day_data = load '/Day_Dataset/COLPAL_day_data.csv ' USING org.apache.pig.piggybank.storage.CSVExcelStorage(',', 'YES_MULTILINE', 'UNIX', 'SKIP_INPUT_HEADER') as (ID:chararray, date:Datetime, close:double, high:double, low:double, open:double, volume:int);
COLPAL_day_data_append = FOREACH COLPAL_day_data GENERATE CONCAT ('COLPAL_day_data_',ID) as (ID:chararray),date,close,high,low,open,volume;

DABUR_day_data = load '/Day_Dataset/DABUR_day_data.csv ' USING org.apache.pig.piggybank.storage.CSVExcelStorage(',', 'YES_MULTILINE', 'UNIX', 'SKIP_INPUT_HEADER') as (ID:chararray, date:Datetime, close:double, high:double, low:double, open:double, volume:int);
DABUR_day_data_append = FOREACH DABUR_day_data GENERATE CONCAT ('DABUR_day_data_',ID) as (ID:chararray),date,close,high,low,open,volume;


DIVISLAB_day_data = load '/Day_Dataset/DIVISLAB_day_data.csv ' USING org.apache.pig.piggybank.storage.CSVExcelStorage(',', 'YES_MULTILINE', 'UNIX', 'SKIP_INPUT_HEADER') as (ID:chararray, date:Datetime, close:double, high:double, low:double, open:double, volume:int);
DIVISLAB_day_data_append = FOREACH DIVISLAB_day_data GENERATE CONCAT ('DIVISLAB_day_data_',ID) as (ID:chararray),date,close,high,low,open,volume; 

DLF_day_data = load '/Day_Dataset/DLF_day_data.csv ' USING org.apache.pig.piggybank.storage.CSVExcelStorage(',', 'YES_MULTILINE', 'UNIX', 'SKIP_INPUT_HEADER') as (ID:chararray, date:Datetime, close:double, high:double, low:double, open:double, volume:int);
DLF_day_data_append = FOREACH DLF_day_data GENERATE CONCAT ('DLF_day_data_',ID) as (ID:chararray),date,close,high,low,open,volume;       

DMART_day_data = load '/Day_Dataset/DMART_day_data.csv ' USING org.apache.pig.piggybank.storage.CSVExcelStorage(',', 'YES_MULTILINE', 'UNIX', 'SKIP_INPUT_HEADER') as (ID:chararray, date:Datetime, close:double, high:double, low:double, open:double, volume:int);
DMART_day_data_append = FOREACH DMART_day_data GENERATE CONCAT ('DMART_day_data_',ID) as (ID:chararray),date,close,high,low,open,volume;    

DRREDDY_day_data = load '/Day_Dataset/DRREDDY_day_data.csv ' USING org.apache.pig.piggybank.storage.CSVExcelStorage(',', 'YES_MULTILINE', 'UNIX', 'SKIP_INPUT_HEADER') as (ID:chararray, date:Datetime, close:double, high:double, low:double, open:double, volume:int);
DRREDDY_day_data_append = FOREACH DRREDDY_day_data GENERATE CONCAT ('DRREDDY_day_data_',ID) as (ID:chararray),date,close,high,low,open,volume;

EICHERMOT_day_data = load '/Day_Dataset/EICHERMOT_day_data.csv ' USING org.apache.pig.piggybank.storage.CSVExcelStorage(',', 'YES_MULTILINE', 'UNIX', 'SKIP_INPUT_HEADER') as (ID:chararray, date:Datetime, close:double, high:double, low:double, open:double, volume:int);
EICHERMOT_day_data_append = FOREACH EICHERMOT_day_data GENERATE CONCAT ('EICHERMOT_day_data_',ID) as (ID:chararray),date,close,high,low,open,volume;

GAIL_day_data = load '/Day_Dataset/GAIL_day_data.csv ' USING org.apache.pig.piggybank.storage.CSVExcelStorage(',', 'YES_MULTILINE', 'UNIX', 'SKIP_INPUT_HEADER') as (ID:chararray, date:Datetime, close:double, high:double, low:double, open:double, volume:int);
GAIL_day_data_append = FOREACH GAIL_day_data GENERATE CONCAT ('GAIL_day_data_',ID) as (ID:chararray),date,close,high,low,open,volume;     
  
GLAND_day_data = load '/Day_Dataset/GLAND_day_data.csv ' USING org.apache.pig.piggybank.storage.CSVExcelStorage(',', 'YES_MULTILINE', 'UNIX', 'SKIP_INPUT_HEADER') as (ID:chararray, date:Datetime, close:double, high:double, low:double, open:double, volume:int);
GLAND_day_data_append = FOREACH GLAND_day_data GENERATE CONCAT ('GLAND_day_data_',ID) as (ID:chararray),date,close,high,low,open,volume;   

GODREJCP_day_data = load '/Day_Dataset/GODREJCP_day_data.csv ' USING org.apache.pig.piggybank.storage.CSVExcelStorage(',', 'YES_MULTILINE', 'UNIX', 'SKIP_INPUT_HEADER') as (ID:chararray, date:Datetime, close:double, high:double, low:double, open:double, volume:int);
GODREJCP_day_data_append = FOREACH GODREJCP_day_data GENERATE CONCAT ('GODREJCP_day_data_',ID) as (ID:chararray),date,close,high,low,open,volume; 
   
GRASIM_day_data = load '/Day_Dataset/GRASIM_day_data.csv ' USING org.apache.pig.piggybank.storage.CSVExcelStorage(',', 'YES_MULTILINE', 'UNIX', 'SKIP_INPUT_HEADER') as (ID:chararray, date:Datetime, close:double, high:double, low:double, open:double, volume:int);
GRASIM_day_data_append = FOREACH GRASIM_day_data GENERATE CONCAT ('GRASIM_day_data_',ID) as (ID:chararray),date,close,high,low,open,volume;
   
HAVELLS_day_data = load '/Day_Dataset/HAVELLS_day_data.csv ' USING org.apache.pig.piggybank.storage.CSVExcelStorage(',', 'YES_MULTILINE', 'UNIX', 'SKIP_INPUT_HEADER') as (ID:chararray, date:Datetime, close:double, high:double, low:double, open:double, volume:int);
HAVELLS_day_data_append = FOREACH HAVELLS_day_data GENERATE CONCAT ('HAVELLS_day_data_',ID) as (ID:chararray),date,close,high,low,open,volume;
   
HCLTECH_day_data = load '/Day_Dataset/HCLTECH_day_data.csv ' USING org.apache.pig.piggybank.storage.CSVExcelStorage(',', 'YES_MULTILINE', 'UNIX', 'SKIP_INPUT_HEADER') as (ID:chararray, date:Datetime, close:double, high:double, low:double, open:double, volume:int);
HCLTECH_day_data_append = FOREACH HCLTECH_day_data GENERATE CONCAT ('HCLTECH_day_data_',ID) as (ID:chararray),date,close,high,low,open,volume;

HDFCAMC_day_data = load '/Day_Dataset/HDFCAMC_day_data.csv ' USING org.apache.pig.piggybank.storage.CSVExcelStorage(',', 'YES_MULTILINE', 'UNIX', 'SKIP_INPUT_HEADER') as (ID:chararray, date:Datetime, close:double, high:double, low:double, open:double, volume:int);
HDFCAMC_day_data_append = FOREACH HDFCAMC_day_data GENERATE CONCAT ('HDFCAMC_day_data_',ID) as (ID:chararray),date,close,high,low,open,volume;
 
HDFCBANK_day_data = load '/Day_Dataset/HDFCBANK_day_data.csv ' USING org.apache.pig.piggybank.storage.CSVExcelStorage(',', 'YES_MULTILINE', 'UNIX', 'SKIP_INPUT_HEADER') as (ID:chararray, date:Datetime, close:double, high:double, low:double, open:double, volume:int);
HDFCBANK_day_data_append = FOREACH HDFCBANK_day_data GENERATE CONCAT ('HDFCBANK_day_data_',ID) as (ID:chararray),date,close,high,low,open,volume;

HDFCLIFE_day_data = load '/Day_Dataset/HDFCLIFE_day_data.csv ' USING org.apache.pig.piggybank.storage.CSVExcelStorage(',', 'YES_MULTILINE', 'UNIX', 'SKIP_INPUT_HEADER') as (ID:chararray, date:Datetime, close:double, high:double, low:double, open:double, volume:int);
HDFCLIFE_day_data_append = FOREACH HDFCLIFE_day_data GENERATE CONCAT ('HDFCLIFE_day_data_',ID) as (ID:chararray),date,close,high,low,open,volume;
     
HDFC_day_data = load '/Day_Dataset/HDFC_day_data.csv ' USING org.apache.pig.piggybank.storage.CSVExcelStorage(',', 'YES_MULTILINE', 'UNIX', 'SKIP_INPUT_HEADER') as (ID:chararray, date:Datetime, close:double, high:double, low:double, open:double, volume:int);
HDFC_day_data_append = FOREACH HDFC_day_data GENERATE CONCAT ('HDFC_day_data_',ID) as (ID:chararray),date,close,high,low,open,volume;

HEROMOTOCO_day_data = load '/Day_Dataset/HEROMOTOCO_day_data.csv ' USING org.apache.pig.piggybank.storage.CSVExcelStorage(',', 'YES_MULTILINE', 'UNIX', 'SKIP_INPUT_HEADER') as (ID:chararray, date:Datetime, close:double, high:double, low:double, open:double, volume:int);
HEROMOTOCO_day_data_append = FOREACH HEROMOTOCO_day_data GENERATE CONCAT ('HEROMOTOCO_day_data_',ID) as (ID:chararray),date,close,high,low,open,volume;

HINDALCO_day_data = load '/Day_Dataset/HINDALCO_day_data.csv ' USING org.apache.pig.piggybank.storage.CSVExcelStorage(',', 'YES_MULTILINE', 'UNIX', 'SKIP_INPUT_HEADER') as (ID:chararray, date:Datetime, close:double, high:double, low:double, open:double, volume:int);
HINDALCO_day_data_append = FOREACH HINDALCO_day_data GENERATE CONCAT ('HINDALCO_day_data_',ID) as (ID:chararray),date,close,high,low,open,volume; 

HINDPETRO_day_data = load '/Day_Dataset/HINDPETRO_day_data.csv ' USING org.apache.pig.piggybank.storage.CSVExcelStorage(',', 'YES_MULTILINE', 'UNIX', 'SKIP_INPUT_HEADER') as (ID:chararray, date:Datetime, close:double, high:double, low:double, open:double, volume:int);
HINDPETRO_day_data_append = FOREACH HINDPETRO_day_data GENERATE CONCAT ('HINDPETRO_day_data',ID) as (ID:chararray),date,close,high,low,open,volume;

HINDUNILVR_day_data = load '/Day_Dataset/HINDUNILVR_day_data.csv ' USING org.apache.pig.piggybank.storage.CSVExcelStorage(',', 'YES_MULTILINE', 'UNIX', 'SKIP_INPUT_HEADER') as (ID:chararray, date:Datetime, close:double, high:double, low:double, open:double, volume:int);
HINDUNILVR_day_data_append = FOREACH HINDUNILVR_day_data GENERATE CONCAT ('HINDUNILVR_day_data_',ID) as (ID:chararray),date,close,high,low,open,volume;

ICICIBANK_day_data = load '/Day_Dataset/ICICIBANK_day_data.csv ' USING org.apache.pig.piggybank.storage.CSVExcelStorage(',', 'YES_MULTILINE', 'UNIX', 'SKIP_INPUT_HEADER') as (ID:chararray, date:Datetime, close:double, high:double, low:double, open:double, volume:int);
ICICIBANK_day_data_append = FOREACH ICICIBANK_day_data GENERATE CONCAT ('ICICIBANK_day_data_',ID) as (ID:chararray),date,close,high,low,open,volume;
   
ICICIGI_day_data = load '/Day_Dataset/ICICIGI_day_data.csv ' USING org.apache.pig.piggybank.storage.CSVExcelStorage(',', 'YES_MULTILINE', 'UNIX', 'SKIP_INPUT_HEADER') as (ID:chararray, date:Datetime, close:double, high:double, low:double, open:double, volume:int);
ICICIGI_day_data_append = FOREACH ICICIGI_day_data GENERATE CONCAT ('ICICIGI_day_data_',ID) as (ID:chararray),date,close,high,low,open,volume;

ICICIPRULI_day_data = load '/Day_Dataset/ICICIPRULI_day_data.csv ' USING org.apache.pig.piggybank.storage.CSVExcelStorage(',', 'YES_MULTILINE', 'UNIX', 'SKIP_INPUT_HEADER') as (ID:chararray, date:Datetime, close:double, high:double, low:double, open:double, volume:int);
ICICIPRULI_day_data_append = FOREACH ICICIPRULI_day_data GENERATE CONCAT ('ICICIPRULI_day_data_',ID) as (ID:chararray),date,close,high,low,open,volume;
      
IGL_day_data = load '/Day_Dataset/IGL_day_data.csv ' USING org.apache.pig.piggybank.storage.CSVExcelStorage(',', 'YES_MULTILINE', 'UNIX', 'SKIP_INPUT_HEADER') as (ID:chararray, date:Datetime, close:double, high:double, low:double, open:double, volume:int);
IGL_day_data_append = FOREACH IGL_day_data GENERATE CONCAT ('IGL_day_data_',ID) as (ID:chararray),date,close,high,low,open,volume;
  
INDIGO_day_data = load '/Day_Dataset/INDIGO_day_data.csv ' USING org.apache.pig.piggybank.storage.CSVExcelStorage(',', 'YES_MULTILINE', 'UNIX', 'SKIP_INPUT_HEADER') as (ID:chararray, date:Datetime, close:double, high:double, low:double, open:double, volume:int);
INDIGO_day_data_append = FOREACH INDIGO_day_data GENERATE CONCAT ('INDIGO_day_data_',ID) as (ID:chararray),date,close,high,low,open,volume;

INDUSINDBK_day_data = load '/Day_Dataset/INDUSINDBK_day_data.csv ' USING org.apache.pig.piggybank.storage.CSVExcelStorage(',', 'YES_MULTILINE', 'UNIX', 'SKIP_INPUT_HEADER') as (ID:chararray, date:Datetime, close:double, high:double, low:double, open:double, volume:int);
INDUSINDBK_day_data_append = FOREACH INDUSINDBK_day_data GENERATE CONCAT ('INDUSINDBK_day_data_',ID) as (ID:chararray),date,close,high,low,open,volume;

INDUSTOWER_day_data = load '/Day_Dataset/INDUSTOWER_day_data.csv ' USING org.apache.pig.piggybank.storage.CSVExcelStorage(',', 'YES_MULTILINE', 'UNIX', 'SKIP_INPUT_HEADER') as (ID:chararray, date:Datetime, close:double, high:double, low:double, open:double, volume:int);
INDUSTOWER_day_data_append = FOREACH INDUSTOWER_day_data GENERATE CONCAT ('INDUSTOWER_day_data_',ID) as (ID:chararray),date,close,high,low,open,volume;

INFY_day_data = load '/Day_Dataset/INFY_day_data.csv ' USING org.apache.pig.piggybank.storage.CSVExcelStorage(',', 'YES_MULTILINE', 'UNIX', 'SKIP_INPUT_HEADER') as (ID:chararray, date:Datetime, close:double, high:double, low:double, open:double, volume:int);
INFY_day_data_append = FOREACH INFY_day_data GENERATE CONCAT ('INFY_day_data_',ID) as (ID:chararray),date,close,high,low,open,volume;

IOC_day_data = load '/Day_Dataset/IOC_day_data.csv ' USING org.apache.pig.piggybank.storage.CSVExcelStorage(',', 'YES_MULTILINE', 'UNIX', 'SKIP_INPUT_HEADER') as (ID:chararray, date:Datetime, close:double, high:double, low:double, open:double, volume:int);
IOC_day_data_append = FOREACH IOC_day_data GENERATE CONCAT ('IOC_day_data_',ID) as (ID:chararray),date,close,high,low,open,volume;

ITC_day_data = load '/Day_Dataset/ITC_day_data.csv ' USING org.apache.pig.piggybank.storage.CSVExcelStorage(',', 'YES_MULTILINE', 'UNIX', 'SKIP_INPUT_HEADER') as (ID:chararray, date:Datetime, close:double, high:double, low:double, open:double, volume:int);
ITC_day_data_append = FOREACH ITC_day_data GENERATE CONCAT ('ITC_day_data_',ID) as (ID:chararray),date,close,high,low,open,volume;

JINDALSTEL_day_data = load '/Day_Dataset/JINDALSTEL_day_data.csv ' USING org.apache.pig.piggybank.storage.CSVExcelStorage(',', 'YES_MULTILINE', 'UNIX', 'SKIP_INPUT_HEADER') as (ID:chararray, date:Datetime, close:double, high:double, low:double, open:double, volume:int);
JINDALSTEL_day_data_append = FOREACH JINDALSTEL_day_data GENERATE CONCAT ('JINDALSTEL_day_data_',ID) as (ID:chararray),date,close,high,low,open,volume;

JSWSTEEL_day_data = load '/Day_Dataset/JSWSTEEL_day_data.csv ' USING org.apache.pig.piggybank.storage.CSVExcelStorage(',', 'YES_MULTILINE', 'UNIX', 'SKIP_INPUT_HEADER') as (ID:chararray, date:Datetime, close:double, high:double, low:double, open:double, volume:int);
JSWSTEEL_day_data_append = FOREACH JSWSTEEL_day_data GENERATE CONCAT ('JSWSTEEL_day_data_',ID) as (ID:chararray),date,close,high,low,open,volume;

JUBLFOOD_day_data = load '/Day_Dataset/JUBLFOOD_day_data.csv ' USING org.apache.pig.piggybank.storage.CSVExcelStorage(',', 'YES_MULTILINE', 'UNIX', 'SKIP_INPUT_HEADER') as (ID:chararray, date:Datetime, close:double, high:double, low:double, open:double, volume:int);
JUBLFOOD_day_data_append = FOREACH JUBLFOOD_day_data GENERATE CONCAT ('JUBLFOOD_day_data_',ID) as (ID:chararray),date,close,high,low,open,volume;

KOTAKBANK_day_data = load '/Day_Dataset/KOTAKBANK_day_data.csv ' USING org.apache.pig.piggybank.storage.CSVExcelStorage(',', 'YES_MULTILINE', 'UNIX', 'SKIP_INPUT_HEADER') as (ID:chararray, date:Datetime, close:double, high:double, low:double, open:double, volume:int);
KOTAKBANK_day_data_append = FOREACH KOTAKBANK_day_data GENERATE CONCAT ('KOTAKBANK_day_data_',ID) as (ID:chararray),date,close,high,low,open,volume;
  
LICI_day_data = load '/Day_Dataset/LICI_day_data.csv ' USING org.apache.pig.piggybank.storage.CSVExcelStorage(',', 'YES_MULTILINE', 'UNIX', 'SKIP_INPUT_HEADER') as (ID:chararray, date:Datetime, close:double, high:double, low:double, open:double, volume:int);
LICI_day_data_append = FOREACH LICI_day_data GENERATE CONCAT ('LICI_day_data_',ID) as (ID:chararray),date,close,high,low,open,volume;
    
LTI_day_data = load '/Day_Dataset/LTI_day_data.csv ' USING org.apache.pig.piggybank.storage.CSVExcelStorage(',', 'YES_MULTILINE', 'UNIX', 'SKIP_INPUT_HEADER') as (ID:chararray, date:Datetime, close:double, high:double, low:double, open:double, volume:int);
LTI_day_data_append = FOREACH LTI_day_data GENERATE CONCAT ('LTI_day_data_',ID) as (ID:chararray),date,close,high,low,open,volume;
     
LT_day_data = load '/Day_Dataset/LT_day_data.csv ' USING org.apache.pig.piggybank.storage.CSVExcelStorage(',', 'YES_MULTILINE', 'UNIX', 'SKIP_INPUT_HEADER') as (ID:chararray, date:Datetime, close:double, high:double, low:double, open:double, volume:int);
LT_day_data_append = FOREACH LT_day_data GENERATE CONCAT ('LT_day_data_',ID) as (ID:chararray),date,close,high,low,open,volume;
  
LUPIN_day_data = load '/Day_Dataset/LUPIN_day_data.csv ' USING org.apache.pig.piggybank.storage.CSVExcelStorage(',', 'YES_MULTILINE', 'UNIX', 'SKIP_INPUT_HEADER') as (ID:chararray, date:Datetime, close:double, high:double, low:double, open:double, volume:int);
LUPIN_day_data_append = FOREACH LUPIN_day_data GENERATE CONCAT ('LUPIN_day_data_',ID) as (ID:chararray),date,close,high,low,open,volume;
   
MARICO_day_data = load '/Day_Dataset/MARICO_day_data.csv ' USING org.apache.pig.piggybank.storage.CSVExcelStorage(',', 'YES_MULTILINE', 'UNIX', 'SKIP_INPUT_HEADER') as (ID:chararray, date:Datetime, close:double, high:double, low:double, open:double, volume:int);
MARICO_day_data_append = FOREACH MARICO_day_data GENERATE CONCAT ('MARICO_day_data_',ID) as (ID:chararray),date,close,high,low,open,volume;
 
MARUTI_day_data = load '/Day_Dataset/MARUTI_day_data.csv ' USING org.apache.pig.piggybank.storage.CSVExcelStorage(',', 'YES_MULTILINE', 'UNIX', 'SKIP_INPUT_HEADER') as (ID:chararray, date:Datetime, close:double, high:double, low:double, open:double, volume:int);
MARUTI_day_data_append = FOREACH MARUTI_day_data GENERATE CONCAT ('MARUTI_day_data_',ID) as (ID:chararray),date,close,high,low,open,volume;

MCDOWELLN_day_data = load '/Day_Dataset/MCDOWELLN_day_data.csv ' USING org.apache.pig.piggybank.storage.CSVExcelStorage(',', 'YES_MULTILINE', 'UNIX', 'SKIP_INPUT_HEADER') as (ID:chararray, date:Datetime, close:double, high:double, low:double, open:double, volume:int);
MCDOWELLN_day_data_append = FOREACH MCDOWELLN_day_data GENERATE CONCAT ('MCDOWELLN_day_data_',ID) as (ID:chararray),date,close,high,low,open,volume;
      
MM_day_data = load '/Day_Dataset/MM_day_data.csv ' USING org.apache.pig.piggybank.storage.CSVExcelStorage(',', 'YES_MULTILINE', 'UNIX', 'SKIP_INPUT_HEADER') as (ID:chararray, date:Datetime, close:double, high:double, low:double, open:double, volume:int);
MM_day_data_append = FOREACH MM_day_data GENERATE CONCAT ('MM_day_data_',ID) as (ID:chararray),date,close,high,low,open,volume;

MUTHOOTFIN_day_data = load '/Day_Dataset/MUTHOOTFIN_day_data.csv ' USING org.apache.pig.piggybank.storage.CSVExcelStorage(',', 'YES_MULTILINE', 'UNIX', 'SKIP_INPUT_HEADER') as (ID:chararray, date:Datetime, close:double, high:double, low:double, open:double, volume:int);
MUTHOOTFIN_day_data_append = FOREACH MUTHOOTFIN_day_data GENERATE CONCAT ('MUTHOOTFIN_day_data_',ID) as (ID:chararray),date,close,high,low,open,volume;
 
NAUKRI_day_data = load '/Day_Dataset/NAUKRI_day_data.csv ' USING org.apache.pig.piggybank.storage.CSVExcelStorage(',', 'YES_MULTILINE', 'UNIX', 'SKIP_INPUT_HEADER') as (ID:chararray, date:Datetime, close:double, high:double, low:double, open:double, volume:int);
NAUKRI_day_data_append = FOREACH NAUKRI_day_data GENERATE CONCAT ('NAUKRI_day_data_',ID) as (ID:chararray),date,close,high,low,open,volume;

NESTLEIND_day_data = load '/Day_Dataset/NESTLEIND_day_data.csv ' USING org.apache.pig.piggybank.storage.CSVExcelStorage(',', 'YES_MULTILINE', 'UNIX', 'SKIP_INPUT_HEADER') as (ID:chararray, date:Datetime, close:double, high:double, low:double, open:double, volume:int);
NESTLEIND_day_data_append = FOREACH NESTLEIND_day_data GENERATE CONCAT ('NESTLEIND_day_data_',ID) as (ID:chararray),date,close,high,low,open,volume;

NIFTY_50_day_data = load '/Day_Dataset/NIFTY_50_day_data.csv ' USING org.apache.pig.piggybank.storage.CSVExcelStorage(',', 'YES_MULTILINE', 'UNIX', 'SKIP_INPUT_HEADER') as (ID:chararray, date:Datetime, close:double, high:double, low:double, open:double, volume:int);
NIFTY_50_day_data_append = FOREACH NIFTY_50_day_data GENERATE CONCAT ('NIFTY_50_day_data_',ID) as (ID:chararray),date,close,high,low,open,volume;

NIFTY_BANK_day_data = load '/Day_Dataset/NIFTY_BANK_day_data.csv ' USING org.apache.pig.piggybank.storage.CSVExcelStorage(',', 'YES_MULTILINE', 'UNIX', 'SKIP_INPUT_HEADER') as (ID:chararray, date:Datetime, close:double, high:double, low:double, open:double, volume:int);
NIFTY_BANK_day_data_append = FOREACH NIFTY_BANK_day_data GENERATE CONCAT ('NIFTY_BANK_day_data_',ID) as (ID:chararray),date,close,high,low,open,volume;
   
NMDC_day_data = load '/Day_Dataset/NMDC_day_data.csv ' USING org.apache.pig.piggybank.storage.CSVExcelStorage(',', 'YES_MULTILINE', 'UNIX', 'SKIP_INPUT_HEADER') as (ID:chararray, date:Datetime, close:double, high:double, low:double, open:double, volume:int);
NMDC_day_data_append = FOREACH NMDC_day_data GENERATE CONCAT ('NMDC_day_data_',ID) as (ID:chararray),date,close,high,low,open,volume;

NTPC_day_data = load '/Day_Dataset/NTPC_day_data.csv ' USING org.apache.pig.piggybank.storage.CSVExcelStorage(',', 'YES_MULTILINE', 'UNIX', 'SKIP_INPUT_HEADER') as (ID:chararray, date:Datetime, close:double, high:double, low:double, open:double, volume:int);
NTPC_day_data_append = FOREACH NTPC_day_data GENERATE CONCAT ('NTPC_day_data_',ID) as (ID:chararray),date,close,high,low,open,volume;
   
ONGC_day_data = load '/Day_Dataset/ONGC_day_data.csv ' USING org.apache.pig.piggybank.storage.CSVExcelStorage(',', 'YES_MULTILINE', 'UNIX', 'SKIP_INPUT_HEADER') as (ID:chararray, date:Datetime, close:double, high:double, low:double, open:double, volume:int);
ONGC_day_data_append = FOREACH ONGC_day_data GENERATE CONCAT ('ONGC_day_data_',ID) as (ID:chararray),date,close,high,low,open,volume;

PEL_day_data = load '/Day_Dataset/PEL_day_data.csv ' USING org.apache.pig.piggybank.storage.CSVExcelStorage(',', 'YES_MULTILINE', 'UNIX', 'SKIP_INPUT_HEADER') as (ID:chararray, date:Datetime, close:double, high:double, low:double, open:double, volume:int);
PEL_day_data_append = FOREACH PEL_day_data GENERATE CONCAT ('PEL_day_data_',ID) as (ID:chararray),date,close,high,low,open,volume;

PGHH_day_data = load '/Day_Dataset/PGHH_day_data.csv ' USING org.apache.pig.piggybank.storage.CSVExcelStorage(',', 'YES_MULTILINE', 'UNIX', 'SKIP_INPUT_HEADER') as (ID:chararray, date:Datetime, close:double, high:double, low:double, open:double, volume:int);
PGHH_day_data_append = FOREACH PGHH_day_data GENERATE CONCAT ('PGHH_day_data_',ID) as (ID:chararray),date,close,high,low,open,volume;

PIDILITIND_day_data = load '/Day_Dataset/PIDILITIND_day_data.csv ' USING org.apache.pig.piggybank.storage.CSVExcelStorage(',', 'YES_MULTILINE', 'UNIX', 'SKIP_INPUT_HEADER') as (ID:chararray, date:Datetime, close:double, high:double, low:double, open:double, volume:int);
PIDILITIND_day_data_append = FOREACH PIDILITIND_day_data GENERATE CONCAT ('PIDILITIND_day_data_',ID) as (ID:chararray),date,close,high,low,open,volume;

PIIND_day_data = load '/Day_Dataset/PIIND_day_data.csv ' USING org.apache.pig.piggybank.storage.CSVExcelStorage(',', 'YES_MULTILINE', 'UNIX', 'SKIP_INPUT_HEADER') as (ID:chararray, date:Datetime, close:double, high:double, low:double, open:double, volume:int);
PIIND_day_data_append = FOREACH PIIND_day_data GENERATE CONCAT ('PIIND_day_data_',ID) as (ID:chararray),date,close,high,low,open,volume;

PNB_day_data = load '/Day_Dataset/PNB_day_data.csv ' USING org.apache.pig.piggybank.storage.CSVExcelStorage(',', 'YES_MULTILINE', 'UNIX', 'SKIP_INPUT_HEADER') as (ID:chararray, date:Datetime, close:double, high:double, low:double, open:double, volume:int);
PNB_day_data_append = FOREACH PNB_day_data GENERATE CONCAT ('PNB_day_data_',ID) as (ID:chararray),date,close,high,low,open,volume;

POWERGRID_day_data = load '/Day_Dataset/POWERGRID_day_data.csv ' USING org.apache.pig.piggybank.storage.CSVExcelStorage(',', 'YES_MULTILINE', 'UNIX', 'SKIP_INPUT_HEADER') as (ID:chararray, date:Datetime, close:double, high:double, low:double, open:double, volume:int);
POWERGRID_day_data_append = FOREACH POWERGRID_day_data GENERATE CONCAT ('POWERGRID_day_data_',ID) as (ID:chararray),date,close,high,low,open,volume;

RELIANCE_day_data = load '/Day_Dataset/RELIANCE_day_data.csv ' USING org.apache.pig.piggybank.storage.CSVExcelStorage(',', 'YES_MULTILINE', 'UNIX', 'SKIP_INPUT_HEADER') as (ID:chararray, date:Datetime, close:double, high:double, low:double, open:double, volume:int);
RELIANCE_day_data_append = FOREACH RELIANCE_day_data GENERATE CONCAT ('RELIANCE_day_data_',ID) as (ID:chararray),date,close,high,low,open,volume;

SAIL_day_data = load '/Day_Dataset/SAIL_day_data.csv ' USING org.apache.pig.piggybank.storage.CSVExcelStorage(',', 'YES_MULTILINE', 'UNIX', 'SKIP_INPUT_HEADER') as (ID:chararray, date:Datetime, close:double, high:double, low:double, open:double, volume:int);
SAIL_day_data_append = FOREACH SAIL_day_data GENERATE CONCAT ('SAIL_day_data_',ID) as (ID:chararray),date,close,high,low,open,volume;

SBICARD_day_data = load '/Day_Dataset/SBICARD_day_data.csv ' USING org.apache.pig.piggybank.storage.CSVExcelStorage(',', 'YES_MULTILINE', 'UNIX', 'SKIP_INPUT_HEADER') as (ID:chararray, date:Datetime, close:double, high:double, low:double, open:double, volume:int);
SBICARD_day_data_append = FOREACH SBICARD_day_data GENERATE CONCAT ('SBICARD_day_data_',ID) as (ID:chararray),date,close,high,low,open,volume;

SBILIFE_day_data = load '/Day_Dataset/SBILIFE_day_data.csv ' USING org.apache.pig.piggybank.storage.CSVExcelStorage(',', 'YES_MULTILINE', 'UNIX', 'SKIP_INPUT_HEADER') as (ID:chararray, date:Datetime, close:double, high:double, low:double, open:double, volume:int);
SBILIFE_day_data_append = FOREACH SBILIFE_day_data GENERATE CONCAT ('SBILIFE_day_data_',ID) as (ID:chararray),date,close,high,low,open,volume;

SBIN_day_data = load '/Day_Dataset/SBIN_day_data.csv ' USING org.apache.pig.piggybank.storage.CSVExcelStorage(',', 'YES_MULTILINE', 'UNIX', 'SKIP_INPUT_HEADER') as (ID:chararray, date:Datetime, close:double, high:double, low:double, open:double, volume:int);
SBIN_day_data_append = FOREACH SBIN_day_data GENERATE CONCAT ('SBIN_day_data_',ID) as (ID:chararray),date,close,high,low,open,volume;

SHREECEM_day_data = load '/Day_Dataset/SHREECEM_day_data.csv ' USING org.apache.pig.piggybank.storage.CSVExcelStorage(',', 'YES_MULTILINE', 'UNIX', 'SKIP_INPUT_HEADER') as (ID:chararray, date:Datetime, close:double, high:double, low:double, open:double, volume:int);
SHREECEM_day_data_append = FOREACH SHREECEM_day_data GENERATE CONCAT ('SHREECEM_day_data_',ID) as (ID:chararray),date,close,high,low,open,volume;

SIEMENS_day_data = load '/Day_Dataset/SIEMENS_day_data.csv ' USING org.apache.pig.piggybank.storage.CSVExcelStorage(',', 'YES_MULTILINE', 'UNIX', 'SKIP_INPUT_HEADER') as (ID:chararray, date:Datetime, close:double, high:double, low:double, open:double, volume:int);
SIEMENS_day_data_append = FOREACH SIEMENS_day_data GENERATE CONCAT ('SIEMENS_day_data_',ID) as (ID:chararray),date,close,high,low,open,volume;

SUNPHARMA_day_data = load '/Day_Dataset/SUNPHARMA_day_data.csv ' USING org.apache.pig.piggybank.storage.CSVExcelStorage(',', 'YES_MULTILINE', 'UNIX', 'SKIP_INPUT_HEADER') as (ID:chararray, date:Datetime, close:double, high:double, low:double, open:double, volume:int);
SUNPHARMA_day_data_append = FOREACH SUNPHARMA_day_data GENERATE CONCAT ('SUNPHARMA_day_data_',ID) as (ID:chararray),date,close,high,low,open,volume;

TATACONSUM_day_data = load '/Day_Dataset/TATACONSUM_day_data.csv ' USING org.apache.pig.piggybank.storage.CSVExcelStorage(',', 'YES_MULTILINE', 'UNIX', 'SKIP_INPUT_HEADER') as (ID:chararray, date:Datetime, close:double, high:double, low:double, open:double, volume:int);
TATACONSUM_day_data_append = FOREACH TATACONSUM_day_data GENERATE CONCAT ('TATACONSUM_day_data_',ID) as (ID:chararray),date,close,high,low,open,volume;

TATAMOTORS_day_data = load '/Day_Dataset/TATAMOTORS_day_data.csv ' USING org.apache.pig.piggybank.storage.CSVExcelStorage(',', 'YES_MULTILINE', 'UNIX', 'SKIP_INPUT_HEADER') as (ID:chararray, date:Datetime, close:double, high:double, low:double, open:double, volume:int);
TATAMOTORS_day_data_append = FOREACH TATAMOTORS_day_data GENERATE CONCAT ('TATAMOTORS_day_data_',ID) as (ID:chararray),date,close,high,low,open,volume;

TATASTEEL_day_data = load '/Day_Dataset/TATASTEEL_day_data.csv ' USING org.apache.pig.piggybank.storage.CSVExcelStorage(',', 'YES_MULTILINE', 'UNIX', 'SKIP_INPUT_HEADER') as (ID:chararray, date:Datetime, close:double, high:double, low:double, open:double, volume:int);
TATASTEEL_day_data_append = FOREACH TATASTEEL_day_data GENERATE CONCAT ('TATASTEEL_day_data_',ID) as (ID:chararray),date,close,high,low,open,volume;

TCS_day_data = load '/Day_Dataset/TCS_day_data.csv ' USING org.apache.pig.piggybank.storage.CSVExcelStorage(',', 'YES_MULTILINE', 'UNIX', 'SKIP_INPUT_HEADER') as (ID:chararray, date:Datetime, close:double, high:double, low:double, open:double, volume:int);
TCS_day_data_append = FOREACH TCS_day_data GENERATE CONCAT ('TCS_day_data_',ID) as (ID:chararray),date,close,high,low,open,volume;

TECHM_day_data = load '/Day_Dataset/TECHM_day_data.csv ' USING org.apache.pig.piggybank.storage.CSVExcelStorage(',', 'YES_MULTILINE', 'UNIX', 'SKIP_INPUT_HEADER') as (ID:chararray, date:Datetime, close:double, high:double, low:double, open:double, volume:int);
TECHM_day_data_append = FOREACH TECHM_day_data GENERATE CONCAT ('TECHM_day_data_',ID) as (ID:chararray),date,close,high,low,open,volume;

TITAN_day_data = load '/Day_Dataset/TITAN_day_data.csv ' USING org.apache.pig.piggybank.storage.CSVExcelStorage(',', 'YES_MULTILINE', 'UNIX', 'SKIP_INPUT_HEADER') as (ID:chararray, date:Datetime, close:double, high:double, low:double, open:double, volume:int);
TITAN_day_data_append = FOREACH TITAN_day_data GENERATE CONCAT ('TITAN_day_data_',ID) as (ID:chararray),date,close,high,low,open,volume;

TORNTPHARM_day_data = load '/Day_Dataset/TORNTPHARM_day_data.csv ' USING org.apache.pig.piggybank.storage.CSVExcelStorage(',', 'YES_MULTILINE', 'UNIX', 'SKIP_INPUT_HEADER') as (ID:chararray, date:Datetime, close:double, high:double, low:double, open:double, volume:int);
TORNTPHARM_day_data_append = FOREACH TORNTPHARM_day_data GENERATE CONCAT ('TORNTPHARM_day_data_',ID) as (ID:chararray),date,close,high,low,open,volume;

ULTRACEMCO_day_data = load '/Day_Dataset/ULTRACEMCO_day_data.csv ' USING org.apache.pig.piggybank.storage.CSVExcelStorage(',', 'YES_MULTILINE', 'UNIX', 'SKIP_INPUT_HEADER') as (ID:chararray, date:Datetime, close:double, high:double, low:double, open:double, volume:int);
ULTRACEMCO_day_data_append = FOREACH ULTRACEMCO_day_data GENERATE CONCAT ('ULTRACEMCO_day_data_',ID) as (ID:chararray),date,close,high,low,open,volume;

UPL_day_data = load '/Day_Dataset/UPL_day_data.csv ' USING org.apache.pig.piggybank.storage.CSVExcelStorage(',', 'YES_MULTILINE', 'UNIX', 'SKIP_INPUT_HEADER') as (ID:chararray, date:Datetime, close:double, high:double, low:double, open:double, volume:int);
UPL_day_data_append = FOREACH UPL_day_data GENERATE CONCAT ('UPL_day_data_',ID) as (ID:chararray),date,close,high,low,open,volume;

VEDL_day_data = load '/Day_Dataset/VEDL_day_data.csv ' USING org.apache.pig.piggybank.storage.CSVExcelStorage(',', 'YES_MULTILINE', 'UNIX', 'SKIP_INPUT_HEADER') as (ID:chararray, date:Datetime, close:double, high:double, low:double, open:double, volume:int);
VEDL_day_data_append = FOREACH VEDL_day_data GENERATE CONCAT ('VEDL_day_data_',ID) as (ID:chararray),date,close,high,low,open,volume;

WIPRO_day_data = load '/Day_Dataset/WIPRO_day_data.csv ' USING org.apache.pig.piggybank.storage.CSVExcelStorage(',', 'YES_MULTILINE', 'UNIX', 'SKIP_INPUT_HEADER') as (ID:chararray, date:Datetime, close:double, high:double, low:double, open:double, volume:int);
WIPRO_day_data_append = FOREACH WIPRO_day_data GENERATE CONCAT ('WIPRO_day_data_',ID) as (ID:chararray),date,close,high,low,open,volume;

YESBANK_day_data = load '/Day_Dataset/YESBANK_day_data.csv ' USING org.apache.pig.piggybank.storage.CSVExcelStorage(',', 'YES_MULTILINE', 'UNIX', 'SKIP_INPUT_HEADER') as (ID:chararray, date:Datetime, close:double, high:double, low:double, open:double, volume:int);
YESBANK_day_data_append = FOREACH YESBANK_day_data GENERATE CONCAT ('YESBANK_day_data_',ID) as (ID:chararray),date,close,high,low,open,volume;



combined_day_data = UNION ADANIENT_day_data_append,ACC_day_data_append,ADANIGREEN_day_data_append,ADANIPORTS_day_data_append,
AMBUJACEM_day_data_append,APOLLOHOSP_day_data_append,ASIANPAINT_day_data_append,AUROPHARMA_day_data_append,AXISBANK_day_data_append,
BAJAJAUTO_day_data_append,BAJAJFINSV_day_data_append,BAJAJHLDNG_day_data_append,BAJFINANCE_day_data_append,BANDHANBNK_day_data_append,
BANKBARODA_day_data_append,BERGEPAINT_day_data_append,BHARTIARTL_day_data_append,BIOCON_day_data_append,BOSCHLTD_day_data_append,BPCL_day_data_append,
BRITANNIA_day_data_append,CHOLAFIN_day_data_append,CIPLA_day_data_append,COALINDIA_day_data_append,COLPAL_day_data_append,DABUR_day_data_append,
DIVISLAB_day_data_append,DLF_day_data_append,DMART_day_data_append,DRREDDY_day_data_append,EICHERMOT_day_data_append,GAIL_day_data_append,
GLAND_day_data_append,GODREJCP_day_data_append,GRASIM_day_data_append,HAVELLS_day_data_append,HCLTECH_day_data_append,HDFCAMC_day_data_append,
HDFCBANK_day_data_append,HDFCLIFE_day_data_append,HDFC_day_data_append,HEROMOTOCO_day_data_append,HINDALCO_day_data_append,HINDPETRO_day_data_append,
HINDUNILVR_day_data_append,ICICIBANK_day_data_append,ICICIGI_day_data_append,ICICIPRULI_day_data_append,IGL_day_data_append,INDIGO_day_data_append,
INDUSINDBK_day_data_append,INDUSTOWER_day_data_append,INFY_day_data_append,IOC_day_data_append,ITC_day_data_append,JINDALSTEL_day_data_append,
JSWSTEEL_day_data_append,JUBLFOOD_day_data_append,KOTAKBANK_day_data_append,LICI_day_data_append,LTI_day_data_append,LT_day_data_append,
LUPIN_day_data_append,MARICO_day_data_append,MARUTI_day_data_append,MCDOWELLN_day_data_append,MM_day_data_append,MUTHOOTFIN_day_data_append,
NAUKRI_day_data_append,NESTLEIND_day_data_append,NIFTY_50_day_data_append,NIFTY_BANK_day_data_append,NMDC_day_data_append,NTPC_day_data_append,
ONGC_day_data_append,PEL_day_data_append,PGHH_day_data_append,PIDILITIND_day_data_append,PIIND_day_data_append,PNB_day_data_append,
POWERGRID_day_data_append,RELIANCE_day_data_append,SAIL_day_data_append,SBICARD_day_data_append,SBILIFE_day_data_append,SBIN_day_data_append,
SHREECEM_day_data_append,SIEMENS_day_data_append,SUNPHARMA_day_data_append,TATACONSUM_day_data_append,TATAMOTORS_day_data_append,
TATASTEEL_day_data_append,TCS_day_data_append,TECHM_day_data_append,TITAN_day_data_append,TORNTPHARM_day_data_append,ULTRACEMCO_day_data_append,
UPL_day_data_append,VEDL_day_data_append,WIPRO_day_data_append,YESBANK_day_data_append;

store combined_day_data into 'hdfs://cluster-group17-m/Pigresult1' using PigStorage(',');