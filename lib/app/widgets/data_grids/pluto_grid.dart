import 'package:bms/app/data/app_colors.dart';
import 'package:bms/app/widgets/data_grids/pluto_grid_controller.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:pluto_grid/pluto_grid.dart';

class PlutoGridDemo extends GetView<PlutoGridController> {
  final List<PlutoColumn> columns;
  final bool isReadOnly;

  const PlutoGridDemo(this.columns, this.isReadOnly, {super.key});

  @override
  Widget build(BuildContext context) {
    return Obx(() {
      return PlutoGrid(
        columns: columns,
        rows: controller.genRow(controller.rows.value),
        mode: isReadOnly ? PlutoGridMode.readOnly : PlutoGridMode.normal,

        // columnGroups: columnGroups,
        onLoaded: (PlutoGridOnLoadedEvent event) {
          event.stateManager;
        },
        configuration: PlutoGridConfiguration(
          columnSize: const PlutoGridColumnSizeConfig(
              autoSizeMode: PlutoAutoSizeMode.scale),
          style: PlutoGridStyleConfig(
            enableGridBorderShadow: true,
            gridBorderColor: AppColors.lBlue,
            gridBorderRadius: BorderRadius.circular(10),
          ),
        ),
        createHeader: (stateManager) => _Header(
          stateManager: stateManager,
          read: isReadOnly,
        ),
      );
    });
  }
}

class _Header extends StatefulWidget {
  const _Header({
    required this.stateManager,
    required this.read,
    Key? key,
  }) : super(key: key);

  final PlutoGridStateManager stateManager;
  final bool read;

  @override
  State<_Header> createState() => _HeaderState();
}

class _HeaderState extends State<_Header> {
  int addCount = 1;

  int addedCount = 0;

  PlutoGridSelectingMode gridSelectingMode = PlutoGridSelectingMode.row;

  @override
  void initState() {
    super.initState();

    WidgetsBinding.instance.addPostFrameCallback((timeStamp) {
      widget.stateManager.setSelectingMode(gridSelectingMode);
    });
  }

  void handleAddColumns() {
    final List<PlutoColumn> addedColumns = [];

    for (var i = 0; i < addCount; i += 1) {
      addedColumns.add(
        PlutoColumn(
          title: "faker.food.cuisine()",
          field: 'column${++addedCount}',
          type: PlutoColumnType.text(),
        ),
      );
    }

    widget.stateManager.insertColumns(
      widget.stateManager.bodyColumns.length,
      addedColumns,
    );
  }

  void handleAddRows() {
    final newRows = widget.stateManager.getNewRows(count: addCount);

    widget.stateManager.appendRows(newRows);

    // widget.stateManager.setCurrentCell(
    //   newRows.first.cells.entries.first.value,
    //   widget.stateManager.refRows.length - 1,
    // );
    //
    // widget.stateManager.moveScrollByRow(
    //   PlutoMoveDirection.down,
    //   widget.stateManager.refRows.length - 2,
    // );

    widget.stateManager.setKeepFocus(true);
  }

  void handleSaveAll() {
    widget.stateManager.setShowLoading(true);

    Future.delayed(const Duration(milliseconds: 500), () {
      for (var row in widget.stateManager.refRows) {
        if (row.cells['status']!.value != 'saved') {
          row.cells['status']!.value = 'saved';
        }

        if (row.cells['id']!.value == '') {
          row.cells['id']!.value = 'guest';
        }

        if (row.cells['name']!.value == '') {
          row.cells['name']!.value = 'anonymous';
        }
      }

      widget.stateManager.setShowLoading(false);
    });
  }

  void handleRemoveCurrentColumnButton() {
    final currentColumn = widget.stateManager.currentColumn;

    if (currentColumn == null) {
      return;
    }

    widget.stateManager.removeColumns([currentColumn]);
  }

  void handleRemoveCurrentRowButton() {
    widget.stateManager.removeCurrentRow();
  }

  void handleRemoveSelectedRowsButton() {
    widget.stateManager.removeRows(widget.stateManager.currentSelectingRows);
  }

  void handleFiltering() {
    widget.stateManager
        .setShowColumnFilter(!widget.stateManager.showColumnFilter);
  }

  void setGridSelectingMode(PlutoGridSelectingMode? mode) {
    if (mode == null || gridSelectingMode == mode) {
      return;
    }

    setState(() {
      gridSelectingMode = mode;
      widget.stateManager.setSelectingMode(mode);
    });
  }

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.end,
      children: [
        TextButton(
          onPressed: handleAddRows,
          child: const Text('Add'),
        ),
        TextButton(
          onPressed: handleRemoveCurrentRowButton,
          child: const Text('Remove'),
        ),
      ],
    );
  }
}
