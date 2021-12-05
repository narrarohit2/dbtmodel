{{ config(materialized='table') }}

with source_data as (

   select DATE,LOCATION from MAIN_TABLE where TOTAL_DEATHS>50 order by date desc

)

select * from source_data