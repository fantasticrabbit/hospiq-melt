{{ config(materialized='table') }}
select count(*) as count 
    from `noble-return-324620.hospiq.visits` as v
    left join `noble-return-324620.hospiq.surgeries` as s
    on v.visitkey=s.visitkey 
    where surgerykey is null