import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:syncfusion_flutter_datagrid/datagrid.dart';

class EmployeesList extends StatefulWidget {
  const EmployeesList({super.key});

  @override
  State<EmployeesList> createState() => _EmployeesListState();
}

class _EmployeesListState extends State<EmployeesList> {
  late EmployeeDataGridSource _employeeDataGridSource;

  @override
  void initState() {
    super.initState();
    _employeeDataGridSource = EmployeeDataGridSource();
  }

  Future<List<dynamic>> getData() async {
    String responseBody = await rootBundle.loadString("demo.json");
    var data = await json.decode(responseBody);
    data = data[0]['REPORT_DETAIL'];
    _employeeDataGridSource.employeeData = [];
    for (final val in data) {
      _employeeDataGridSource.employeeData.add(val);
    }
    return Future<List<dynamic>>.value(data);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: FutureBuilder<List<dynamic>>(
      future: getData(),
      builder: (context, snapShot) {
        if (snapShot.hasError ||
            snapShot.connectionState == ConnectionState.waiting) {
          return const CircularProgressIndicator();
        }

        dynamic headerData = snapShot.data?[0];
        headerData = headerData.keys.toList();
        return SfDataGrid(
            source: _employeeDataGridSource,
            columns: headerData
                .map<GridColumn>((e) => GridColumn(
                      columnName: e,
                      label: Container(
                          //padding: const EdgeInsets.all(16.0),
                          alignment: Alignment.center,
                          child: Text(
                            e.toString(),
                            softWrap: true,
                          )),
                      // overflow: TextOverflow.clip,
                      // headerTextOverflow: TextOverflow.clip,
                      // maxLines: 2,
                      // padding: const EdgeInsets.all(2),
                      // headerPadding: const EdgeInsets.all(2)
                    ))
                .toList());
      },
    ));
  }
}

class EmployeeDataGridSource extends DataGridSource {
  List<dynamic> employeeData = [];

  List<dynamic> get dataSource => employeeData.map<dynamic>((e) {
        return e.entries.toList();
      }).toList();

  dynamic getValue(dynamic data, String columnName) {
    return data.firstWhere((e) => e.key == columnName).value;
  }

  final List<DataGridRow> _employees = [];
  @override
  List<DataGridRow> get rows => _employees;

  @override
  DataGridRowAdapter? buildRow(DataGridRow row) {
    return DataGridRowAdapter(
        cells: row.getCells().map<Widget>((dataGridCell) {
      return Text(dataGridCell.value.toString());
    }).toList());
  }
}
