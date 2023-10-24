import 'package:bms/app/data/app_colors.dart';
import 'package:flutter/material.dart';
import 'package:pluto_grid/pluto_grid.dart';

class PlutoGridDemo extends StatefulWidget {
  final List<PlutoColumn> columns;
  final List<PlutoRow> rows;
  final bool isReadOnly;
  const PlutoGridDemo(this.columns, this.rows, this.isReadOnly, {super.key});

  @override
  State<PlutoGridDemo> createState() => _PlutoGridDemoState();
}

class _PlutoGridDemoState extends State<PlutoGridDemo> {
  /// [PlutoGridStateManager] has many methods and properties to dynamically manipulate the grid.
  /// You can manipulate the grid dynamically at runtime by passing this through the [onLoaded] callback.
  late final PlutoGridStateManager stateManager;
  @override
  Widget build(BuildContext context) {
    return PlutoGrid(
      columns: widget.columns,
      rows: widget.rows,
      mode: widget.isReadOnly ? PlutoGridMode.readOnly : PlutoGridMode.normal,

      // columnGroups: columnGroups,
      onLoaded: (PlutoGridOnLoadedEvent event) {
        stateManager = event.stateManager;
        stateManager.setShowColumnFilter(false);
      },
      onChanged: (PlutoGridOnChangedEvent event) {
        // print(event);
      },
      configuration: PlutoGridConfiguration(
        style: PlutoGridStyleConfig(
          enableGridBorderShadow: true,
          gridBorderColor: AppColors.lBlue,
          gridBorderRadius: BorderRadius.circular(10),
        ),
      ),
    );
  }
}
