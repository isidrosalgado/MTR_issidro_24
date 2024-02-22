view: debug_test_1 {
  derived_table: {
    sql: SELECT '14d' as id UNION ALL
      SELECT '13d' as id  ;;
  }

  dimension: id {
    sql: ${TABLE}.id ;;
    primary_key: yes
  }
}
