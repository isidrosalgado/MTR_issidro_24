view: debug_test_2 {
  derived_table: {
    sql: SELECT '14d' as id, 12345678901234 as v UNION ALL
      SELECT '13d' as id, 1234567890123 as v ;;
  }

  dimension: id {
    sql:  ${TABLE}.id ;;
    primary_key: yes
  }

  dimension: val {
    sql: ${TABLE}.v ;;
    type: number
  }

  measure: val_sum {
    type: sum
    sql:  ${val} ;;
  }
}
