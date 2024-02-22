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

explore:  debug_test_1 {

  join: debug_test_2a {
    from:  debug_test_2
    view_label:  "Many to One"
    sql_on: ${debug_test_1.id} = ${debug_test_2a.id} ;;
    relationship: many_to_one
  }

  join: debug_test_2b {
    from:  debug_test_2
    view_label:  "One to Many"
    sql_on: ${debug_test_1.id} = ${debug_test_2b.id} ;;
    relationship: one_to_many
  }

  join: debug_test_2c {
    from:  debug_test_2
    view_label:  "Many to Many"
    sql_on: ${debug_test_1.id} = ${debug_test_2c.id} ;;
    relationship: many_to_many
  }


 }
