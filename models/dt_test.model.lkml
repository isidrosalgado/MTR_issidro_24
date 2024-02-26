include: "/views/*.view.lkml"                # include all views in the views/ folder in this project
connection: "thelook"

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
