- dashboard: transaction_drill_down_analysis
  title: Transaction Drill Down Analysis
  layout: newspaper
  preferred_viewer: dashboards
  elements:
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
    row: 0
    col: 0
    width: 12
    height: 6
  - title: Commit Attempt vs Abort Trend
    name: Commit Attempt vs Abort Trend
    model: spanner_monitoring
    explore: txn_stats_top_10minute
    type: looker_column
    fields: [txn_stats_top_10minute.commit_attempt_count, txn_stats_top_10minute.commit_abort_count,
      txn_stats_top_10minute.interval_end_time]
    sorts: [txn_stats_top_10minute.interval_end_time desc]
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
    stacking: normal
    limit_displayed_rows: false
    legend_position: center
    point_style: circle
    show_value_labels: false
    label_density: 25
    x_axis_scale: auto
    y_axis_combined: true
    ordering: none
    show_null_labels: false
    show_totals_labels: false
    show_silhouette: false
    totals_color: "#808080"
    color_application:
      collection_id: d754397b-2c05-4470-bbbb-05eb4c2b15cd
      palette_id: b0768e0d-03b8-4c12-9e30-9ada6affc357
      options:
        steps: 5
    hidden_series: []
    series_types:
      txn_stats_top_10minute.commit_abort_count: area
    series_colors: {}
    show_null_points: true
    interpolation: linear
    defaults_version: 1
    listen: {}
    row: 0
    col: 13
    width: 11
    height: 6
  - title: Avg Participants vs Latency
    name: Avg Participants vs Latency
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
    row: 6
    col: 0
    width: 12
    height: 6
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
    listen: {}
    row: 6
    col: 13
    width: 11
    height: 6
