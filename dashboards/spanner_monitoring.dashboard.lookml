- dashboard: spanner_monitoring
  title: Spanner Monitoring
  layout: newspaper
  preferred_viewer: dashboards
  refresh: 5 minutes
  embed_style:
    background_color: "#f6f8fa"
    show_title: true
    title_color: "#000000"
    show_filters_bar: true
    tile_text_color: "#3a4245"
    text_tile_text_color: ''
  elements:
  - title: New Tile
    name: New Tile
    model: spanner_monitoring
    explore: spanner_parameters
    type: single_value
    fields: [spanner_parameters.node_count]
    filters:
      spanner_parameters.metric_name: '"instance/node_count"'
    limit: 500
    custom_color_enabled: true
    show_single_value_title: true
    show_comparison: false
    comparison_type: value
    comparison_reverse_colors: false
    show_comparison_label: true
    enable_conditional_formatting: false
    conditional_formatting_include_totals: false
    conditional_formatting_include_nulls: false
    single_value_title: Spanner Nodes
    value_format: "#0"
    series_types: {}
    defaults_version: 1
    listen:
      Interval End Time: spanner_parameters.end_time
    row: 3
    col: 0
    width: 4
    height: 3
  - title: New Tile
    name: New Tile (2)
    model: spanner_monitoring
    explore: spanner_parameters
    type: single_value
    fields: [spanner_parameters.instance_cpu_utilization]
    filters:
      spanner_parameters.metric_name: instance/cpu/utilization
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
    single_value_title: Avg CPU Utilization
    value_format: "#0.00%"
    defaults_version: 1
    listen:
      Interval End Time: spanner_parameters.end_time
    row: 3
    col: 4
    width: 4
    height: 3
  - title: New Tile
    name: New Tile (3)
    model: spanner_monitoring
    explore: spanner_parameters
    type: single_value
    fields: [spanner_parameters.avg_bytes_used]
    filters:
      spanner_parameters.metric_name: '"instance/storage/used_bytes"'
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
    single_value_title: Total GB Used
    value_format: "#0.00"
    defaults_version: 1
    listen:
      Interval End Time: spanner_parameters.end_time
    row: 3
    col: 20
    width: 4
    height: 3
  - title: DB Load
    name: DB Load
    model: spanner_monitoring
    explore: QueryStats_Minute_Interval
    type: looker_scatter
    fields: [QueryStats_Minute_Interval.interval_end_time, QueryStats_Minute_Interval.avg_latency_seconds,
      QueryStats_Minute_Interval.count]
    sorts: [QueryStats_Minute_Interval.interval_end_time desc]
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
    x_axis_reversed: false
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
    show_null_points: true
    y_axes: [{label: '', orientation: left, series: [{axisId: QueryStats_Minute_Interval.avg_latency_seconds,
            id: QueryStats_Minute_Interval.avg_latency_seconds, name: Average Latency
              Seconds}], showLabels: true, showValues: true, unpinAxis: false, tickDensity: default,
        tickDensityCustom: 5, type: linear}, {label: !!null '', orientation: right,
        series: [{axisId: QueryStats_Minute_Interval.count, id: QueryStats_Minute_Interval.count,
            name: Total Execution Count}], showLabels: true, showValues: true, unpinAxis: false,
        tickDensity: default, tickDensityCustom: 5, type: linear}]
    series_types:
      QueryStats_Minute_Interval.count: column
    reference_lines: [{reference_type: line, line_value: mean, range_start: max, range_end: min,
        margin_top: deviation, margin_value: mean, margin_bottom: deviation, label_position: right,
        color: "#000000", label: Average (Mean)}]
    defaults_version: 1
    listen:
      Interval End Time: QueryStats_Minute_Interval.interval_end_time
    row: 9
    col: 0
    width: 24
    height: 6
  - title: Top Failed Queries
    name: Top Failed Queries
    model: spanner_monitoring
    explore: QueryStats_Minute_Interval
    type: looker_grid
    fields: [QueryStats_Minute_Interval.text, QueryStats_Minute_Interval.failed_execution_count]
    filters:
      QueryStats_Minute_Interval.failed_execution_count: ">0"
    sorts: [QueryStats_Minute_Interval.failed_execution_count desc]
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
    row: 27
    col: 0
    width: 24
    height: 5
  - title: Top Slow Queries
    name: Top Slow Queries
    model: spanner_monitoring
    explore: QueryStats_Minute_Interval
    type: looker_grid
    fields: [QueryStats_Minute_Interval.text, QueryStats_Minute_Interval.avg_latency_seconds]
    sorts: [QueryStats_Minute_Interval.avg_latency_seconds desc]
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
    row: 15
    col: 0
    width: 24
    height: 6
  - name: Spanner Statistics
    type: text
    title_text: Spanner Statistics
    subtitle_text: Monitoring on How Spanner has been performing?
    body_text: ''
    row: 0
    col: 0
    width: 24
    height: 3
  - name: Query Monitoring
    type: text
    title_text: Query Monitoring
    subtitle_text: How queries have been performing lately?
    body_text: ''
    row: 6
    col: 0
    width: 24
    height: 3
  - title: Untitled
    name: Untitled
    model: spanner_monitoring
    explore: spanner_parameters
    type: single_value
    fields: [spanner_parameters.request_write_latencies]
    filters:
      spanner_parameters.metric_name: '"api/request_write_latencies"'
    limit: 500
    custom_color_enabled: true
    show_single_value_title: true
    show_comparison: false
    comparison_type: value
    comparison_reverse_colors: false
    show_comparison_label: true
    enable_conditional_formatting: false
    conditional_formatting_include_totals: false
    conditional_formatting_include_nulls: false
    single_value_title: Avg Write Latency(ms)
    value_format: "#0.00"
    defaults_version: 1
    listen:
      Interval End Time: spanner_parameters.end_time
    row: 3
    col: 12
    width: 4
    height: 3
  - title: 50p Read Latency
    name: 50p Read Latency
    model: spanner_monitoring
    explore: spanner_parameters
    type: single_value
    fields: [spanner_parameters.50p_request_read_latencies]
    filters:
      spanner_parameters.metric_name: '"api/request_read_50p_latencies"'
    limit: 500
    custom_color_enabled: true
    show_single_value_title: true
    show_comparison: false
    comparison_type: value
    comparison_reverse_colors: false
    show_comparison_label: true
    enable_conditional_formatting: false
    conditional_formatting_include_totals: false
    conditional_formatting_include_nulls: false
    single_value_title: 50p Read Latency(ms)
    value_format: "#0.00"
    defaults_version: 1
    listen:
      Interval End Time: spanner_parameters.end_time
    row: 3
    col: 16
    width: 4
    height: 3
  - title: Active Queries Summary
    name: Active Queries Summary
    model: spanner_monitoring
    explore: active_queries_summary
    type: looker_grid
    fields: [active_queries_summary.oldest_start_time, active_queries_summary.active_count,
      active_queries_summary.qlt_1_s, active_queries_summary.qlt_10_s, active_queries_summary.qlt_100_s]
    sorts: [active_queries_summary.oldest_start_time desc]
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
      active_queries_summary.active_count:
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
      Interval End Time: active_queries_summary.oldest_start_time
    row: 32
    col: 0
    width: 11
    height: 6
  - title: Top Expensive Queries
    name: Top Expensive Queries
    model: spanner_monitoring
    explore: oldest_active_queries
    type: looker_grid
    fields: [oldest_active_queries.start_time, oldest_active_queries.text, oldest_active_queries.text_fingerprint]
    sorts: [oldest_active_queries.start_time]
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
    defaults_version: 1
    listen: {}
    row: 32
    col: 11
    width: 13
    height: 6
  - title: 50p Write Latency
    name: 50p Write Latency
    model: spanner_monitoring
    explore: spanner_parameters
    type: single_value
    fields: [spanner_parameters.50p_request_write_latencies]
    filters:
      spanner_parameters.metric_name: '"api/request_write_50p_latencies"'
    limit: 500
    custom_color_enabled: true
    show_single_value_title: true
    show_comparison: false
    comparison_type: value
    comparison_reverse_colors: false
    show_comparison_label: true
    enable_conditional_formatting: false
    conditional_formatting_include_totals: false
    conditional_formatting_include_nulls: false
    single_value_title: 50p Write Latency(ms)
    value_format: "#0.00"
    defaults_version: 1
    row: 3
    col: 8
    width: 4
    height: 3
  - name: Kafka CDC Monitoring
    type: text
    title_text: Kafka CDC Monitoring
    body_text: "----------------- [Kafka CDC Monitoring](http://35.245.244.74/login)\
      \ -----------------"
    row: 54
    col: 10
    width: 4
    height: 2
  - name: Transaction Monitoring
    type: text
    title_text: Transaction Monitoring
    subtitle_text: How transactions are performing?
    body_text: ''
    row: 38
    col: 0
    width: 24
    height: 3
  - title: Commit Latency Trend
    name: Commit Latency Trend
    model: spanner_monitoring
    explore: txn_stats_top_10minute
    type: looker_line
    fields: [txn_stats_top_10minute.avg_commit_latency_seconds, txn_stats_top_10minute.interval_end_hour]
    fill_fields: [txn_stats_top_10minute.interval_end_hour]
    sorts: [txn_stats_top_10minute.interval_end_hour desc]
    limit: 500
    column_limit: 50
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
    x_axis_reversed: false
    y_axis_reversed: false
    plot_size_by_field: false
    trellis: ''
    stacking: ''
    limit_displayed_rows: false
    legend_position: center
    point_style: none
    show_value_labels: false
    label_density: 25
    x_axis_scale: auto
    y_axis_combined: true
    show_null_points: true
    interpolation: linear
    color_application:
      collection_id: 5b121cce-cf79-457c-a52a-9162dc174766
      palette_id: 55dee055-18cf-4472-9669-469322a6f264
      options:
        steps: 5
    series_types: {}
    series_colors: {}
    defaults_version: 1
    listen: {}
    row: 41
    col: 0
    width: 12
    height: 6
  - title: Commit Attempt vs Abort Trend
    name: Commit Attempt vs Abort Trend
    model: spanner_monitoring
    explore: txn_stats_top_10minute
    type: looker_line
    fields: [txn_stats_top_10minute.avg_participants, txn_stats_top_10minute.interval_end_time,
      txn_stats_top_10minute.avg_commit_latency_seconds]
    sorts: [txn_stats_top_10minute.interval_end_time desc]
    limit: 500
    x_axis_gridlines: false
    y_axis_gridlines: true
    show_view_names: false
    show_y_axis_labels: true
    show_y_axis_ticks: true
    y_axis_tick_density: default
    y_axis_tick_density_custom: 5
    show_x_axis_label: false
    show_x_axis_ticks: true
    y_axis_scale_mode: linear
    x_axis_reversed: false
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
    y_axes: [{label: '', orientation: left, series: [{axisId: txn_stats_top_10minute.avg_commit_latency_seconds,
            id: txn_stats_top_10minute.avg_commit_latency_seconds, name: Avg Commit
              Latency Seconds}], showLabels: false, showValues: true, unpinAxis: false,
        tickDensity: default, tickDensityCustom: 5, type: linear}, {label: !!null '',
        orientation: right, series: [{axisId: txn_stats_top_10minute.avg_participants,
            id: txn_stats_top_10minute.avg_participants, name: Avg Participants}],
        showLabels: false, showValues: true, unpinAxis: false, tickDensity: default,
        tickDensityCustom: 5, type: linear}]
    series_types:
      txn_stats_top_10minute.avg_participants: column
      txn_stats_top_10minute.avg_total_latency_seconds: area
      txn_stats_top_10minute.avg_commit_latency_seconds: area
    series_colors:
      txn_stats_top_10minute.avg_total_latency_seconds: "#E52592"
      txn_stats_top_10minute.avg_commit_latency_seconds: "#FF8168"
    series_point_styles:
      txn_stats_top_10minute.avg_total_latency_seconds: auto
    defaults_version: 1
    show_row_numbers: true
    transpose: false
    truncate_text: true
    hide_totals: false
    hide_row_totals: false
    size_to_fit: true
    table_theme: white
    enable_conditional_formatting: false
    header_text_alignment: left
    header_font_size: 12
    rows_font_size: 12
    conditional_formatting_include_totals: false
    conditional_formatting_include_nulls: false
    ordering: none
    show_null_labels: false
    show_totals_labels: false
    show_silhouette: false
    totals_color: "#808080"
    listen: {}
    row: 41
    col: 12
    width: 12
    height: 6
  - title: Commit Attempt vs Abort Trend
    name: Commit Attempt vs Abort Trend (2)
    model: spanner_monitoring
    explore: txn_stats_top_10minute
    type: looker_line
    fields: [txn_stats_top_10minute.avg_participants, txn_stats_top_10minute.interval_end_time,
      txn_stats_top_10minute.avg_commit_latency_seconds]
    sorts: [txn_stats_top_10minute.interval_end_time desc]
    limit: 500
    x_axis_gridlines: false
    y_axis_gridlines: true
    show_view_names: false
    show_y_axis_labels: true
    show_y_axis_ticks: true
    y_axis_tick_density: default
    y_axis_tick_density_custom: 5
    show_x_axis_label: false
    show_x_axis_ticks: true
    y_axis_scale_mode: linear
    x_axis_reversed: false
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
    y_axes: [{label: '', orientation: left, series: [{axisId: txn_stats_top_10minute.avg_commit_latency_seconds,
            id: txn_stats_top_10minute.avg_commit_latency_seconds, name: Avg Commit
              Latency Seconds}], showLabels: false, showValues: true, unpinAxis: false,
        tickDensity: default, tickDensityCustom: 5, type: linear}, {label: !!null '',
        orientation: right, series: [{axisId: txn_stats_top_10minute.avg_participants,
            id: txn_stats_top_10minute.avg_participants, name: Avg Participants}],
        showLabels: false, showValues: true, unpinAxis: false, tickDensity: default,
        tickDensityCustom: 5, type: linear}]
    series_types:
      txn_stats_top_10minute.avg_participants: column
      txn_stats_top_10minute.avg_total_latency_seconds: area
      txn_stats_top_10minute.avg_commit_latency_seconds: area
    series_colors:
      txn_stats_top_10minute.avg_total_latency_seconds: "#E52592"
      txn_stats_top_10minute.avg_commit_latency_seconds: "#FF8168"
    series_point_styles:
      txn_stats_top_10minute.avg_total_latency_seconds: auto
    defaults_version: 1
    show_row_numbers: true
    transpose: false
    truncate_text: true
    hide_totals: false
    hide_row_totals: false
    size_to_fit: true
    table_theme: white
    enable_conditional_formatting: false
    header_text_alignment: left
    header_font_size: 12
    rows_font_size: 12
    conditional_formatting_include_totals: false
    conditional_formatting_include_nulls: false
    ordering: none
    show_null_labels: false
    show_totals_labels: false
    show_silhouette: false
    totals_color: "#808080"
    row: 47
    col: 0
    width: 12
    height: 7
  - title: Avg Bytes Trend
    name: Avg Bytes Trend
    model: spanner_monitoring
    explore: txn_stats_top_10minute
    type: looker_line
    fields: [txn_stats_top_10minute.interval_end_time, txn_stats_top_10minute.avg_bytes]
    sorts: [txn_stats_top_10minute.interval_end_time desc]
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
    x_axis_reversed: false
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
    y_axes: [{label: '', orientation: left, series: [{axisId: txn_stats_top_10minute.avg_commit_latency_seconds,
            id: txn_stats_top_10minute.avg_commit_latency_seconds, name: Avg Commit
              Latency Seconds}], showLabels: true, showValues: true, unpinAxis: false,
        tickDensity: default, tickDensityCustom: 5, type: linear}, {label: !!null '',
        orientation: right, series: [{axisId: txn_stats_top_10minute.avg_participants,
            id: txn_stats_top_10minute.avg_participants, name: Avg Participants}],
        showLabels: true, showValues: true, unpinAxis: false, tickDensity: default,
        tickDensityCustom: 5, type: linear}]
    series_types: {}
    series_colors:
      txn_stats_top_10minute.avg_total_latency_seconds: "#E52592"
      txn_stats_top_10minute.avg_commit_latency_seconds: "#E8710A"
      txn_stats_top_10minute.avg_bytes: "#7CB342"
    series_labels: {}
    series_point_styles:
      txn_stats_top_10minute.avg_total_latency_seconds: auto
    defaults_version: 1
    show_row_numbers: true
    transpose: false
    truncate_text: true
    hide_totals: false
    hide_row_totals: false
    size_to_fit: true
    table_theme: white
    enable_conditional_formatting: false
    header_text_alignment: left
    header_font_size: 12
    rows_font_size: 12
    conditional_formatting_include_totals: false
    conditional_formatting_include_nulls: false
    ordering: none
    show_null_labels: false
    show_totals_labels: false
    show_silhouette: false
    totals_color: "#808080"
    value_labels: legend
    label_type: labPer
    map_plot_mode: points
    heatmap_gridlines: false
    heatmap_gridlines_empty: false
    heatmap_opacity: 0.5
    show_region_field: true
    draw_map_labels_above_data: true
    map_tile_provider: light
    map_position: fit_data
    map_scale_indicator: 'off'
    map_pannable: true
    map_zoomable: true
    map_marker_type: circle
    map_marker_icon_name: default
    map_marker_radius_mode: proportional_value
    map_marker_units: meters
    map_marker_proportional_scale_type: linear
    map_marker_color_mode: fixed
    show_legend: true
    quantize_map_value_colors: false
    reverse_map_value_colors: false
    custom_color_enabled: true
    show_single_value_title: true
    show_comparison: false
    comparison_type: value
    comparison_reverse_colors: false
    show_comparison_label: true
    hidden_fields: []
    hidden_points_if_no: []
    row: 47
    col: 12
    width: 12
    height: 7
  filters:
  - name: Interval End Time
    title: Interval End Time
    type: field_filter
    default_value: 3 days
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
