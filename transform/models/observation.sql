{{ config(materialized='table') }}

select v.visitkey,v.patientkey,s.urgency,s.procedurename,s.surgeon,arrival,wheelsin,wheelsout,departure
    from `noble-return-324620.hospiq.visits` as v 
    join `noble-return-324620.hospiq.surgeries` as s
    on v.visitkey=s.visitkey 
    where patienttype='OBSERVATION'