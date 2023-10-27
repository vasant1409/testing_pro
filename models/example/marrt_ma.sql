WITH
   {{config(materialized='table')}}

MART as (
SELECT * FROM {{ref('annual_enterprise_survey01')}} 
UNION ALL
SELECT * FROM {{ref('annual_enterprise_survey02')}} 
) 

SELECT * FROM MART
