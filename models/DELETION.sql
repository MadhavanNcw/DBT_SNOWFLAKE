{{
    config(
         description = 'Building table sample table for testing'
        ,transient=false
        ,materialized='view'
        ,schema ='SALES'
        ,alias='deletion'
		,unique_key= 'ID'
        )
}}


SELECT
ID
,NAME
FROM
{{ref('TEST')}}