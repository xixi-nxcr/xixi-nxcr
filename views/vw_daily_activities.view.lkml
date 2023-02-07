view: vw_daily_activities {
  sql_table_name: "CORE_DM"."VW_DAILY_ACTIVITIES"
    ;;

  dimension: accounts_created {
    type: number
    sql: ${TABLE}."ACCOUNTS_CREATED" ;;
  }

  dimension: activations {
    type: number
    sql: ${TABLE}."ACTIVATIONS" ;;
  }

  dimension: apps_installed {
    type: number
    sql: ${TABLE}."APPS_INSTALLED" ;;
  }

  dimension: customres_created {
    type: number
    sql: ${TABLE}."CUSTOMRES_CREATED" ;;
  }

  dimension: paid_reservations {
    type: number
    sql: ${TABLE}."PAID_RESERVATIONS" ;;
  }

  dimension: pending_reservations {
    type: number
    sql: ${TABLE}."PENDING_RESERVATIONS" ;;
  }

  dimension: qualified_reservations {
    type: number
    sql: ${TABLE}."QUALIFIED_RESERVATIONS" ;;
  }

  dimension_group: report {
    type: time
    timeframes: [
      raw,
      date,
      week,
      month,
      quarter,
      year
    ]
    convert_tz: no
    datatype: date
    sql: ${TABLE}."REPORT_DATE" ;;
  }

  dimension: web_visitors {
    type: number
    sql: ${TABLE}."WEB_VISITORS" ;;
  }

  measure: count {
    type: count
    drill_fields: []
  }
}
