{{ config(materialized='table') }}

with source_data as (

   select DATE,LOCATION from MSIN_TABLE where TOTAL_DEATHS>50

)

select * from source_data