view: debug_test_2 {

  derived_table: {
    sql: SELECT '14dd' as id, 12345678901234 as v UNION ALL
      SELECT '13dd' as id, 12345678901234 as v ;;
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
    sql: ${val} ;;
    ##sql_distinct_key: ${debug_test_1.id} ;;
  }

  measure: val_sum_1 {
    type: number
    sql: SUM (${val}) ;;
    ##sql_distinct_key: ${debug_test_1.id} ;;
  }

}
