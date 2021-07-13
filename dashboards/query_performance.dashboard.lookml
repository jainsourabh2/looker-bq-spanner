- dashboard: query_performance
  title: Query Performance
  layout: newspaper
  preferred_viewer: dashboards
  refresh: 1 hour
  elements:
  - title: Query Performance by CPU Usage
    name: Query Performance by CPU Usage
    model: spanner_monitoring
    explore: QueryStats_Minute_Interval
    type: looker_grid
    fields: [QueryStats_Minute_Interval.interval_end_time, QueryStats_Minute_Interval.average_cpu_seconds_tier,
      QueryStats_Minute_Interval.count]
    pivots: [QueryStats_Minute_Interval.average_cpu_seconds_tier]
    fill_fields: [QueryStats_Minute_Interval.average_cpu_seconds_tier]
    sorts: [QueryStats_Minute_Interval.interval_end_time desc, QueryStats_Minute_Interval.average_cpu_seconds_tier]
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
    listen:
      Interval End Time: QueryStats_Minute_Interval.interval_end_time
    row: 12
    col: 0
    width: 24
    height: 6
  - title: Query Performance by Latency
    name: Query Performance by Latency
    model: spanner_monitoring
    explore: QueryStats_Minute_Interval
    type: looker_grid
    fields: [QueryStats_Minute_Interval.interval_end_time, QueryStats_Minute_Interval.count,
      QueryStats_Minute_Interval.average_latency_seconds_tier]
    pivots: [QueryStats_Minute_Interval.average_latency_seconds_tier]
    fill_fields: [QueryStats_Minute_Interval.average_latency_seconds_tier]
    sorts: [QueryStats_Minute_Interval.interval_end_time desc, QueryStats_Minute_Interval.average_latency_seconds_tier]
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
    listen:
      Interval End Time: QueryStats_Minute_Interval.interval_end_time
    row: 18
    col: 0
    width: 24
    height: 6
  - title: New Tile
    name: New Tile
    model: spanner_monitoring
    explore: QueryStats_Minute_Interval
    type: single_value
    fields: [QueryStats_Minute_Interval.failed_execution_count]
    limit: 500
    column_limit: 50
    custom_color_enabled: true
    show_single_value_title: true
    show_comparison: false
    comparison_type: value
    comparison_reverse_colors: false
    show_comparison_label: true
    enable_conditional_formatting: true
    conditional_formatting_include_totals: false
    conditional_formatting_include_nulls: false
    single_value_title: Failed Queries
    value_format: ''
    conditional_formatting: [{type: greater than, value: 0, background_color: '',
        font_color: "#EA4335", color_application: {collection_id: 7c56cc21-66e4-41c9-81ce-a60e1c3967b2,
          palette_id: 56d0c358-10a0-4fd6-aa0b-b117bef527ab}, bold: false, italic: false,
        strikethrough: false, fields: !!null ''}]
    series_types: {}
    defaults_version: 1
    listen:
      Interval End Time: QueryStats_Minute_Interval.interval_end_time
    row: 3
    col: 0
    width: 7
    height: 3
  - title: New Tile
    name: New Tile (2)
    model: spanner_monitoring
    explore: QueryStats_Minute_Interval
    type: single_value
    fields: [QueryStats_Minute_Interval.count]
    filters:
      QueryStats_Minute_Interval.average_cpu_seconds: ">0.3"
    limit: 500
    column_limit: 50
    custom_color_enabled: true
    show_single_value_title: true
    show_comparison: false
    comparison_type: value
    comparison_reverse_colors: false
    show_comparison_label: true
    enable_conditional_formatting: true
    conditional_formatting_include_totals: false
    conditional_formatting_include_nulls: false
    single_value_title: Queries with Avg CPU Usage > 0.3
    value_format: ''
    conditional_formatting: [{type: greater than, value: 0, background_color: '',
        font_color: "#EA4335", color_application: {collection_id: 7c56cc21-66e4-41c9-81ce-a60e1c3967b2,
          palette_id: 56d0c358-10a0-4fd6-aa0b-b117bef527ab}, bold: false, italic: false,
        strikethrough: false, fields: !!null ''}]
    series_types: {}
    defaults_version: 1
    listen:
      Interval End Time: QueryStats_Minute_Interval.interval_end_time
    row: 3
    col: 7
    width: 7
    height: 3
  - title: New Tile
    name: New Tile (3)
    model: spanner_monitoring
    explore: QueryStats_Minute_Interval
    type: single_value
    fields: [QueryStats_Minute_Interval.count]
    filters:
      QueryStats_Minute_Interval.average_latency_seconds: ">0.3"
    limit: 500
    column_limit: 50
    custom_color_enabled: true
    show_single_value_title: true
    show_comparison: false
    comparison_type: value
    comparison_reverse_colors: false
    show_comparison_label: true
    enable_conditional_formatting: true
    conditional_formatting_include_totals: false
    conditional_formatting_include_nulls: false
    single_value_title: Queries with Avg Latency Seconds > 0.3
    value_format: ''
    conditional_formatting: [{type: greater than, value: 0, background_color: '',
        font_color: "#EA4335", color_application: {collection_id: 7c56cc21-66e4-41c9-81ce-a60e1c3967b2,
          palette_id: 56d0c358-10a0-4fd6-aa0b-b117bef527ab}, bold: false, italic: false,
        strikethrough: false, fields: !!null ''}]
    series_types: {}
    defaults_version: 1
    listen:
      Interval End Time: QueryStats_Minute_Interval.interval_end_time
    row: 6
    col: 0
    width: 7
    height: 3
  - title: Failed vs Timeout
    name: Failed vs Timeout
    model: spanner_monitoring
    explore: QueryStats_Minute_Interval
    type: looker_column
    fields: [QueryStats_Minute_Interval.interval_end_time, QueryStats_Minute_Interval.timed_out_execution_count,
      QueryStats_Minute_Interval.failed_execution_count]
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
    point_style: circle
    show_value_labels: false
    label_density: 25
    x_axis_scale: time
    y_axis_combined: true
    ordering: none
    show_null_labels: false
    show_totals_labels: false
    show_silhouette: false
    totals_color: "#808080"
    y_axes: [{label: !!null '', orientation: left, series: [{axisId: QueryStats_Minute_Interval.timed_out_execution_count,
            id: QueryStats_Minute_Interval.timed_out_execution_count, name: Timed
              Out Execution Count}], showLabels: true, showValues: true, unpinAxis: false,
        tickDensity: default, tickDensityCustom: 5, type: linear}, {label: '', orientation: right,
        series: [{axisId: QueryStats_Minute_Interval.failed_execution_count, id: QueryStats_Minute_Interval.failed_execution_count,
            name: Failed Execution Count}], showLabels: true, showValues: true, unpinAxis: false,
        tickDensity: default, tickDensityCustom: 5, type: linear}]
    series_types:
      QueryStats_Minute_Interval.failed_execution_count: scatter
      QueryStats_Minute_Interval.timed_out_execution_count: line
    series_point_styles:
      QueryStats_Minute_Interval.timed_out_execution_count: diamond
    defaults_version: 1
    listen:
      Interval End Time: QueryStats_Minute_Interval.interval_end_time
    row: 3
    col: 14
    width: 10
    height: 6
  - title: New Tile
    name: New Tile (4)
    model: spanner_monitoring
    explore: QueryStats_Minute_Interval
    type: single_value
    fields: [QueryStats_Minute_Interval.timed_out_execution_count]
    limit: 500
    column_limit: 50
    custom_color_enabled: true
    show_single_value_title: true
    show_comparison: false
    comparison_type: value
    comparison_reverse_colors: false
    show_comparison_label: true
    enable_conditional_formatting: true
    conditional_formatting_include_totals: false
    conditional_formatting_include_nulls: false
    single_value_title: Total TimedOut Queries
    conditional_formatting: [{type: greater than, value: 0, background_color: '',
        font_color: "#EA4335", color_application: {collection_id: 7c56cc21-66e4-41c9-81ce-a60e1c3967b2,
          palette_id: 56d0c358-10a0-4fd6-aa0b-b117bef527ab}, bold: false, italic: false,
        strikethrough: false, fields: !!null ''}]
    defaults_version: 1
    listen:
      Interval End Time: QueryStats_Minute_Interval.interval_end_time
    row: 6
    col: 7
    width: 7
    height: 3
  - name: Query Performance
    type: text
    title_text: Query Performance
    subtitle_text: How are your queries performing in the last X minutes?
    body_text: "<center>_______________________________________________________________________________________________________________________________________________________________________________________________________</center>"
    row: 0
    col: 0
    width: 24
    height: 3
  - name: Slow Performance Identification
    type: text
    title_text: Slow Performance Identification
    subtitle_text: Identify queries that are performing slow in terms of Latency &
      CPU Seconds
    body_text: "<center>_______________________________________________________________________________________________________________________________________________________________________________________________________</center>"
    row: 9
    col: 0
    width: 24
    height: 3
  - title: Top 20 Slow Performing Queries
    name: Top 20 Slow Performing Queries
    model: spanner_monitoring
    explore: QueryStats_Minute_Interval
    type: looker_grid
    fields: [QueryStats_Minute_Interval.text, QueryStats_Minute_Interval.avg_cpu_seconds,
      QueryStats_Minute_Interval.avg_latency_seconds]
    sorts: [QueryStats_Minute_Interval.avg_cpu_seconds desc]
    limit: 20
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
      QueryStats_Minute_Interval.avg_cpu_seconds:
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
  filters:
  - name: Interval End Time
    title: Interval End Time
    type: field_filter
    default_value: 10 minute
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
