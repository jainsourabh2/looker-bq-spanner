- dashboard: query_drill_down_analysis
  title: Query Drill Down Analysis
  layout: newspaper
  preferred_viewer: dashboards
  elements:
  - title: Latency Trend
    name: Latency Trend
    model: spanner_monitoring
    explore: QueryStats_Minute_Interval
    type: looker_line
    fields: [QueryStats_Minute_Interval.interval_end_time, QueryStats_Minute_Interval.avg_latency_seconds,
      QueryStats_Minute_Interval.avg_all_failed_average_latency_seconds]
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
    x_axis_scale: auto
    y_axis_combined: true
    show_null_points: true
    interpolation: linear
    size_by_field: QueryStats_Minute_Interval.avg_all_failed_average_latency_seconds
    hidden_series: []
    series_types: {}
    series_colors:
      QueryStats_Minute_Interval.avg_all_failed_average_latency_seconds: "#EA4335"
    series_labels:
      QueryStats_Minute_Interval.avg_all_failed_average_latency_seconds: Avg. Latency
        (failed)
      QueryStats_Minute_Interval.avg_latency_seconds: Avg Latency (successful)
    series_point_styles: {}
    swap_axes: false
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
    hidden_fields:
    listen:
      Text: QueryStats_Minute_Interval.text
    row: 0
    col: 0
    width: 8
    height: 6
  - title: Execution Count Trend
    name: Execution Count Trend
    model: spanner_monitoring
    explore: QueryStats_Minute_Interval
    type: looker_column
    fields: [QueryStats_Minute_Interval.count, QueryStats_Minute_Interval.failed_execution_count,
      QueryStats_Minute_Interval.timed_out_execution_count, QueryStats_Minute_Interval.interval_end_date]
    fill_fields: [QueryStats_Minute_Interval.interval_end_date]
    sorts: [QueryStats_Minute_Interval.interval_end_date desc]
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
      collection_id: 1297ec12-86a5-4ae0-9dfc-82de70b3806a
      palette_id: 93f8aeb4-3f4a-4cd7-8fee-88c3417516a1
      options:
        steps: 5
    size_by_field: ''
    limit_displayed_rows_values:
      show_hide: hide
      first_last: first
      num_rows: 0
    hidden_series: []
    series_types: {}
    series_colors: {}
    show_dropoff: false
    swap_axes: true
    show_null_points: true
    interpolation: linear
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
    map: usa
    map_projection: ''
    up_color: "#1A73E8"
    down_color: "#12B5CB"
    total_color: "#E52592"
    leftAxisLabelVisible: false
    leftAxisLabel: ''
    rightAxisLabelVisible: false
    rightAxisLabel: ''
    smoothedBars: false
    orientation: automatic
    labelPosition: left
    percentType: total
    percentPosition: inline
    valuePosition: right
    labelColorEnabled: false
    labelColor: "#FFF"
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
    listen:
      Text: QueryStats_Minute_Interval.text
    row: 0
    col: 8
    width: 8
    height: 6
  - title: New Tile
    name: New Tile
    model: spanner_monitoring
    explore: QueryStats_Minute_Interval
    type: single_value
    fields: [QueryStats_Minute_Interval.percentaage_failed_execution_count]
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
    color_application:
      collection_id: 1297ec12-86a5-4ae0-9dfc-82de70b3806a
      palette_id: 93f8aeb4-3f4a-4cd7-8fee-88c3417516a1
      options:
        steps: 5
    custom_color: "#f56776"
    single_value_title: Failed Execution %
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
    size_by_field: ''
    plot_size_by_field: false
    trellis: ''
    stacking: normal
    limit_displayed_rows: false
    limit_displayed_rows_values:
      show_hide: hide
      first_last: first
      num_rows: 0
    hidden_series: []
    legend_position: center
    series_types: {}
    point_style: circle
    series_colors: {}
    show_value_labels: false
    label_density: 25
    x_axis_scale: auto
    y_axis_combined: true
    ordering: none
    show_null_labels: false
    show_dropoff: false
    show_totals_labels: false
    show_silhouette: false
    totals_color: "#808080"
    swap_axes: true
    show_null_points: true
    interpolation: linear
    defaults_version: 1
    show_row_numbers: true
    transpose: false
    truncate_text: true
    hide_totals: false
    hide_row_totals: false
    size_to_fit: true
    table_theme: white
    header_text_alignment: left
    header_font_size: 12
    rows_font_size: 12
    map: usa
    map_projection: ''
    up_color: "#1A73E8"
    down_color: "#12B5CB"
    total_color: "#E52592"
    leftAxisLabelVisible: false
    leftAxisLabel: ''
    rightAxisLabelVisible: false
    rightAxisLabel: ''
    smoothedBars: false
    orientation: automatic
    labelPosition: left
    percentType: total
    percentPosition: inline
    valuePosition: right
    labelColorEnabled: false
    labelColor: "#FFF"
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
    listen:
      Text: QueryStats_Minute_Interval.text
    row: 6
    col: 8
    width: 4
    height: 3
  - title: Rows scanned vs Rows returned
    name: Rows scanned vs Rows returned
    model: spanner_monitoring
    explore: QueryStats_Minute_Interval
    type: looker_column
    fields: [QueryStats_Minute_Interval.avg_rows, QueryStats_Minute_Interval.avg_rows_scanned,
      QueryStats_Minute_Interval.interval_end_date]
    fill_fields: [QueryStats_Minute_Interval.interval_end_date]
    sorts: [QueryStats_Minute_Interval.interval_end_date desc]
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
      collection_id: ed5756e2-1ba8-4233-97d2-d565e309c03b
      palette_id: ff31218a-4f9d-493c-ade2-22266f5934b8
      options:
        steps: 5
    y_axes: [{label: '', orientation: left, series: [{axisId: QueryStats_Minute_Interval.avg_rows,
            id: QueryStats_Minute_Interval.avg_rows, name: Average Rows}, {axisId: QueryStats_Minute_Interval.avg_rows_scanned,
            id: QueryStats_Minute_Interval.avg_rows_scanned, name: Average Rows Scanned}],
        showLabels: true, showValues: true, unpinAxis: false, tickDensity: default,
        tickDensityCustom: 5, type: linear}]
    size_by_field: QueryStats_Minute_Interval.avg_rows
    limit_displayed_rows_values:
      show_hide: hide
      first_last: first
      num_rows: 0
    hidden_series: []
    hide_legend: false
    series_types:
      QueryStats_Minute_Interval.avg_rows: line
    series_colors: {}
    series_point_styles: {}
    show_dropoff: false
    swap_axes: false
    show_null_points: true
    custom_color_enabled: true
    custom_color: "#f56776"
    show_single_value_title: true
    single_value_title: ''
    show_comparison: false
    comparison_type: value
    comparison_reverse_colors: false
    show_comparison_label: true
    enable_conditional_formatting: false
    conditional_formatting_include_totals: false
    conditional_formatting_include_nulls: false
    interpolation: linear
    defaults_version: 1
    show_row_numbers: true
    transpose: false
    truncate_text: true
    hide_totals: false
    hide_row_totals: false
    size_to_fit: true
    table_theme: white
    header_text_alignment: left
    header_font_size: 12
    rows_font_size: 12
    map: usa
    map_projection: ''
    up_color: "#1A73E8"
    down_color: "#12B5CB"
    total_color: "#E52592"
    leftAxisLabelVisible: false
    leftAxisLabel: ''
    rightAxisLabelVisible: false
    rightAxisLabel: ''
    smoothedBars: false
    orientation: automatic
    labelPosition: left
    percentType: total
    percentPosition: inline
    valuePosition: right
    labelColorEnabled: false
    labelColor: "#FFF"
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
    listen:
      Text: QueryStats_Minute_Interval.text
    row: 6
    col: 0
    width: 8
    height: 6
  - title: Bytes returned over Time
    name: Bytes returned over Time
    model: spanner_monitoring
    explore: QueryStats_Minute_Interval
    type: looker_line
    fields: [QueryStats_Minute_Interval.interval_end_time, QueryStats_Minute_Interval.avg_bytes]
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
      collection_id: ed5756e2-1ba8-4233-97d2-d565e309c03b
      palette_id: ff31218a-4f9d-493c-ade2-22266f5934b8
      options:
        steps: 5
    y_axes: [{label: '', orientation: left, series: [{axisId: QueryStats_Minute_Interval.avg_rows,
            id: QueryStats_Minute_Interval.avg_rows, name: Average Rows}, {axisId: QueryStats_Minute_Interval.avg_rows_scanned,
            id: QueryStats_Minute_Interval.avg_rows_scanned, name: Average Rows Scanned}],
        showLabels: true, showValues: true, unpinAxis: false, tickDensity: default,
        tickDensityCustom: 5, type: linear}]
    size_by_field: QueryStats_Minute_Interval.avg_rows
    limit_displayed_rows_values:
      show_hide: hide
      first_last: first
      num_rows: 0
    hidden_series: []
    hide_legend: false
    series_types: {}
    series_colors:
      QueryStats_Minute_Interval.avg_bytes: "#35ADDC"
    swap_axes: false
    ordering: none
    show_null_labels: false
    show_dropoff: false
    show_totals_labels: false
    show_silhouette: false
    totals_color: "#808080"
    custom_color_enabled: true
    custom_color: "#f56776"
    show_single_value_title: true
    single_value_title: ''
    show_comparison: false
    comparison_type: value
    comparison_reverse_colors: false
    show_comparison_label: true
    enable_conditional_formatting: false
    conditional_formatting_include_totals: false
    conditional_formatting_include_nulls: false
    defaults_version: 1
    show_row_numbers: true
    transpose: false
    truncate_text: true
    hide_totals: false
    hide_row_totals: false
    size_to_fit: true
    table_theme: white
    header_text_alignment: left
    header_font_size: 12
    rows_font_size: 12
    map: usa
    map_projection: ''
    up_color: "#1A73E8"
    down_color: "#12B5CB"
    total_color: "#E52592"
    leftAxisLabelVisible: false
    leftAxisLabel: ''
    rightAxisLabelVisible: false
    rightAxisLabel: ''
    smoothedBars: false
    orientation: automatic
    labelPosition: left
    percentType: total
    percentPosition: inline
    valuePosition: right
    labelColorEnabled: false
    labelColor: "#FFF"
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
    listen:
      Text: QueryStats_Minute_Interval.text
    row: 0
    col: 16
    width: 8
    height: 6
  - title: CPU seconds over Time
    name: CPU seconds over Time
    model: spanner_monitoring
    explore: QueryStats_Minute_Interval
    type: looker_line
    fields: [QueryStats_Minute_Interval.interval_end_time, QueryStats_Minute_Interval.avg_cpu_seconds]
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
      collection_id: 7c79334a-9912-4ca1-be6a-35756782ae09
      palette_id: de0bdb92-9455-489c-afa7-f0e0fdc76078
      options:
        steps: 5
    y_axes: [{label: '', orientation: left, series: [{axisId: QueryStats_Minute_Interval.avg_rows,
            id: QueryStats_Minute_Interval.avg_rows, name: Average Rows}, {axisId: QueryStats_Minute_Interval.avg_rows_scanned,
            id: QueryStats_Minute_Interval.avg_rows_scanned, name: Average Rows Scanned}],
        showLabels: true, showValues: true, unpinAxis: false, tickDensity: default,
        tickDensityCustom: 5, type: linear}]
    size_by_field: QueryStats_Minute_Interval.avg_rows
    limit_displayed_rows_values:
      show_hide: hide
      first_last: first
      num_rows: 0
    hidden_series: []
    hide_legend: false
    series_types: {}
    series_colors:
      QueryStats_Minute_Interval.avg_bytes: "#35ADDC"
    swap_axes: false
    ordering: none
    show_null_labels: false
    show_dropoff: false
    show_totals_labels: false
    show_silhouette: false
    totals_color: "#808080"
    custom_color_enabled: true
    custom_color: "#f56776"
    show_single_value_title: true
    single_value_title: ''
    show_comparison: false
    comparison_type: value
    comparison_reverse_colors: false
    show_comparison_label: true
    enable_conditional_formatting: false
    conditional_formatting_include_totals: false
    conditional_formatting_include_nulls: false
    defaults_version: 1
    show_row_numbers: true
    transpose: false
    truncate_text: true
    hide_totals: false
    hide_row_totals: false
    size_to_fit: true
    table_theme: white
    header_text_alignment: left
    header_font_size: 12
    rows_font_size: 12
    map: usa
    map_projection: ''
    up_color: "#1A73E8"
    down_color: "#12B5CB"
    total_color: "#E52592"
    leftAxisLabelVisible: false
    leftAxisLabel: ''
    rightAxisLabelVisible: false
    rightAxisLabel: ''
    smoothedBars: false
    orientation: automatic
    labelPosition: left
    percentType: total
    percentPosition: inline
    valuePosition: right
    labelColorEnabled: false
    labelColor: "#FFF"
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
    listen:
      Text: QueryStats_Minute_Interval.text
    row: 6
    col: 16
    width: 8
    height: 6
  - title: New Tile
    name: New Tile (2)
    model: spanner_monitoring
    explore: QueryStats_Minute_Interval
    type: single_value
    fields: [QueryStats_Minute_Interval.failed_execution_count, QueryStats_Minute_Interval.interval_end_time]
    filters:
      QueryStats_Minute_Interval.interval_end_time: 6 hours
    sorts: [QueryStats_Minute_Interval.interval_end_time desc]
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
    color_application:
      collection_id: 7c79334a-9912-4ca1-be6a-35756782ae09
      palette_id: de0bdb92-9455-489c-afa7-f0e0fdc76078
      options:
        steps: 5
    custom_color: "#b926f5"
    single_value_title: Failed Executions ( Last 6 hours)
    x_axis_gridlines: true
    y_axis_gridlines: true
    show_view_names: false
    y_axes: [{label: '', orientation: left, series: [{axisId: QueryStats_Minute_Interval.avg_rows,
            id: QueryStats_Minute_Interval.avg_rows, name: Average Rows}, {axisId: QueryStats_Minute_Interval.avg_rows_scanned,
            id: QueryStats_Minute_Interval.avg_rows_scanned, name: Average Rows Scanned}],
        showLabels: true, showValues: true, unpinAxis: false, tickDensity: default,
        tickDensityCustom: 5, type: linear}]
    show_y_axis_labels: true
    show_y_axis_ticks: true
    y_axis_tick_density: default
    y_axis_tick_density_custom: 5
    show_x_axis_label: true
    show_x_axis_ticks: true
    y_axis_scale_mode: linear
    x_axis_reversed: false
    y_axis_reversed: false
    size_by_field: QueryStats_Minute_Interval.avg_rows
    plot_size_by_field: false
    trellis: ''
    stacking: ''
    limit_displayed_rows: false
    limit_displayed_rows_values:
      show_hide: hide
      first_last: first
      num_rows: 0
    hidden_series: []
    hide_legend: false
    legend_position: center
    series_types: {}
    point_style: none
    series_colors:
      QueryStats_Minute_Interval.avg_bytes: "#35ADDC"
    show_value_labels: false
    label_density: 25
    x_axis_scale: auto
    y_axis_combined: true
    swap_axes: false
    show_null_points: true
    interpolation: linear
    ordering: none
    show_null_labels: false
    show_dropoff: false
    show_totals_labels: false
    show_silhouette: false
    totals_color: "#808080"
    defaults_version: 1
    show_row_numbers: true
    transpose: false
    truncate_text: true
    hide_totals: false
    hide_row_totals: false
    size_to_fit: true
    table_theme: white
    header_text_alignment: left
    header_font_size: 12
    rows_font_size: 12
    map: usa
    map_projection: ''
    up_color: "#1A73E8"
    down_color: "#12B5CB"
    total_color: "#E52592"
    leftAxisLabelVisible: false
    leftAxisLabel: ''
    rightAxisLabelVisible: false
    rightAxisLabel: ''
    smoothedBars: false
    orientation: automatic
    labelPosition: left
    percentType: total
    percentPosition: inline
    valuePosition: right
    labelColorEnabled: false
    labelColor: "#FFF"
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
    hidden_fields: []
    listen:
      Text: QueryStats_Minute_Interval.text
    row: 6
    col: 12
    width: 4
    height: 3
  - title: New Tile
    name: New Tile (3)
    model: spanner_monitoring
    explore: QueryStats_Minute_Interval
    type: single_value
    fields: [QueryStats_Minute_Interval.count, QueryStats_Minute_Interval.interval_end_time]
    filters:
      QueryStats_Minute_Interval.interval_end_time: 6 hours
    sorts: [QueryStats_Minute_Interval.interval_end_time desc]
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
    custom_color: "#12B5CB"
    single_value_title: Total Executions (Last 6 hours)
    series_types: {}
    defaults_version: 1
    listen:
      Text: QueryStats_Minute_Interval.text
    row: 9
    col: 8
    width: 4
    height: 3
  - title: New Tile
    name: New Tile (4)
    model: spanner_monitoring
    explore: QueryStats_Minute_Interval
    type: single_value
    fields: [QueryStats_Minute_Interval.interval_end_time, QueryStats_Minute_Interval.avg_latency_seconds]
    filters:
      QueryStats_Minute_Interval.interval_end_time: 6 hours
    sorts: [QueryStats_Minute_Interval.interval_end_time desc]
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
    custom_color: "#F9AB00"
    single_value_title: Avg Latency (Last 6 hours)
    series_types: {}
    defaults_version: 1
    listen:
      Text: QueryStats_Minute_Interval.text
    row: 9
    col: 12
    width: 4
    height: 3
  - title: Query Histogram
    name: Query Histogram
    model: spanner_monitoring
    explore: QueryStats_Minute_Interval
    type: looker_boxplot
    fields: [QueryStats_Minute_Interval.interval_end_date, QueryStats_Minute_Interval.avg_latency_seconds,
      QueryStats_Minute_Interval.avg_cpu_seconds]
    fill_fields: [QueryStats_Minute_Interval.interval_end_date]
    sorts: [QueryStats_Minute_Interval.interval_end_date desc]
    limit: 500
    column_limit: 50
    x_axis_gridlines: true
    y_axis_gridlines: true
    show_view_names: false
    show_y_axis_labels: true
    show_y_axis_ticks: true
    y_axis_tick_density: custom
    y_axis_tick_density_custom: 25
    show_x_axis_label: true
    show_x_axis_ticks: true
    y_axis_scale_mode: linear
    x_axis_reversed: false
    y_axis_reversed: false
    plot_size_by_field: false
    color_application:
      collection_id: 7c56cc21-66e4-41c9-81ce-a60e1c3967b2
      palette_id: 5d189dfc-4f46-46f3-822b-bfb0b61777b1
      options:
        steps: 5
        reverse: true
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
    defaults_version: 1
    series_types: {}
    hidden_fields: []
    hidden_points_if_no: []
    series_labels: {}
    show_row_numbers: true
    truncate_column_names: false
    hide_totals: false
    hide_row_totals: false
    table_theme: editable
    enable_conditional_formatting: false
    conditional_formatting_include_totals: false
    conditional_formatting_include_nulls: false
    listen:
      Text: QueryStats_Minute_Interval.text
    row: 12
    col: 0
    width: 12
    height: 7
  filters:
  - name: Text
    title: Text
    type: field_filter
    default_value: ''
    allow_multiple_values: true
    required: false
    ui_config:
      type: tag_list
      display: popover
      options: []
    model: spanner_monitoring
    explore: QueryStats_Minute_Interval
    listens_to_filters: []
    field: QueryStats_Minute_Interval.text
