import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:pluto_grid/pluto_grid.dart';

class TablePageController extends GetxController {
  final rowData = <String>[].obs;

  final columns = <PlutoColumn>[
    PlutoColumn(
        title: 'Title 1', field: 'title 1', type: PlutoColumnType.text()),
    PlutoColumn(
        title: 'Title 2', field: 'title 2', type: PlutoColumnType.text()),
  ];

  final rows = <PlutoRow>[];

  genRow(List<String> data) {
    data
        .map((element) => rows.add(PlutoRow(cells: {
              'title 1': PlutoCell(value: element),
              'title 2': PlutoCell(value: element),
            })))
        .toList();
    return rows;
  }

  void updateData() {
    final rowData2 = <String>[];
    print('before ${rowData}');
    for (final data in rowData) {
      rowData2.add((int.parse(data) + 2).toString());
    }
    rowData2.add((rowData2.length + 1).toString());
    rowData.value = rowData2;
    print('after ${rowData}');
  }
}

class TablePage extends StatelessWidget {
  final controller = Get.put(TablePageController());

  // final columns = <PlutoColumn>[
  //   PlutoColumn(
  //       title: 'Title 1', field: 'title 1', type: PlutoColumnType.text()),
  //   PlutoColumn(
  //       title: 'Title 2', field: 'title 2', type: PlutoColumnType.text()),
  // ];

  // List<PlutoRow> _buildRows(List<String> rowData) => List.generate(
  //     rowData.length,
  //     (index) => PlutoRow(cells: {
  //           'title 1': PlutoCell(value: rowData[index]),
  //           'title 2': PlutoCell(value: rowData[index]),
  //         }));

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('PlutoGrid GetX Demo'),
      ),
      body: Obx(
        () => PlutoGrid(
          columns: controller.columns,
          rows: controller.genRow(controller.rowData),
          key: UniqueKey(),
          createHeader: (s) {
            return Row(
              children: [
                TextButton(
                    onPressed: () {
                      s.appendNewRows();
                    },
                    child: const Text("Add Line")),
                TextButton(
                    onPressed: () {
                      s.removeCurrentRow();
                    },
                    child: const Text("Delete Line"))
              ],
            );
          },
        ),
      ),
      floatingActionButton: FloatingActionButton(
        child: const Icon(Icons.add),
        onPressed: () {
          controller.updateData();
        },
      ),
    );
  }
}
