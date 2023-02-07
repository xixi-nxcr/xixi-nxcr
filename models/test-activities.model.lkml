connection: "dna_nxcr"

# include all the views
include: "/views/**/*.view"

datagroup: test-activities_default_datagroup {
  # sql_trigger: SELECT MAX(id) FROM etl_log;;
  max_cache_age: "1 hour"
}

persist_with: test-activities_default_datagroup

explore: vw_daily_activities {}
