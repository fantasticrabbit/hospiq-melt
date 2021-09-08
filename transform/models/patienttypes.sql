{{ config(materialized='table') }}
select patienttype,count(*) as count 
    from `noble-return-324620.hospiq.visits` 
    group by patienttype 
    order by count desc
