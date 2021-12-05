{{ config(materialized='table') }}

with source_data as (

    select * from FIVETRAN_INTERVIEW_DB.GOOGLE_SHEETS.COVID_19_INDONESIA_ROHIT_NARRA

)

select * from source_data
