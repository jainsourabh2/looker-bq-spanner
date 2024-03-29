- dashboard: spanner_analysis
  title: Spanner Analysis
  layout: newspaper
  preferred_viewer: dashboards
  refresh: 2 minutes
  elements:
  - title: Total Query Execution vs Failed Execution
    name: Total Query Execution vs Failed Execution
    model: spanner_monitoring
    explore: QueryStats_Minute_Interval
    type: looker_column
    fields: [QueryStats_Minute_Interval.interval_end_hour, QueryStats_Minute_Interval.count,
      QueryStats_Minute_Interval.failed_execution_count]
    fill_fields: [QueryStats_Minute_Interval.interval_end_hour]
    sorts: [QueryStats_Minute_Interval.interval_end_hour desc]
    limit: 500
    x_axis_gridlines: true
    y_axis_gridlines: true
    show_view_names: false
    show_y_axis_labels: true
    show_y_axis_ticks: true
    y_axis_tick_density: default
    y_axis_tick_density_custom: 5
    show_x_axis_label: true
    show_x_axis_ticks: true
    y_axis_scale_mode: linear
    x_axis_reversed: false
    y_axis_reversed: false
    plot_size_by_field: false
    trellis: ''
    stacking: normal
    limit_displayed_rows: false
    legend_position: center
    point_style: circle
    show_value_labels: true
    label_density: 25
    x_axis_scale: ordinal
    y_axis_combined: true
    ordering: none
    show_null_labels: true
    show_totals_labels: false
    show_silhouette: true
    totals_color: "#808080"
    color_application:
      collection_id: 1bc1f1d8-7461-4bfd-8c3b-424b924287b5
      palette_id: dd87bc4e-d86f-47b1-b0fd-44110dc0b469
      options:
        steps: 5
    x_axis_label: ''
    limit_displayed_rows_values:
      show_hide: hide
      first_last: first
      num_rows: 0
    hide_legend: false
    series_types:
      QueryStats_Minute_Interval.count: line
      QueryStats_Minute_Interval.failed_execution_count: scatter
    series_colors:
      QueryStats_Minute_Interval.failed_execution_count: "#d60d12"
      QueryStats_Minute_Interval.count: "#05f20b"
    series_point_styles:
      QueryStats_Minute_Interval.count: triangle
      QueryStats_Minute_Interval.failed_execution_count: triangle-down
    trend_lines: []
    column_group_spacing_ratio: 0
    defaults_version: 1
    listen:
      Interval End Time: QueryStats_Minute_Interval.interval_end_time
    row: 6
    col: 12
    width: 12
    height: 6
  - title: Top 10 Failed Queries
    name: Top 10 Failed Queries
    model: spanner_monitoring
    explore: QueryStats_Minute_Interval
    type: looker_grid
    fields: [QueryStats_Minute_Interval.text, QueryStats_Minute_Interval.failed_execution_count]
    filters:
      QueryStats_Minute_Interval.failed_execution_count: ">0"
    sorts: [QueryStats_Minute_Interval.failed_execution_count desc]
    limit: 10
    show_view_names: false
    show_row_numbers: true
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
    series_labels:
      QueryStats_Minute_Interval.failed_execution_count: Failed Counts
      QueryStats_Minute_Interval.text: Query
    series_column_widths:
      QueryStats_Minute_Interval.text: 873
    series_cell_visualizations:
      QueryStats_Minute_Interval.failed_execution_count:
        is_active: false
    x_axis_gridlines: false
    y_axis_gridlines: true
    show_y_axis_labels: true
    show_y_axis_ticks: true
    y_axis_tick_density: default
    y_axis_tick_density_custom: 5
    show_x_axis_label: true
    show_x_axis_ticks: true
    y_axis_scale_mode: linear
    x_axis_reversed: false
    y_axis_reversed: false
    plot_size_by_field: false
    trellis: ''
    stacking: ''
    legend_position: center
    point_style: none
    show_value_labels: false
    label_density: 25
    x_axis_scale: auto
    y_axis_combined: true
    ordering: none
    show_null_labels: false
    show_totals_labels: false
    show_silhouette: false
    totals_color: "#808080"
    defaults_version: 1
    series_types: {}
    listen:
      Interval End Time: QueryStats_Minute_Interval.interval_end_time
    row: 18
    col: 0
    width: 24
    height: 6
  - title: Top 10 Slow Queries
    name: Top 10 Slow Queries
    model: spanner_monitoring
    explore: QueryStats_Minute_Interval
    type: looker_grid
    fields: [QueryStats_Minute_Interval.text, QueryStats_Minute_Interval.avg_latency_seconds]
    sorts: [QueryStats_Minute_Interval.avg_latency_seconds desc]
    limit: 10
    show_view_names: false
    show_row_numbers: true
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
    series_labels:
      QueryStats_Minute_Interval.failed_execution_count: Failed Counts
      QueryStats_Minute_Interval.text: Query
    series_column_widths:
      QueryStats_Minute_Interval.text: 873
    series_cell_visualizations:
      QueryStats_Minute_Interval.failed_execution_count:
        is_active: false
    x_axis_gridlines: false
    y_axis_gridlines: true
    show_y_axis_labels: true
    show_y_axis_ticks: true
    y_axis_tick_density: default
    y_axis_tick_density_custom: 5
    show_x_axis_label: true
    show_x_axis_ticks: true
    y_axis_scale_mode: linear
    x_axis_reversed: false
    y_axis_reversed: false
    plot_size_by_field: false
    trellis: ''
    stacking: ''
    legend_position: center
    point_style: none
    show_value_labels: false
    label_density: 25
    x_axis_scale: auto
    y_axis_combined: true
    ordering: none
    show_null_labels: false
    show_totals_labels: false
    show_silhouette: false
    totals_color: "#808080"
    defaults_version: 1
    series_types: {}
    listen:
      Interval End Time: QueryStats_Minute_Interval.interval_end_time
    row: 24
    col: 0
    width: 24
    height: 6
  - title: Top CPU Consuming Queries
    name: Top CPU Consuming Queries
    model: spanner_monitoring
    explore: QueryStats_Minute_Interval
    type: looker_grid
    fields: [QueryStats_Minute_Interval.text, QueryStats_Minute_Interval.avg_cpu_seconds]
    sorts: [QueryStats_Minute_Interval.avg_cpu_seconds desc]
    limit: 10
    show_view_names: false
    show_row_numbers: true
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
    series_labels:
      QueryStats_Minute_Interval.failed_execution_count: Failed Counts
      QueryStats_Minute_Interval.text: Query
    series_column_widths:
      QueryStats_Minute_Interval.text: 873
    series_cell_visualizations:
      QueryStats_Minute_Interval.failed_execution_count:
        is_active: false
    x_axis_gridlines: false
    y_axis_gridlines: true
    show_y_axis_labels: true
    show_y_axis_ticks: true
    y_axis_tick_density: default
    y_axis_tick_density_custom: 5
    show_x_axis_label: true
    show_x_axis_ticks: true
    y_axis_scale_mode: linear
    x_axis_reversed: false
    y_axis_reversed: false
    plot_size_by_field: false
    trellis: ''
    stacking: ''
    legend_position: center
    point_style: none
    show_value_labels: false
    label_density: 25
    x_axis_scale: auto
    y_axis_combined: true
    ordering: none
    show_null_labels: false
    show_totals_labels: false
    show_silhouette: false
    totals_color: "#808080"
    defaults_version: 1
    series_types: {}
    listen:
      Interval End Time: QueryStats_Minute_Interval.interval_end_time
    row: 30
    col: 0
    width: 24
    height: 6
  - title: New Tile
    name: New Tile
    model: spanner_monitoring
    explore: QueryStats_Minute_Interval
    type: single_value
    fields: [QueryStats_Minute_Interval.avg_bytes]
    limit: 10
    custom_color_enabled: true
    show_single_value_title: true
    show_comparison: false
    comparison_type: value
    comparison_reverse_colors: false
    show_comparison_label: true
    enable_conditional_formatting: true
    conditional_formatting_include_totals: false
    conditional_formatting_include_nulls: false
    custom_color: "#000000"
    single_value_title: Average Bytes Scanned
    conditional_formatting: [{type: less than, value: 110, background_color: '', font_color: "#EA4335",
        color_application: {collection_id: 7c56cc21-66e4-41c9-81ce-a60e1c3967b2, palette_id: 56d0c358-10a0-4fd6-aa0b-b117bef527ab},
        bold: false, italic: false, strikethrough: false, fields: !!null ''}, {type: greater
          than, value: 110, background_color: '', font_color: "#7CB342", color_application: {
          collection_id: 7c56cc21-66e4-41c9-81ce-a60e1c3967b2, palette_id: 56d0c358-10a0-4fd6-aa0b-b117bef527ab},
        bold: false, italic: false, strikethrough: false, fields: !!null ''}]
    show_view_names: false
    show_row_numbers: true
    transpose: false
    truncate_text: true
    hide_totals: false
    hide_row_totals: false
    size_to_fit: true
    table_theme: editable
    limit_displayed_rows: false
    header_text_alignment: left
    header_font_size: '12'
    rows_font_size: '12'
    show_sql_query_menu_options: false
    show_totals: true
    show_row_totals: true
    series_labels:
      QueryStats_Minute_Interval.failed_execution_count: Failed Counts
      QueryStats_Minute_Interval.text: Query
    series_column_widths:
      QueryStats_Minute_Interval.text: 873
    series_cell_visualizations:
      QueryStats_Minute_Interval.failed_execution_count:
        is_active: false
    x_axis_gridlines: false
    y_axis_gridlines: true
    show_y_axis_labels: true
    show_y_axis_ticks: true
    y_axis_tick_density: default
    y_axis_tick_density_custom: 5
    show_x_axis_label: true
    show_x_axis_ticks: true
    y_axis_scale_mode: linear
    x_axis_reversed: false
    y_axis_reversed: false
    plot_size_by_field: false
    trellis: ''
    stacking: ''
    legend_position: center
    point_style: none
    show_value_labels: false
    label_density: 25
    x_axis_scale: auto
    y_axis_combined: true
    ordering: none
    show_null_labels: false
    show_totals_labels: false
    show_silhouette: false
    totals_color: "#808080"
    defaults_version: 1
    series_types: {}
    show_null_points: true
    hidden_fields: []
    hidden_points_if_no: []
    listen:
      Interval End Time: QueryStats_Minute_Interval.interval_end_time
    row: 3
    col: 12
    width: 4
    height: 3
  - title: New Tile
    name: New Tile (2)
    model: spanner_monitoring
    explore: QueryStats_Minute_Interval
    type: single_value
    fields: [QueryStats_Minute_Interval.avg_cpu_seconds]
    limit: 10
    custom_color_enabled: true
    show_single_value_title: true
    show_comparison: false
    comparison_type: value
    comparison_reverse_colors: false
    show_comparison_label: true
    enable_conditional_formatting: true
    conditional_formatting_include_totals: false
    conditional_formatting_include_nulls: false
    custom_color: "#000000"
    single_value_title: Average CPU Seconds
    conditional_formatting: [{type: less than, value: 110, background_color: '', font_color: "#EA4335",
        color_application: {collection_id: 7c56cc21-66e4-41c9-81ce-a60e1c3967b2, palette_id: 56d0c358-10a0-4fd6-aa0b-b117bef527ab},
        bold: false, italic: false, strikethrough: false, fields: !!null ''}, {type: greater
          than, value: 110, background_color: '', font_color: "#7CB342", color_application: {
          collection_id: 7c56cc21-66e4-41c9-81ce-a60e1c3967b2, palette_id: 56d0c358-10a0-4fd6-aa0b-b117bef527ab},
        bold: false, italic: false, strikethrough: false, fields: !!null ''}]
    show_view_names: false
    show_row_numbers: true
    transpose: false
    truncate_text: true
    hide_totals: false
    hide_row_totals: false
    size_to_fit: true
    table_theme: editable
    limit_displayed_rows: false
    header_text_alignment: left
    header_font_size: '12'
    rows_font_size: '12'
    show_sql_query_menu_options: false
    show_totals: true
    show_row_totals: true
    series_labels:
      QueryStats_Minute_Interval.failed_execution_count: Failed Counts
      QueryStats_Minute_Interval.text: Query
    series_column_widths:
      QueryStats_Minute_Interval.text: 873
    series_cell_visualizations:
      QueryStats_Minute_Interval.failed_execution_count:
        is_active: false
    x_axis_gridlines: false
    y_axis_gridlines: true
    show_y_axis_labels: true
    show_y_axis_ticks: true
    y_axis_tick_density: default
    y_axis_tick_density_custom: 5
    show_x_axis_label: true
    show_x_axis_ticks: true
    y_axis_scale_mode: linear
    x_axis_reversed: false
    y_axis_reversed: false
    plot_size_by_field: false
    trellis: ''
    stacking: ''
    legend_position: center
    point_style: none
    show_value_labels: false
    label_density: 25
    x_axis_scale: auto
    y_axis_combined: true
    ordering: none
    show_null_labels: false
    show_totals_labels: false
    show_silhouette: false
    totals_color: "#808080"
    defaults_version: 1
    series_types: {}
    show_null_points: true
    hidden_fields: []
    hidden_points_if_no: []
    listen:
      Interval End Time: QueryStats_Minute_Interval.interval_end_time
    row: 3
    col: 20
    width: 4
    height: 3
  - title: New Tile
    name: New Tile (3)
    model: spanner_monitoring
    explore: QueryStats_Minute_Interval
    type: single_value
    fields: [QueryStats_Minute_Interval.avg_latency_seconds]
    limit: 10
    custom_color_enabled: true
    show_single_value_title: true
    show_comparison: false
    comparison_type: value
    comparison_reverse_colors: false
    show_comparison_label: true
    enable_conditional_formatting: true
    conditional_formatting_include_totals: false
    conditional_formatting_include_nulls: false
    custom_color: "#000000"
    single_value_title: Average Latency Seconds
    conditional_formatting: [{type: less than, value: 110, background_color: '', font_color: "#EA4335",
        color_application: {collection_id: 7c56cc21-66e4-41c9-81ce-a60e1c3967b2, palette_id: 56d0c358-10a0-4fd6-aa0b-b117bef527ab},
        bold: false, italic: false, strikethrough: false, fields: !!null ''}, {type: greater
          than, value: 110, background_color: '', font_color: "#7CB342", color_application: {
          collection_id: 7c56cc21-66e4-41c9-81ce-a60e1c3967b2, palette_id: 56d0c358-10a0-4fd6-aa0b-b117bef527ab},
        bold: false, italic: false, strikethrough: false, fields: !!null ''}]
    show_view_names: false
    show_row_numbers: true
    transpose: false
    truncate_text: true
    hide_totals: false
    hide_row_totals: false
    size_to_fit: true
    table_theme: editable
    limit_displayed_rows: false
    header_text_alignment: left
    header_font_size: '12'
    rows_font_size: '12'
    show_sql_query_menu_options: false
    show_totals: true
    show_row_totals: true
    series_labels:
      QueryStats_Minute_Interval.failed_execution_count: Failed Counts
      QueryStats_Minute_Interval.text: Query
    series_column_widths:
      QueryStats_Minute_Interval.text: 873
    series_cell_visualizations:
      QueryStats_Minute_Interval.failed_execution_count:
        is_active: false
    x_axis_gridlines: false
    y_axis_gridlines: true
    show_y_axis_labels: true
    show_y_axis_ticks: true
    y_axis_tick_density: default
    y_axis_tick_density_custom: 5
    show_x_axis_label: true
    show_x_axis_ticks: true
    y_axis_scale_mode: linear
    x_axis_reversed: false
    y_axis_reversed: false
    plot_size_by_field: false
    trellis: ''
    stacking: ''
    legend_position: center
    point_style: none
    show_value_labels: false
    label_density: 25
    x_axis_scale: auto
    y_axis_combined: true
    ordering: none
    show_null_labels: false
    show_totals_labels: false
    show_silhouette: false
    totals_color: "#808080"
    defaults_version: 1
    series_types: {}
    show_null_points: true
    hidden_fields: []
    hidden_points_if_no: []
    listen:
      Interval End Time: QueryStats_Minute_Interval.interval_end_time
    row: 3
    col: 16
    width: 4
    height: 3
  - title: New Tile
    name: New Tile (4)
    model: spanner_monitoring
    explore: QueryStats_Minute_Interval
    type: single_value
    fields: [QueryStats_Minute_Interval.failed_execution_count]
    limit: 10
    custom_color_enabled: true
    show_single_value_title: true
    show_comparison: false
    comparison_type: value
    comparison_reverse_colors: false
    show_comparison_label: true
    enable_conditional_formatting: true
    conditional_formatting_include_totals: false
    conditional_formatting_include_nulls: false
    custom_color: "#000000"
    single_value_title: Failed Queries Count
    value_format: 0.00, "K"
    conditional_formatting: [{type: less than, value: 1, background_color: '', font_color: "#7CB342",
        color_application: {collection_id: 7c56cc21-66e4-41c9-81ce-a60e1c3967b2, palette_id: 56d0c358-10a0-4fd6-aa0b-b117bef527ab},
        bold: false, italic: false, strikethrough: false, fields: !!null ''}, {type: greater
          than, value: 0, background_color: '', font_color: "#EA4335", color_application: {
          collection_id: 7c56cc21-66e4-41c9-81ce-a60e1c3967b2, palette_id: 56d0c358-10a0-4fd6-aa0b-b117bef527ab},
        bold: false, italic: false, strikethrough: false, fields: !!null ''}]
    show_view_names: false
    show_row_numbers: true
    transpose: false
    truncate_text: true
    hide_totals: false
    hide_row_totals: false
    size_to_fit: true
    table_theme: editable
    limit_displayed_rows: false
    header_text_alignment: left
    header_font_size: '12'
    rows_font_size: '12'
    show_sql_query_menu_options: false
    show_totals: true
    show_row_totals: true
    series_labels:
      QueryStats_Minute_Interval.failed_execution_count: Failed Counts
      QueryStats_Minute_Interval.text: Query
    series_column_widths:
      QueryStats_Minute_Interval.text: 873
    series_cell_visualizations:
      QueryStats_Minute_Interval.failed_execution_count:
        is_active: false
    x_axis_gridlines: false
    y_axis_gridlines: true
    show_y_axis_labels: true
    show_y_axis_ticks: true
    y_axis_tick_density: default
    y_axis_tick_density_custom: 5
    show_x_axis_label: true
    show_x_axis_ticks: true
    y_axis_scale_mode: linear
    x_axis_reversed: false
    y_axis_reversed: false
    plot_size_by_field: false
    trellis: ''
    stacking: ''
    legend_position: center
    point_style: none
    show_value_labels: false
    label_density: 25
    x_axis_scale: auto
    y_axis_combined: true
    ordering: none
    show_null_labels: false
    show_totals_labels: false
    show_silhouette: false
    totals_color: "#808080"
    defaults_version: 1
    series_types: {}
    show_null_points: true
    hidden_fields: []
    hidden_points_if_no: []
    listen:
      Interval End Time: QueryStats_Minute_Interval.interval_end_time
    row: 3
    col: 4
    width: 4
    height: 3
  - title: New Tile
    name: New Tile (5)
    model: spanner_monitoring
    explore: QueryStats_Minute_Interval
    type: single_value
    fields: [QueryStats_Minute_Interval.count]
    limit: 10
    custom_color_enabled: true
    show_single_value_title: true
    show_comparison: false
    comparison_type: value
    comparison_reverse_colors: false
    show_comparison_label: true
    enable_conditional_formatting: true
    conditional_formatting_include_totals: false
    conditional_formatting_include_nulls: false
    custom_color: "#ffffff"
    single_value_title: Total Queries Count
    value_format: 0.00,, "M"
    conditional_formatting: [{type: less than, value: 1, background_color: "#ffffff",
        font_color: "#EA4335", color_application: {collection_id: 7c56cc21-66e4-41c9-81ce-a60e1c3967b2,
          palette_id: 56d0c358-10a0-4fd6-aa0b-b117bef527ab}, bold: false, italic: false,
        strikethrough: false, fields: !!null ''}, {type: greater than, value: 0, background_color: "#ffffff",
        font_color: "#7CB342", color_application: {collection_id: 7c56cc21-66e4-41c9-81ce-a60e1c3967b2,
          palette_id: 56d0c358-10a0-4fd6-aa0b-b117bef527ab}, bold: false, italic: false,
        strikethrough: false, fields: !!null ''}]
    show_view_names: false
    show_row_numbers: true
    transpose: false
    truncate_text: true
    hide_totals: false
    hide_row_totals: false
    size_to_fit: true
    table_theme: editable
    limit_displayed_rows: false
    header_text_alignment: left
    header_font_size: '12'
    rows_font_size: '12'
    show_sql_query_menu_options: false
    show_totals: true
    show_row_totals: true
    series_labels:
      QueryStats_Minute_Interval.failed_execution_count: Failed Counts
      QueryStats_Minute_Interval.text: Query
    series_column_widths:
      QueryStats_Minute_Interval.text: 873
    series_cell_visualizations:
      QueryStats_Minute_Interval.failed_execution_count:
        is_active: false
    x_axis_gridlines: false
    y_axis_gridlines: true
    show_y_axis_labels: true
    show_y_axis_ticks: true
    y_axis_tick_density: default
    y_axis_tick_density_custom: 5
    show_x_axis_label: true
    show_x_axis_ticks: true
    y_axis_scale_mode: linear
    x_axis_reversed: false
    y_axis_reversed: false
    plot_size_by_field: false
    trellis: ''
    stacking: ''
    legend_position: center
    point_style: none
    show_value_labels: false
    label_density: 25
    x_axis_scale: auto
    y_axis_combined: true
    ordering: none
    show_null_labels: false
    show_totals_labels: false
    show_silhouette: false
    totals_color: "#808080"
    defaults_version: 1
    series_types: {}
    show_null_points: true
    hidden_fields: []
    hidden_points_if_no: []
    listen:
      Interval End Time: QueryStats_Minute_Interval.interval_end_time
    row: 3
    col: 0
    width: 4
    height: 3
  - title: New Tile
    name: New Tile (6)
    model: spanner_monitoring
    explore: QueryStats_Minute_Interval
    type: single_value
    fields: [QueryStats_Minute_Interval.cancelled_or_disconnected_execution_count]
    limit: 10
    custom_color_enabled: true
    show_single_value_title: true
    show_comparison: false
    comparison_type: value
    comparison_reverse_colors: false
    show_comparison_label: true
    enable_conditional_formatting: true
    conditional_formatting_include_totals: false
    conditional_formatting_include_nulls: false
    custom_color: "#000000"
    single_value_title: CD Execution Count
    conditional_formatting: [{type: less than, value: 1, background_color: '', font_color: "#7CB342",
        color_application: {collection_id: 7c56cc21-66e4-41c9-81ce-a60e1c3967b2, palette_id: 56d0c358-10a0-4fd6-aa0b-b117bef527ab},
        bold: false, italic: false, strikethrough: false, fields: !!null ''}, {type: greater
          than, value: 0, background_color: '', font_color: "#EA4335", color_application: {
          collection_id: 7c56cc21-66e4-41c9-81ce-a60e1c3967b2, palette_id: 56d0c358-10a0-4fd6-aa0b-b117bef527ab},
        bold: false, italic: false, strikethrough: false, fields: !!null ''}]
    show_view_names: false
    show_row_numbers: true
    transpose: false
    truncate_text: true
    hide_totals: false
    hide_row_totals: false
    size_to_fit: true
    table_theme: editable
    limit_displayed_rows: false
    header_text_alignment: left
    header_font_size: '12'
    rows_font_size: '12'
    show_sql_query_menu_options: false
    show_totals: true
    show_row_totals: true
    series_labels:
      QueryStats_Minute_Interval.failed_execution_count: Failed Counts
      QueryStats_Minute_Interval.text: Query
    series_column_widths:
      QueryStats_Minute_Interval.text: 873
    series_cell_visualizations:
      QueryStats_Minute_Interval.failed_execution_count:
        is_active: false
    x_axis_gridlines: false
    y_axis_gridlines: true
    show_y_axis_labels: true
    show_y_axis_ticks: true
    y_axis_tick_density: default
    y_axis_tick_density_custom: 5
    show_x_axis_label: true
    show_x_axis_ticks: true
    y_axis_scale_mode: linear
    x_axis_reversed: false
    y_axis_reversed: false
    plot_size_by_field: false
    trellis: ''
    stacking: ''
    legend_position: center
    point_style: none
    show_value_labels: false
    label_density: 25
    x_axis_scale: auto
    y_axis_combined: true
    ordering: none
    show_null_labels: false
    show_totals_labels: false
    show_silhouette: false
    totals_color: "#808080"
    defaults_version: 1
    series_types: {}
    show_null_points: true
    hidden_fields: []
    hidden_points_if_no: []
    listen:
      Interval End Time: QueryStats_Minute_Interval.interval_end_time
    row: 3
    col: 8
    width: 4
    height: 3
  - title: Recent Locks in 10 Minutes Window
    name: Recent Locks in 10 Minutes Window
    model: spanner_monitoring
    explore: lock_stats_top_10_minute
    type: looker_grid
    fields: [lock_stats_top_10_minute.interval_end_time, lock_stats_top_10_minute.row_range_start_key,
      lock_stats_top_10_minute.lock_wait_seconds]
    sorts: [lock_stats_top_10_minute.interval_end_time desc]
    limit: 500
    show_view_names: false
    show_row_numbers: true
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
    series_column_widths:
      lock_stats_top_10_minute.interval_end_time: 153
      lock_stats_top_10_minute.row_range_start_key: 362
      lock_stats_top_10_minute.lock_wait_seconds: 142
    series_cell_visualizations:
      lock_stats_top_10_minute.lock_wait_seconds:
        is_active: false
    series_types: {}
    defaults_version: 1
    listen:
      Interval End Time: lock_stats_top_10_minute.interval_end_time
    row: 36
    col: 0
    width: 13
    height: 9
  - title: Top Locks
    name: Top Locks
    model: spanner_monitoring
    explore: lock_stats_top_10_minute
    type: looker_grid
    fields: [lock_stats_top_10_minute.row_range_start_key, lock_stats_top_10_minute.lock_wait_seconds]
    sorts: [lock_stats_top_10_minute.lock_wait_seconds desc]
    limit: 500
    show_view_names: false
    show_row_numbers: true
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
    series_column_widths:
      lock_stats_top_10_minute.row_range_start_key: 370
      lock_stats_top_10_minute.lock_wait_seconds: 150
    series_cell_visualizations:
      lock_stats_top_10_minute.lock_wait_seconds:
        is_active: false
    series_types: {}
    defaults_version: 1
    listen:
      Interval End Time: lock_stats_top_10_minute.interval_end_time
    row: 36
    col: 13
    width: 11
    height: 9
  - title: Recent Query Stats
    name: Recent Query Stats
    model: spanner_monitoring
    explore: QueryStats_Minute_Interval
    type: looker_grid
    fields: [QueryStats_Minute_Interval.interval_end_time, QueryStats_Minute_Interval.count,
      QueryStats_Minute_Interval.failed_execution_count, QueryStats_Minute_Interval.avg_latency_seconds,
      QueryStats_Minute_Interval.avg_cpu_seconds, QueryStats_Minute_Interval.avg_rows_scanned,
      QueryStats_Minute_Interval.avg_bytes, QueryStats_Minute_Interval.avg_rows]
    sorts: [QueryStats_Minute_Interval.interval_end_time desc]
    limit: 500
    show_view_names: false
    show_row_numbers: true
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
    series_cell_visualizations:
      QueryStats_Minute_Interval.count:
        is_active: false
    series_types: {}
    defaults_version: 1
    listen:
      Interval End Time: QueryStats_Minute_Interval.interval_end_time
    row: 12
    col: 0
    width: 24
    height: 6
  - name: Query Statistics
    type: text
    title_text: Query Statistics
    subtitle_text: How queries have been performing overall for the duration?
    body_text: "<center> ___________________________________________________________________________________________________________________________________________________\
      \ </center>"
    row: 0
    col: 0
    width: 24
    height: 3
  - title: Recent Transaction Details
    name: Recent Transaction Details
    model: spanner_monitoring
    explore: txn_stats_top_10minute
    type: looker_grid
    fields: [txn_stats_top_10minute.interval_end_time, txn_stats_top_10minute.avg_bytes,
      txn_stats_top_10minute.avg_commit_latency_seconds, txn_stats_top_10minute.avg_participants,
      txn_stats_top_10minute.avg_total_latency_seconds, txn_stats_top_10minute.commit_abort_count,
      txn_stats_top_10minute.commit_attempt_count, txn_stats_top_10minute.commit_failed_precondition_count]
    sorts: [txn_stats_top_10minute.interval_end_time desc]
    limit: 500
    show_view_names: false
    show_row_numbers: true
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
    series_cell_visualizations:
      txn_stats_top_10minute.avg_bytes:
        is_active: false
    x_axis_gridlines: false
    y_axis_gridlines: true
    show_y_axis_labels: true
    show_y_axis_ticks: true
    y_axis_tick_density: default
    y_axis_tick_density_custom: 5
    show_x_axis_label: true
    show_x_axis_ticks: true
    y_axis_scale_mode: linear
    x_axis_reversed: false
    y_axis_reversed: false
    plot_size_by_field: false
    trellis: ''
    stacking: ''
    legend_position: center
    point_style: none
    show_value_labels: false
    label_density: 25
    x_axis_scale: auto
    y_axis_combined: true
    show_null_points: true
    interpolation: linear
    defaults_version: 1
    series_types: {}
    listen:
      Interval End Time: txn_stats_top_10minute.interval_end_time
    row: 45
    col: 0
    width: 24
    height: 6
  - title: Query Performance Over Time
    name: Query Performance Over Time
    model: spanner_monitoring
    explore: QueryStats_Minute_Interval
    type: looker_line
    fields: [QueryStats_Minute_Interval.interval_end_time, QueryStats_Minute_Interval.avg_cpu_seconds,
      QueryStats_Minute_Interval.avg_latency_seconds]
    sorts: [QueryStats_Minute_Interval.interval_end_time desc]
    limit: 500
    x_axis_gridlines: true
    y_axis_gridlines: true
    show_view_names: false
    show_y_axis_labels: true
    show_y_axis_ticks: true
    y_axis_tick_density: default
    y_axis_tick_density_custom: 5
    show_x_axis_label: true
    show_x_axis_ticks: true
    y_axis_scale_mode: linear
    x_axis_reversed: true
    y_axis_reversed: false
    plot_size_by_field: false
    trellis: ''
    stacking: ''
    limit_displayed_rows: false
    legend_position: center
    point_style: none
    show_value_labels: false
    label_density: 25
    x_axis_scale: time
    y_axis_combined: true
    show_null_points: true
    interpolation: step-before
    color_application:
      collection_id: 1297ec12-86a5-4ae0-9dfc-82de70b3806a
      palette_id: 99d2d3ac-7579-41a0-b16c-a381b7ae96da
      options:
        steps: 5
        reverse: false
    y_axes: [{label: '', orientation: left, series: [{axisId: QueryStats_Minute_Interval.avg_cpu_seconds,
            id: QueryStats_Minute_Interval.avg_cpu_seconds, name: Average CPU Seconds}],
        showLabels: true, showValues: true, unpinAxis: false, tickDensity: default,
        tickDensityCustom: 5, type: linear}, {label: !!null '', orientation: right,
        series: [{axisId: QueryStats_Minute_Interval.avg_latency_seconds, id: QueryStats_Minute_Interval.avg_latency_seconds,
            name: Average Latency Seconds}], showLabels: true, showValues: true, unpinAxis: false,
        tickDensity: default, tickDensityCustom: 5, type: linear}]
    x_axis_label: Time Frame
    limit_displayed_rows_values:
      show_hide: hide
      first_last: first
      num_rows: 0
    hide_legend: true
    series_types: {}
    series_colors: {}
    series_point_styles:
      QueryStats_Minute_Interval.avg_cpu_seconds: square
    reference_lines: [{reference_type: line, line_value: mean, range_start: max, range_end: min,
        margin_top: deviation, margin_value: mean, margin_bottom: deviation, label_position: right,
        color: "#9334E6", label: Average (Mean)}]
    trend_lines: []
    swap_axes: false
    defaults_version: 1
    listen:
      Interval End Time: QueryStats_Minute_Interval.interval_end_time
    row: 6
    col: 0
    width: 12
    height: 6
  - title: Query Performance In 3 Minute Window
    name: Query Performance In 3 Minute Window
    model: spanner_monitoring
    explore: QueryStats_Minute_Interval
    type: looker_grid
    fields: [QueryStats_Minute_Interval.interval_end_minute3, QueryStats_Minute_Interval.text,
      QueryStats_Minute_Interval.failed_execution_count, QueryStats_Minute_Interval.avg_cpu_seconds,
      QueryStats_Minute_Interval.avg_latency_seconds]
    sorts: [QueryStats_Minute_Interval.interval_end_minute3 desc]
    subtotals: [QueryStats_Minute_Interval.interval_end_minute3]
    limit: 500
    show_view_names: false
    show_row_numbers: true
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
    series_column_widths:
      QueryStats_Minute_Interval.interval_end_minute3: 184
    series_cell_visualizations:
      QueryStats_Minute_Interval.avg_cpu_seconds:
        is_active: true
    series_text_format:
      QueryStats_Minute_Interval.text: {}
    series_collapsed:
      QueryStats_Minute_Interval.interval_end_minute3: true
    x_axis_gridlines: false
    y_axis_gridlines: true
    show_y_axis_labels: true
    show_y_axis_ticks: true
    y_axis_tick_density: default
    y_axis_tick_density_custom: 5
    show_x_axis_label: true
    show_x_axis_ticks: true
    y_axis_scale_mode: linear
    x_axis_reversed: false
    y_axis_reversed: false
    plot_size_by_field: false
    trellis: ''
    stacking: ''
    legend_position: center
    point_style: none
    show_value_labels: false
    label_density: 25
    x_axis_scale: auto
    y_axis_combined: true
    ordering: none
    show_null_labels: false
    show_totals_labels: false
    show_silhouette: false
    totals_color: "#808080"
    defaults_version: 1
    series_types: {}
    listen: {}
    row: 51
    col: 0
    width: 24
    height: 8
  filters:
  - name: Interval End Time
    title: Interval End Time
    type: field_filter
    default_value: 24 hour
    allow_multiple_values: true
    required: false
    ui_config:
      type: advanced
      display: popover
      options: []
    model: spanner_monitoring
    explore: QueryStats_Minute_Interval
    listens_to_filters: []
    field: QueryStats_Minute_Interval.interval_end_time
