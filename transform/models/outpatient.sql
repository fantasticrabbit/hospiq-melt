{{ config(materialized='table') }}

select v.visitkey,v.patientkey,s.urgency,s.procedurename,s.surgeon,arrival,wheelsin,wheelsout,departure
        from `{{ env_var('TARGET_BIGQUERY_PROJECT_ID') }}.hospiq.visits` as v 
        join `{{ env_var('TARGET_BIGQUERY_PROJECT_ID') }}.hospiq.surgeries` as s
    on v.visitkey=s.visitkey 
    where patienttype='OUTPATIENT'