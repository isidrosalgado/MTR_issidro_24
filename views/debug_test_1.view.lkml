view: debug_test_1 {

  derived_table: {
    sql: SELECT '14dd' as id UNION ALL
      SELECT '13dd' as id  ;;
  }

  dimension: id {
    sql: ${TABLE}.id ;;
    primary_key: yes
  }

}
