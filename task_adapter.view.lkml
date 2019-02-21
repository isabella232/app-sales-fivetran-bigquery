view: task_adapter {
  extends: [task_schema]
  extension: required

  dimension: id {
    primary_key: yes
    type: string
    sql: ${TABLE}.id ;;
  }

  dimension_group: _fivetran_synced {
    type: time
    timeframes: [
      raw,
      time,
      date,
      week,
      month,
      quarter,
      year
    ]
    sql: ${TABLE}._fivetran_synced ;;
  }

  dimension: account_id {
    type: string
    # hidden: yes
    sql: ${TABLE}.account_id ;;
  }

  dimension_group: activity {
    type: time
    timeframes: [
      raw,
      time,
      date,
      week,
      month,
      quarter,
      year
    ]
    sql: ${TABLE}.activity_date ;;
  }

  dimension: call_disposition {
    type: string
    sql: ${TABLE}.call_disposition ;;
  }

  dimension: call_duration_in_seconds {
    type: number
    sql: ${TABLE}.call_duration_in_seconds ;;
  }

  dimension: call_object {
    type: string
    sql: ${TABLE}.call_object ;;
  }

  dimension: call_type {
    type: string
    sql: ${TABLE}.call_type ;;
  }

  dimension: created_by_id {
    type: string
    sql: ${TABLE}.created_by_id ;;
  }

  dimension_group: created {
    type: time
    timeframes: [
      raw,
      time,
      date,
      week,
      month,
      quarter,
      year
    ]
    sql: ${TABLE}.created_date ;;
  }

  dimension: currency_iso_code {
    type: string
    sql: ${TABLE}.currency_iso_code ;;
  }

  dimension: description {
    type: string
    sql: ${TABLE}.description ;;
  }

  dimension: is_closed {
    type: yesno
    sql: ${TABLE}.is_closed ;;
  }

  dimension: is_deleted {
    type: yesno
    sql: ${TABLE}.is_deleted ;;
  }

  dimension: is_high_priority {
    type: yesno
    sql: ${TABLE}.is_high_priority ;;
  }

  dimension: is_recurrence {
    type: yesno
    sql: ${TABLE}.is_recurrence ;;
  }

  dimension: is_reminder_set {
    type: yesno
    sql: ${TABLE}.is_reminder_set ;;
  }

  dimension: last_modified_by_id {
    type: string
    sql: ${TABLE}.last_modified_by_id ;;
  }

  dimension_group: last_modified {
    type: time
    timeframes: [
      raw,
      time,
      date,
      week,
      month,
      quarter,
      year
    ]
    sql: ${TABLE}.last_modified_date ;;
  }

  dimension: priority {
    type: string
    sql: ${TABLE}.priority ;;
  }

  dimension: record_type_id {
    type: string
    sql: ${TABLE}.record_type_id ;;
  }

  dimension: recurrence_activity_id {
    type: string
    sql: ${TABLE}.recurrence_activity_id ;;
  }

  dimension: recurrence_day_of_month {
    type: number
    sql: ${TABLE}.recurrence_day_of_month ;;
  }

  dimension: recurrence_day_of_week_mask {
    type: number
    sql: ${TABLE}.recurrence_day_of_week_mask ;;
  }

  dimension_group: recurrence_end_date_only {
    type: time
    timeframes: [
      raw,
      time,
      date,
      week,
      month,
      quarter,
      year
    ]
    sql: ${TABLE}.recurrence_end_date_only ;;
  }

  dimension: recurrence_instance {
    type: string
    sql: ${TABLE}.recurrence_instance ;;
  }

  dimension: recurrence_interval {
    type: number
    sql: ${TABLE}.recurrence_interval ;;
  }

  dimension: recurrence_month_of_year {
    type: string
    sql: ${TABLE}.recurrence_month_of_year ;;
  }

  dimension: recurrence_regenerated_type {
    type: string
    sql: ${TABLE}.recurrence_regenerated_type ;;
  }

  dimension_group: recurrence_start_date_only {
    type: time
    timeframes: [
      raw,
      time,
      date,
      week,
      month,
      quarter,
      year
    ]
    sql: ${TABLE}.recurrence_start_date_only ;;
  }

  dimension: recurrence_time_zone_sid_key {
    type: string
    sql: ${TABLE}.recurrence_time_zone_sid_key ;;
  }

  dimension: recurrence_type {
    type: string
    sql: ${TABLE}.recurrence_type ;;
  }

  dimension_group: reminder_date {
    type: time
    timeframes: [
      raw,
      time,
      date,
      week,
      month,
      quarter,
      year
    ]
    sql: ${TABLE}.reminder_date_time ;;
  }

  dimension: status {
    type: string
    sql: ${TABLE}.status ;;
  }

  dimension: subject {
    type: string
    sql: ${TABLE}.subject ;;
  }

  dimension_group: system_modstamp {
    type: time
    timeframes: [
      raw,
      time,
      date,
      week,
      month,
      quarter,
      year
    ]
    sql: ${TABLE}.system_modstamp ;;
  }

  dimension: task_subtype {
    type: string
    sql: ${TABLE}.task_subtype ;;
  }

  dimension: type {
    type: string
    sql: ${TABLE}.type ;;
  }

  dimension: what_id {
    type: string
    sql: ${TABLE}.what_id ;;
  }

  dimension: who_id {
    type: string
    sql: ${TABLE}.who_id ;;
  }

  measure: count {
    type: count
    drill_fields: [id, account.id, account.name]
  }
}
