- dashboard: transaction_details
  title: Transaction Details
  layout: newspaper
  preferred_viewer: dashboards
  elements:
  - title: New Tile
    name: New Tile
    model: spanner_monitoring
    explore: txn_stats_top_10minute
    type: single_value
    fields: [count_of_read_columns]
    limit: 500
    dynamic_fields: [{measure: count_of_read_columns, based_on: txn_stats_top_10minute__read_columns.read_columns,
        expression: '', label: Count of Read Columns, type: count_distinct, _kind_hint: measure,
        _type_hint: number}]
    custom_color_enabled: true
    show_single_value_title: true
    show_comparison: false
    comparison_type: value
    comparison_reverse_colors: false
    show_comparison_label: true
    enable_conditional_formatting: false
    conditional_formatting_include_totals: false
    conditional_formatting_include_nulls: false
    custom_color: "#E52592"
    single_value_title: No. of columns read
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
    ordering: none
    show_null_labels: false
    show_totals_labels: false
    show_silhouette: false
    totals_color: "#808080"
    defaults_version: 1
    series_types: {}
    listen:
      Fprint: txn_stats_top_10minute.fprint
      Interval End Time: txn_stats_top_10minute.interval_end_time
    row: 0
    col: 0
    width: 4
    height: 2
  - title: New Tile
    name: New Tile (2)
    model: spanner_monitoring
    explore: txn_stats_top_10minute
    type: single_value
    fields: [count_of_write_constructive_columns]
    limit: 500
    dynamic_fields: [{measure: count_of_read_columns, based_on: txn_stats_top_10minute__read_columns.read_columns,
        expression: '', label: Count of Read Columns, type: count_distinct, _kind_hint: measure,
        _type_hint: number}, {measure: count_of_write_constructive_columns, based_on: txn_stats_top_10minute__write_constructive_columns.write_constructive_columns,
        expression: '', label: Count of Write Constructive Columns, type: count_distinct,
        _kind_hint: measure, _type_hint: number}]
    custom_color_enabled: true
    show_single_value_title: true
    show_comparison: false
    comparison_type: value
    comparison_reverse_colors: false
    show_comparison_label: true
    enable_conditional_formatting: false
    conditional_formatting_include_totals: false
    conditional_formatting_include_nulls: false
    custom_color: "#E8710A"
    single_value_title: No. of columns written
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
    ordering: none
    show_null_labels: false
    show_totals_labels: false
    show_silhouette: false
    totals_color: "#808080"
    defaults_version: 1
    series_types: {}
    listen:
      Fprint: txn_stats_top_10minute.fprint
      Interval End Time: txn_stats_top_10minute.interval_end_time
    row: 0
    col: 4
    width: 4
    height: 2
  - title: New Tile
    name: New Tile (3)
    model: spanner_monitoring
    explore: txn_stats_top_10minute
    type: single_value
    fields: [txn_stats_top_10minute.commit_attempt_count]
    limit: 500
    dynamic_fields: [{measure: count_of_read_columns, based_on: txn_stats_top_10minute__read_columns.read_columns,
        expression: '', label: Count of Read Columns, type: count_distinct, _kind_hint: measure,
        _type_hint: number}, {measure: count_of_write_constructive_columns, based_on: txn_stats_top_10minute__write_constructive_columns.write_constructive_columns,
        expression: '', label: Count of Write Constructive Columns, type: count_distinct,
        _kind_hint: measure, _type_hint: number}]
    custom_color_enabled: true
    show_single_value_title: true
    show_comparison: false
    comparison_type: value
    comparison_reverse_colors: false
    show_comparison_label: true
    enable_conditional_formatting: true
    conditional_formatting_include_totals: false
    conditional_formatting_include_nulls: false
    custom_color: "#022422"
    single_value_title: Commit Attempts
    conditional_formatting: [{type: equal to, value: !!null '', background_color: "#1A73E8",
        font_color: !!null '', color_application: {collection_id: 7c56cc21-66e4-41c9-81ce-a60e1c3967b2,
          palette_id: 56d0c358-10a0-4fd6-aa0b-b117bef527ab}, bold: false, italic: false,
        strikethrough: false, fields: !!null ''}]
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
    ordering: none
    show_null_labels: false
    show_totals_labels: false
    show_silhouette: false
    totals_color: "#808080"
    defaults_version: 1
    series_types: {}
    listen:
      Fprint: txn_stats_top_10minute.fprint
      Interval End Time: txn_stats_top_10minute.interval_end_time
    row: 2
    col: 0
    width: 4
    height: 2
  - title: New Tile
    name: New Tile (4)
    model: spanner_monitoring
    explore: txn_stats_top_10minute
    type: single_value
    fields: [txn_stats_top_10minute.commit_abort_count]
    limit: 500
    dynamic_fields: [{measure: count_of_read_columns, based_on: txn_stats_top_10minute__read_columns.read_columns,
        expression: '', label: Count of Read Columns, type: count_distinct, _kind_hint: measure,
        _type_hint: number}, {measure: count_of_write_constructive_columns, based_on: txn_stats_top_10minute__write_constructive_columns.write_constructive_columns,
        expression: '', label: Count of Write Constructive Columns, type: count_distinct,
        _kind_hint: measure, _type_hint: number}]
    custom_color_enabled: true
    show_single_value_title: true
    show_comparison: false
    comparison_type: value
    comparison_reverse_colors: false
    show_comparison_label: true
    enable_conditional_formatting: true
    conditional_formatting_include_totals: false
    conditional_formatting_include_nulls: false
    custom_color: "#022422"
    single_value_title: Commit Aborts
    conditional_formatting: [{type: equal to, value: !!null '', background_color: "#1A73E8",
        font_color: !!null '', color_application: {collection_id: 7c56cc21-66e4-41c9-81ce-a60e1c3967b2,
          palette_id: 56d0c358-10a0-4fd6-aa0b-b117bef527ab}, bold: false, italic: false,
        strikethrough: false, fields: !!null ''}]
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
    ordering: none
    show_null_labels: false
    show_totals_labels: false
    show_silhouette: false
    totals_color: "#808080"
    defaults_version: 1
    series_types: {}
    listen:
      Fprint: txn_stats_top_10minute.fprint
      Interval End Time: txn_stats_top_10minute.interval_end_time
    row: 2
    col: 4
    width: 4
    height: 2
  - title: New Tile
    name: New Tile (5)
    model: spanner_monitoring
    explore: txn_stats_top_10minute
    type: single_value
    fields: [txn_stats_top_10minute.avg_bytes]
    limit: 500
    dynamic_fields: [{measure: count_of_read_columns, based_on: txn_stats_top_10minute__read_columns.read_columns,
        expression: '', label: Count of Read Columns, type: count_distinct, _kind_hint: measure,
        _type_hint: number}, {measure: count_of_write_constructive_columns, based_on: txn_stats_top_10minute__write_constructive_columns.write_constructive_columns,
        expression: '', label: Count of Write Constructive Columns, type: count_distinct,
        _kind_hint: measure, _type_hint: number}]
    custom_color_enabled: true
    show_single_value_title: true
    show_comparison: false
    comparison_type: value
    comparison_reverse_colors: false
    show_comparison_label: true
    enable_conditional_formatting: true
    conditional_formatting_include_totals: false
    conditional_formatting_include_nulls: false
    custom_color: "#022422"
    single_value_title: Avg bytes written
    conditional_formatting: [{type: equal to, value: !!null '', background_color: "#1A73E8",
        font_color: !!null '', color_application: {collection_id: 7c56cc21-66e4-41c9-81ce-a60e1c3967b2,
          palette_id: 56d0c358-10a0-4fd6-aa0b-b117bef527ab}, bold: false, italic: false,
        strikethrough: false, fields: !!null ''}]
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
    ordering: none
    show_null_labels: false
    show_totals_labels: false
    show_silhouette: false
    totals_color: "#808080"
    defaults_version: 1
    series_types: {}
    listen:
      Fprint: txn_stats_top_10minute.fprint
      Interval End Time: txn_stats_top_10minute.interval_end_time
    row: 0
    col: 8
    width: 4
    height: 2
  - title: New Tile
    name: New Tile (6)
    model: spanner_monitoring
    explore: txn_stats_top_10minute
    type: single_value
    fields: [txn_stats_top_10minute.avg_participants]
    limit: 500
    dynamic_fields: [{measure: count_of_read_columns, based_on: txn_stats_top_10minute__read_columns.read_columns,
        expression: '', label: Count of Read Columns, type: count_distinct, _kind_hint: measure,
        _type_hint: number}, {measure: count_of_write_constructive_columns, based_on: txn_stats_top_10minute__write_constructive_columns.write_constructive_columns,
        expression: '', label: Count of Write Constructive Columns, type: count_distinct,
        _kind_hint: measure, _type_hint: number}]
    custom_color_enabled: true
    show_single_value_title: true
    show_comparison: false
    comparison_type: value
    comparison_reverse_colors: false
    show_comparison_label: true
    enable_conditional_formatting: true
    conditional_formatting_include_totals: false
    conditional_formatting_include_nulls: false
    custom_color: "#022422"
    single_value_title: Avg no. of participants
    conditional_formatting: [{type: equal to, value: !!null '', background_color: "#1A73E8",
        font_color: !!null '', color_application: {collection_id: 7c56cc21-66e4-41c9-81ce-a60e1c3967b2,
          palette_id: 56d0c358-10a0-4fd6-aa0b-b117bef527ab}, bold: false, italic: false,
        strikethrough: false, fields: !!null ''}]
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
    ordering: none
    show_null_labels: false
    show_totals_labels: false
    show_silhouette: false
    totals_color: "#808080"
    defaults_version: 1
    series_types: {}
    listen:
      Fprint: txn_stats_top_10minute.fprint
      Interval End Time: txn_stats_top_10minute.interval_end_time
    row: 2
    col: 8
    width: 4
    height: 2
  - title: Read Vs Write Latency
    name: Read Vs Write Latency
    model: spanner_monitoring
    explore: txn_stats_top_10minute
    type: looker_bar
    fields: [txn_stats_top_10minute.avg_read_latency_seconds, txn_stats_top_10minute.avg_commit_latency_seconds]
    limit: 500
    dynamic_fields: [{measure: count_of_read_columns, based_on: txn_stats_top_10minute__read_columns.read_columns,
        expression: '', label: Count of Read Columns, type: count_distinct, _kind_hint: measure,
        _type_hint: number}, {measure: count_of_write_constructive_columns, based_on: txn_stats_top_10minute__write_constructive_columns.write_constructive_columns,
        expression: '', label: Count of Write Constructive Columns, type: count_distinct,
        _kind_hint: measure, _type_hint: number}]
    x_axis_gridlines: false
    y_axis_gridlines: true
    show_view_names: false
    show_y_axis_labels: true
    show_y_axis_ticks: true
    y_axis_tick_density: default
    y_axis_tick_density_custom: 5
    show_x_axis_label: true
    show_x_axis_ticks: false
    y_axis_scale_mode: linear
    x_axis_reversed: false
    y_axis_reversed: false
    plot_size_by_field: false
    trellis: ''
    stacking: percent
    limit_displayed_rows: false
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
    color_application:
      collection_id: 7c56cc21-66e4-41c9-81ce-a60e1c3967b2
      palette_id: c65a64ce-7f46-476b-a320-41345941e5b1
      options:
        steps: 5
    y_axes: [{label: '', orientation: bottom, series: [{axisId: txn_stats_top_10minute.avg_read_latency_seconds,
            id: txn_stats_top_10minute.avg_read_latency_seconds, name: Avg Read Latency
              Seconds}, {axisId: txn_stats_top_10minute.avg_commit_latency_seconds,
            id: txn_stats_top_10minute.avg_commit_latency_seconds, name: Avg Commit
              Latency Seconds}], showLabels: false, showValues: false, unpinAxis: false,
        tickDensity: default, tickDensityCustom: 5, type: linear}]
    series_types: {}
    series_colors: {}
    custom_color_enabled: true
    custom_color: "#022422"
    show_single_value_title: true
    single_value_title: Avg no. of participants
    show_comparison: false
    comparison_type: value
    comparison_reverse_colors: false
    show_comparison_label: true
    enable_conditional_formatting: true
    conditional_formatting: [{type: equal to, value: !!null '', background_color: "#1A73E8",
        font_color: !!null '', color_application: {collection_id: 7c56cc21-66e4-41c9-81ce-a60e1c3967b2,
          palette_id: 56d0c358-10a0-4fd6-aa0b-b117bef527ab}, bold: false, italic: false,
        strikethrough: false, fields: !!null ''}]
    conditional_formatting_include_totals: false
    conditional_formatting_include_nulls: false
    defaults_version: 1
    listen:
      Fprint: txn_stats_top_10minute.fprint
      Interval End Time: txn_stats_top_10minute.interval_end_time
    row: 3
    col: 12
    width: 12
    height: 4
  - title: READ COLUMNS
    name: READ COLUMNS
    model: spanner_monitoring
    explore: txn_stats_top_10minute
    type: looker_grid
    fields: [txn_stats_top_10minute__read_columns.read_columns]
    sorts: [txn_stats_top_10minute__read_columns.read_columns desc]
    limit: 500
    dynamic_fields: [{measure: count_of_read_columns, based_on: txn_stats_top_10minute__read_columns.read_columns,
        expression: '', label: Count of Read Columns, type: count_distinct, _kind_hint: measure,
        _type_hint: number}, {measure: count_of_write_constructive_columns, based_on: txn_stats_top_10minute__write_constructive_columns.write_constructive_columns,
        expression: '', label: Count of Write Constructive Columns, type: count_distinct,
        _kind_hint: measure, _type_hint: number}]
    show_view_names: false
    show_row_numbers: true
    transpose: false
    truncate_text: true
    hide_totals: false
    hide_row_totals: false
    size_to_fit: true
    table_theme: unstyled
    limit_displayed_rows: false
    enable_conditional_formatting: true
    header_text_alignment: left
    header_font_size: '12'
    rows_font_size: '12'
    conditional_formatting_include_totals: false
    conditional_formatting_include_nulls: false
    color_application:
      collection_id: 7c56cc21-66e4-41c9-81ce-a60e1c3967b2
      palette_id: c65a64ce-7f46-476b-a320-41345941e5b1
      options:
        steps: 5
    show_sql_query_menu_options: false
    show_totals: true
    show_row_totals: true
    series_labels:
      txn_stats_top_10minute__read_columns.read_columns: Read Columns
    series_column_widths:
      txn_stats_top_10minute__read_columns.read_columns: 279
    series_text_format:
      txn_stats_top_10minute__read_columns.read_columns:
        fg_color: "#E52592"
        align: center
    limit_displayed_rows_values:
      show_hide: hide
      first_last: first
      num_rows: 0
    conditional_formatting: [{type: equal to, value: !!null '', background_color: "#1A73E8",
        font_color: !!null '', color_application: {collection_id: 7c56cc21-66e4-41c9-81ce-a60e1c3967b2,
          palette_id: 56d0c358-10a0-4fd6-aa0b-b117bef527ab}, bold: false, italic: false,
        strikethrough: false, fields: !!null ''}]
    x_axis_gridlines: false
    y_axis_gridlines: true
    y_axes: [{label: '', orientation: bottom, series: [{axisId: txn_stats_top_10minute.avg_read_latency_seconds,
            id: txn_stats_top_10minute.avg_read_latency_seconds, name: Avg Read Latency
              Seconds}, {axisId: txn_stats_top_10minute.avg_commit_latency_seconds,
            id: txn_stats_top_10minute.avg_commit_latency_seconds, name: Avg Commit
              Latency Seconds}], showLabels: false, showValues: false, unpinAxis: false,
        tickDensity: default, tickDensityCustom: 5, type: linear}]
    show_y_axis_labels: true
    show_y_axis_ticks: true
    y_axis_tick_density: default
    y_axis_tick_density_custom: 5
    show_x_axis_label: true
    show_x_axis_ticks: false
    y_axis_scale_mode: linear
    x_axis_reversed: false
    y_axis_reversed: false
    plot_size_by_field: false
    trellis: ''
    stacking: percent
    legend_position: center
    series_types: {}
    point_style: none
    series_colors: {}
    show_value_labels: false
    label_density: 25
    x_axis_scale: auto
    y_axis_combined: true
    ordering: none
    show_null_labels: false
    show_totals_labels: false
    show_silhouette: false
    totals_color: "#808080"
    custom_color_enabled: true
    custom_color: "#022422"
    show_single_value_title: true
    single_value_title: Avg no. of participants
    show_comparison: false
    comparison_type: value
    comparison_reverse_colors: false
    show_comparison_label: true
    defaults_version: 1
    show_null_points: true
    hidden_fields: []
    hidden_points_if_no: []
    title_hidden: true
    listen:
      Fprint: txn_stats_top_10minute.fprint
      Interval End Time: txn_stats_top_10minute.interval_end_time
    row: 7
    col: 12
    width: 6
    height: 4
  - title: New Tile
    name: New Tile (7)
    model: spanner_monitoring
    explore: txn_stats_top_10minute
    type: looker_grid
    fields: [txn_stats_top_10minute__write_constructive_columns.write_constructive_columns]
    sorts: [txn_stats_top_10minute__write_constructive_columns.write_constructive_columns
        desc]
    limit: 500
    dynamic_fields: [{measure: count_of_read_columns, based_on: txn_stats_top_10minute__read_columns.read_columns,
        expression: '', label: Count of Read Columns, type: count_distinct, _kind_hint: measure,
        _type_hint: number}, {measure: count_of_write_constructive_columns, based_on: txn_stats_top_10minute__write_constructive_columns.write_constructive_columns,
        expression: '', label: Count of Write Constructive Columns, type: count_distinct,
        _kind_hint: measure, _type_hint: number}]
    show_view_names: false
    show_row_numbers: true
    transpose: false
    truncate_text: true
    hide_totals: false
    hide_row_totals: false
    size_to_fit: true
    table_theme: transparent
    limit_displayed_rows: false
    enable_conditional_formatting: true
    header_text_alignment: left
    header_font_size: '12'
    rows_font_size: '12'
    conditional_formatting_include_totals: false
    conditional_formatting_include_nulls: false
    color_application:
      collection_id: 7c56cc21-66e4-41c9-81ce-a60e1c3967b2
      palette_id: c65a64ce-7f46-476b-a320-41345941e5b1
      options:
        steps: 5
    show_sql_query_menu_options: false
    show_totals: true
    show_row_totals: true
    series_labels:
      txn_stats_top_10minute__write_constructive_columns.write_constructive_columns: Write
        Columns
    series_text_format:
      txn_stats_top_10minute__read_columns.read_columns:
        fg_color: "#E52592"
        align: center
      txn_stats_top_10minute__write_constructive_columns.write_constructive_columns:
        fg_color: "#1A73E8"
    conditional_formatting: [{type: equal to, value: !!null '', background_color: "#1A73E8",
        font_color: !!null '', color_application: {collection_id: 7c56cc21-66e4-41c9-81ce-a60e1c3967b2,
          palette_id: 56d0c358-10a0-4fd6-aa0b-b117bef527ab}, bold: false, italic: false,
        strikethrough: false, fields: !!null ''}]
    x_axis_gridlines: false
    y_axis_gridlines: true
    y_axes: [{label: '', orientation: bottom, series: [{axisId: txn_stats_top_10minute.avg_read_latency_seconds,
            id: txn_stats_top_10minute.avg_read_latency_seconds, name: Avg Read Latency
              Seconds}, {axisId: txn_stats_top_10minute.avg_commit_latency_seconds,
            id: txn_stats_top_10minute.avg_commit_latency_seconds, name: Avg Commit
              Latency Seconds}], showLabels: false, showValues: false, unpinAxis: false,
        tickDensity: default, tickDensityCustom: 5, type: linear}]
    show_y_axis_labels: true
    show_y_axis_ticks: true
    y_axis_tick_density: default
    y_axis_tick_density_custom: 5
    show_x_axis_label: true
    show_x_axis_ticks: false
    y_axis_scale_mode: linear
    x_axis_reversed: false
    y_axis_reversed: false
    plot_size_by_field: false
    trellis: ''
    stacking: percent
    legend_position: center
    series_types: {}
    point_style: none
    series_colors: {}
    show_value_labels: false
    label_density: 25
    x_axis_scale: auto
    y_axis_combined: true
    ordering: none
    show_null_labels: false
    show_totals_labels: false
    show_silhouette: false
    totals_color: "#808080"
    custom_color_enabled: true
    custom_color: "#022422"
    show_single_value_title: true
    single_value_title: Avg no. of participants
    show_comparison: false
    comparison_type: value
    comparison_reverse_colors: false
    show_comparison_label: true
    defaults_version: 1
    show_null_points: true
    title_hidden: true
    listen:
      Fprint: txn_stats_top_10minute.fprint
      Interval End Time: txn_stats_top_10minute.interval_end_time
    row: 7
    col: 18
    width: 6
    height: 4
  - title: Lock Wait Trend
    name: Lock Wait Trend
    model: spanner_monitoring
    explore: txn_stats_top_10minute
    type: looker_scatter
    fields: [lock_stats_top_10_minute.interval_end_time, lock_stats_top_10_minute.lock_wait_seconds]
    sorts: [lock_stats_top_10_minute.interval_end_time desc]
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
    point_style: circle
    show_value_labels: false
    label_density: 25
    x_axis_scale: auto
    y_axis_combined: true
    show_null_points: true
    series_types: {}
    series_colors:
      lock_stats_top_10_minute.lock_wait_seconds: "#079c98"
    custom_color_enabled: true
    show_single_value_title: true
    value_format: 0.## \s
    show_comparison: false
    comparison_type: value
    comparison_reverse_colors: false
    show_comparison_label: true
    enable_conditional_formatting: false
    conditional_formatting_include_totals: false
    conditional_formatting_include_nulls: false
    interpolation: linear
    defaults_version: 1
    ordering: none
    show_null_labels: false
    show_totals_labels: false
    show_silhouette: false
    totals_color: "#808080"
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
    listen:
      Fprint: txn_stats_top_10minute.fprint
      Interval End Time: txn_stats_top_10minute.interval_end_time
    row: 4
    col: 0
    width: 12
    height: 8
  - title: Lock Wait vs Commit Latency Trend
    name: Lock Wait vs Commit Latency Trend
    model: spanner_monitoring
    explore: txn_stats_top_10minute
    type: looker_scatter
    fields: [lock_stats_top_10_minute.interval_end_time, lock_stats_top_10_minute.lock_wait_seconds,
      txn_stats_top_10minute.avg_commit_latency_seconds]
    sorts: [lock_stats_top_10_minute.interval_end_time desc]
    limit: 500
    column_limit: 50
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
    y_axes: [{label: '', orientation: left, series: [{axisId: lock_stats_top_10_minute.lock_wait_seconds,
            id: lock_stats_top_10_minute.lock_wait_seconds, name: Lock Wait Seconds}],
        showLabels: false, showValues: true, unpinAxis: false, tickDensity: default,
        tickDensityCustom: 5, type: linear}, {label: !!null '', orientation: right,
        series: [{axisId: txn_stats_top_10minute.avg_commit_latency_seconds, id: txn_stats_top_10minute.avg_commit_latency_seconds,
            name: Avg Commit Latency Seconds}], showLabels: false, showValues: true,
        unpinAxis: false, tickDensity: default, tickDensityCustom: 5, type: linear}]
    series_types: {}
    series_colors:
      lock_stats_top_10_minute.lock_wait_seconds: "#EA4335"
    custom_color_enabled: true
    show_single_value_title: true
    value_format: 0.## \s
    show_comparison: false
    comparison_type: value
    comparison_reverse_colors: false
    show_comparison_label: true
    enable_conditional_formatting: false
    conditional_formatting_include_totals: false
    conditional_formatting_include_nulls: false
    interpolation: linear
    defaults_version: 1
    ordering: none
    show_null_labels: false
    show_totals_labels: false
    show_silhouette: false
    totals_color: "#808080"
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
    listen:
      Fprint: txn_stats_top_10minute.fprint
      Interval End Time: txn_stats_top_10minute.interval_end_time
    row: 12
    col: 0
    width: 12
    height: 7
  - title: Tx Timestamp
    name: Tx Timestamp
    model: spanner_monitoring
    explore: txn_stats_top_10minute
    type: single_value
    fields: [lock_stats_top_10_minute.interval_end_time, txn_stats_top_10minute.fprint,
      txn_stats_top_10minute.interval_end_time]
    sorts: [lock_stats_top_10_minute.interval_end_time desc]
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
    series_types: {}
    series_colors:
      lock_stats_top_10_minute.lock_wait_seconds: "#079c98"
    value_format: 0.## \s
    interpolation: linear
    defaults_version: 1
    ordering: none
    show_null_labels: false
    show_totals_labels: false
    show_silhouette: false
    totals_color: "#808080"
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
    hidden_fields: [txn_stats_top_10minute.fprint, lock_stats_top_10_minute.interval_end_time]
    listen:
      Fprint: txn_stats_top_10minute.fprint
      Interval End Time: txn_stats_top_10minute.interval_end_time
    row: 0
    col: 12
    width: 12
    height: 3
  - title: Potential Transactions
    name: Potential Transactions
    model: spanner_monitoring
    explore: txn_stats_top_10minute
    type: looker_grid
    fields: [lock_stats_top_10_minute__sample_lock_requests.column, txn_stats_top_10minute__write_constructive_columns.write_constructive_columns,
      txn_stats_top_10minute.fprint, lock_stats_top_10_minute__sample_lock_requests.lock_mode]
    filters:
      lock_stats_top_10_minute__sample_lock_requests.lock_mode: Exclusive
    sorts: [lock_stats_top_10_minute__sample_lock_requests.column]
    limit: 500
    column_limit: 50
    show_view_names: false
    show_row_numbers: true
    transpose: false
    truncate_text: true
    hide_totals: false
    hide_row_totals: false
    size_to_fit: true
    table_theme: white
    limit_displayed_rows: false
    enable_conditional_formatting: false
    header_text_alignment: left
    header_font_size: 12
    rows_font_size: 12
    conditional_formatting_include_totals: false
    conditional_formatting_include_nulls: false
    custom_color_enabled: true
    show_single_value_title: true
    show_comparison: false
    comparison_type: value
    comparison_reverse_colors: false
    show_comparison_label: true
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
    point_style: circle
    show_value_labels: false
    label_density: 25
    x_axis_scale: auto
    y_axis_combined: true
    show_null_points: true
    series_types: {}
    series_colors:
      lock_stats_top_10_minute.lock_wait_seconds: "#079c98"
    value_format: 0.## \s
    interpolation: linear
    defaults_version: 1
    ordering: none
    show_null_labels: false
    show_totals_labels: false
    show_silhouette: false
    totals_color: "#808080"
    hidden_fields: []
    listen:
      Interval End Time: txn_stats_top_10minute.interval_end_time
    row: 11
    col: 12
    width: 12
    height: 8
  filters:
  - name: Fprint
    title: Fprint
    type: field_filter
    default_value: ''
    allow_multiple_values: true
    required: false
    ui_config:
      type: tag_list
      display: popover
      options: []
    model: spanner_monitoring
    explore: txn_stats_top_10minute
    listens_to_filters: []
    field: txn_stats_top_10minute.fprint
  - name: Interval End Time
    title: Interval End Time
    type: field_filter
    default_value: 1 month
    allow_multiple_values: true
    required: false
    ui_config:
      type: advanced
      display: popover
      options: []
    model: spanner_monitoring
    explore: txn_stats_top_10minute
    listens_to_filters: []
    field: txn_stats_top_10minute.interval_end_time
