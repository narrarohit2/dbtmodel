{{ config(materialized='table') }}

with source_data as (

   select DATE,max(TOTAL_ACTIVE_CASES) as max_cases_per_day from MAIN_TABLE group by DATE

)

select * from source_data