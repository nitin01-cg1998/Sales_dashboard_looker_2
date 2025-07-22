- dashboard: dashboard_1
  title: dashboard_1
  layout: newspaper
  preferred_viewer: dashboards-next
  description: ''
  preferred_slug: OT7qLvwmTiYLh7FfaYKZL6
  elements:
  - title: Average sales by category
    name: Average sales by category
    model: Sales_dashboard_looker_2
    explore: orders_super
    type: looker_column
    fields: [sales_super.Category, avg_of_Sales]
    pivots: []
    fill_fields: null
    sorts: [avg_of_Sales desc 0]
    limit: 500
    column_limit: 50
    show_view_names: false
    show_row_numbers: false
    transpose: false
    truncate_text: true
    hide_totals: false
    hide_row_totals: false
    size_to_fit: true
    table_theme: editable
    limit_displayed_rows: false
    enable_conditional_formatting: false
    header_text_alignment: left
    header_font_size: '12'
    rows_font_size: '12'
    conditional_formatting_include_totals: false
    conditional_formatting_include_nulls: false
    show_sql_query_menu_options: false
    show_totals: true
    show_row_totals: true
    truncate_header: false
    minimum_column_width: 75
    truncate_column_names: false
    defaults_version: 1
    hidden_pivots: {}
    listen: {}
    row: 5
    col: 12
    width: 12
    height: 7
    dynamic_fields:
    - category: measure
      label: avg_of_Sales
      type: avg
      _kind_hint: measure
      based_on: sales_super.Sales
      _type_hint: number
      measure: avg_of_Sales
  - title: 'Total sales by ship date '
    name: 'Total sales by ship date '
    model: Sales_dashboard_looker_2
    explore: orders_super
    type: looker_line
    fields: [sum_of_Sales, day-trunc_of_Ship_Date]
    pivots: []
    fill_fields: null
    sorts: [sum_of_Sales desc 0]
    limit: 500
    column_limit: 50
    show_view_names: false
    show_row_numbers: false
    transpose: false
    truncate_text: true
    hide_totals: false
    hide_row_totals: false
    size_to_fit: true
    table_theme: editable
    limit_displayed_rows: false
    enable_conditional_formatting: false
    header_text_alignment: left
    header_font_size: '12'
    rows_font_size: '12'
    conditional_formatting_include_totals: false
    conditional_formatting_include_nulls: false
    show_sql_query_menu_options: false
    show_totals: true
    show_row_totals: true
    truncate_header: false
    minimum_column_width: 75
    truncate_column_names: false
    defaults_version: 1
    hidden_pivots: {}
    listen: {}
    row: 5
    col: 12
    width: 12
    height: 7
    dynamic_fields:
    - category: measure
      label: sum_of_Sales
      type: sum
      _kind_hint: measure
      based_on: sales_super.Sales
      _type_hint: number
      measure: sum_of_Sales
    - category: dimension
      label: day-trunc_of_Ship_Date
      type: day-trunc
      _kind_hint: dimension
      based_on: orders_super.Ship_Date
      _type_hint: number
      dimension: day-trunc_of_Ship_Date
      expression: extract_days(${orders_super.Ship_Date})
  - title: sales over time
    name: sales over time
    model: Sales_dashboard_looker_2
    explore: orders_super
    type: looker_column
    fields: [day-trunc_of_Order_Date, sum_of_Sales]
    pivots: []
    fill_fields: null
    sorts: [sum_of_Sales desc 0]
    limit: 500
    column_limit: 50
    show_view_names: false
    show_row_numbers: false
    transpose: false
    truncate_text: true
    hide_totals: false
    hide_row_totals: false
    size_to_fit: true
    table_theme: editable
    limit_displayed_rows: false
    enable_conditional_formatting: false
    header_text_alignment: left
    header_font_size: '12'
    rows_font_size: '12'
    conditional_formatting_include_totals: false
    conditional_formatting_include_nulls: false
    show_sql_query_menu_options: false
    show_totals: true
    show_row_totals: true
    truncate_header: false
    minimum_column_width: 75
    truncate_column_names: false
    defaults_version: 1
    hidden_pivots: {}
    listen: {}
    row: 5
    col: 12
    width: 12
    height: 7
    dynamic_fields:
    - category: dimension
      label: day-trunc_of_Order_Date
      type: day-trunc
      _kind_hint: dimension
      based_on: orders_super.Order_Date
      _type_hint: number
      dimension: day-trunc_of_Order_Date
      expression: extract_days(${orders_super.Order_Date})
    - category: measure
      label: sum_of_Sales
      type: sum
      _kind_hint: measure
      based_on: sales_super.Sales
      _type_hint: number
      measure: sum_of_Sales
  - title: total sales by sub category
    name: total sales by sub category
    model: Sales_dashboard_looker_2
    explore: orders_super
    type: looker_grid
    fields: [sum_of_Sales, sales_super.Sub_Category]
    pivots: []
    fill_fields: null
    sorts: [sum_of_Sales desc 0]
    limit: 500
    column_limit: 50
    show_view_names: false
    show_row_numbers: false
    transpose: false
    truncate_text: true
    hide_totals: false
    hide_row_totals: false
    size_to_fit: true
    table_theme: editable
    limit_displayed_rows: false
    enable_conditional_formatting: false
    header_text_alignment: left
    header_font_size: '12'
    rows_font_size: '12'
    conditional_formatting_include_totals: false
    conditional_formatting_include_nulls: false
    show_sql_query_menu_options: false
    show_totals: true
    show_row_totals: true
    truncate_header: false
    minimum_column_width: 75
    truncate_column_names: false
    defaults_version: 1
    hidden_pivots: {}
    listen: {}
    row: 5
    col: 12
    width: 12
    height: 7
    dynamic_fields:
    - category: measure
      label: sum_of_Sales
      type: sum
      _kind_hint: measure
      based_on: sales_super.Sales
      _type_hint: number
      measure: sum_of_Sales
