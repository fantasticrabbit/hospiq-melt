{{ config(materialized='table') }}

select patientkey, count(distinct(surgerykey)) as surgcount 
    from `noble-return-324620.hospiq.surgeries` 
    group by visitkey,patientkey 
    having count(distinct(surgerykey))>1 
    order by surgcount desc;