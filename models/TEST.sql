{{
    config(
         description = 'Building table sample table for testing'
        ,transient=false
        ,materialized='table'
        ,schema ='SALES'
        ,alias='dummy_1'
		,unique_key= 'ID'
        )
}}


SELECT
ID
,NAME
FROM
{{source('SALES','TEST_1')}}
WHERE ID='3'