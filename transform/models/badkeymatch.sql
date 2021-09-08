{{ config(materialized='table') }}
select v.patientkey,s.patientkey as surgpatkey,v.visitkey 
    from `noble-return-324620.hospiq.visits` as v 
    join `noble-return-324620.hospiq.surgeries` as s
    on v.visitkey=s.visitkey 
    where v.patientkey!=s.patientkey