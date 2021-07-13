- dashboard: lock__txn_analysis
  title: Lock & Txn Analysis
  layout: newspaper
  preferred_viewer: dashboards
  refresh: 1 hour
  elements:
  - title: Lock Analysis on Columns by Type
    name: Lock Analysis on Columns by Type
    model: spanner_monitoring
    explore: lock_stats_top_10_minute
    type: looker_grid
    fields: [lock_stats_top_10_minute.interval_end_time, lock_stats_top_10_minute__sample_lock_requests.lock_mode,
      lock_stats_top_10_minute__sample_lock_requests.column_name, lock_stats_top_10_minute.row_range_start_key]
    pivots: [lock_stats_top_10_minute__sample_lock_requests.lock_mode]
    sorts: [lock_stats_top_10_minute.interval_end_time desc, lock_stats_top_10_minute__sample_lock_requests.lock_mode]
    subtotals: [lock_stats_top_10_minute.interval_end_time]
    limit: 500
    total: true
    row_total: right
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
      lock_stats_top_10_minute__sample_lock_requests.column_name:
        is_active: false
    series_collapsed:
      lock_stats_top_10_minute.interval_end_time: true
    defaults_version: 1
    listen:
      Interval End Time: lock_stats_top_10_minute.interval_end_time
    row: 6
    col: 0
    width: 24
    height: 6
  - title: Lock Counts vs Wait Seconds
    name: Lock Counts vs Wait Seconds
    model: spanner_monitoring
    explore: lock_stats_top_10_minute
    type: looker_line
    fields: [lock_stats_top_10_minute.interval_end_time, lock_stats_top_10_minute.count,
      lock_stats_top_10_minute.lock_wait_seconds]
    sorts: [lock_stats_top_10_minute.interval_end_time desc]
    limit: 500
    x_axis_gridlines: false
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
    x_axis_scale: auto
    y_axis_combined: true
    show_null_points: true
    interpolation: linear
    y_axes: [{label: '', orientation: left, series: [{axisId: lock_stats_top_10_minute.count,
            id: lock_stats_top_10_minute.count, name: Lock Stats Top 10 Minute}],
        showLabels: true, showValues: true, unpinAxis: false, tickDensity: default,
        tickDensityCustom: 5, type: linear}, {label: !!null '', orientation: right,
        series: [{axisId: lock_stats_top_10_minute.lock_wait_seconds, id: lock_stats_top_10_minute.lock_wait_seconds,
            name: Lock Wait Seconds}], showLabels: true, showValues: true, unpinAxis: false,
        tickDensity: default, tickDensityCustom: 5, type: linear}]
    series_types:
      lock_stats_top_10_minute.count: scatter
    defaults_version: 1
    listen:
      Interval End Time: lock_stats_top_10_minute.interval_end_time
    row: 0
    col: 0
    width: 17
    height: 6
  - title: New Tile
    name: New Tile
    model: spanner_monitoring
    explore: lock_stats_top_10_minute
    type: single_value
    fields: [lock_stats_top_10_minute.lock_wait_seconds_hh_mm_ss, lock_stats_top_10_minute.lock_wait_seconds]
    limit: 500
    column_limit: 50
    custom_color_enabled: true
    show_single_value_title: true
    show_comparison: false
    comparison_type: value
    comparison_reverse_colors: false
    show_comparison_label: true
    enable_conditional_formatting: false
    conditional_formatting_include_totals: false
    conditional_formatting_include_nulls: false
    single_value_title: Hours:Minutes.Seconds Lock Time
    value_format: ''
    defaults_version: 1
    listen:
      Interval End Time: lock_stats_top_10_minute.interval_end_time
    row: 0
    col: 17
    width: 7
    height: 3
  - title: Recent Transaction Analysis
    name: Recent Transaction Analysis
    model: spanner_monitoring
    explore: txn_stats_top_10minute
    type: looker_grid
    fields: [txn_stats_top_10minute.interval_end_time, txn_stats_top_10minute.avg_commit_latency_seconds,
      txn_stats_top_10minute.avg_total_latency_seconds, txn_stats_top_10minute.avg_participants]
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
      txn_stats_top_10minute.avg_commit_latency_seconds:
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
    row: 12
    col: 0
    width: 24
    height: 7
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
    explore: lock_stats_top_10_minute
    listens_to_filters: []
    field: lock_stats_top_10_minute.interval_end_time
