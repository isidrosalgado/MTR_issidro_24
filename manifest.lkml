project_name: "mtr_isidro_24"

constant: negative_format {
  value: "{% if value < 0 %}<p style='color:blue;'>({{rendered_value}})</p>{% else %} {{rendered_value}} {% endif %}"
}
