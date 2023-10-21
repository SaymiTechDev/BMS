import 'package:bms/app/controller/contacts_controller.dart';
import 'package:bms/app/data/app_colors.dart';
import 'package:bms/app/widgets/data_grids/pluto_grid.dart';
import 'package:bms/app/widgets/screen_container.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:pluto_grid/pluto_grid.dart';

class ContactsPage extends GetView<ContactsController> {
  const ContactsPage({super.key});

  @override
  Widget build(BuildContext context) {
    final List<PlutoColumn> columns = <PlutoColumn>[
      PlutoColumn(
        title: 'Id',
        field: 'contactId',
        hide: true,
        type: PlutoColumnType.text(),
      ),
      PlutoColumn(
        title: 'Contact Code',
        field: 'uniqueCode',
        enableRowChecked: true,
        type: PlutoColumnType.text(),
      ),
      PlutoColumn(
        title: 'Type',
        field: 'contactType',
        type: PlutoColumnType.text(),
      ),
      PlutoColumn(
        title: 'Name',
        field: 'companyName',
        type: PlutoColumnType.text(),
      ),
      PlutoColumn(
        title: 'Display Name',
        field: 'displayName',
        type: PlutoColumnType.text(),
      ),
      PlutoColumn(
        title: 'Phone',
        field: 'phone',
        type: PlutoColumnType.text(),
      ),
      PlutoColumn(
        title: 'Mobile',
        field: 'mobile',
        type: PlutoColumnType.text(),
      ),
      PlutoColumn(
        title: 'E-Mail',
        field: 'email',
        type: PlutoColumnType.text(),
      ),
      PlutoColumn(
        title: 'Website',
        field: 'website',
        type: PlutoColumnType.text(),
      ),
      PlutoColumn(
        title: 'Gst',
        field: 'gstNo',
        type: PlutoColumnType.text(),
      ),
      PlutoColumn(
        title: 'Pan',
        field: 'panNo',
        type: PlutoColumnType.text(),
      ),
    ];

    final List<PlutoRow> rows = [
      // PlutoRow(
      //   cells: {
      //     'id': PlutoCell(value: 'user1'),
      //     'name': PlutoCell(value: 'Mike'),
      //     'age': PlutoCell(value: 20),
      //     'role': PlutoCell(value: 'Programmer'),
      //     'joined': PlutoCell(value: '2021-01-01'),
      //     'working_time': PlutoCell(value: '09:00'),
      //     'salary': PlutoCell(value: 300),
      //   },
      // ),
      // PlutoRow(
      //   cells: {
      //     'id': PlutoCell(value: 'user2'),
      //     'name': PlutoCell(value: 'Jack'),
      //     'age': PlutoCell(value: 25),
      //     'role': PlutoCell(value: 'Designer'),
      //     'joined': PlutoCell(value: '2021-02-01'),
      //     'working_time': PlutoCell(value: '10:00'),
      //     'salary': PlutoCell(value: 400),
      //   },
      // ),
      // PlutoRow(
      //   cells: {
      //     'id': PlutoCell(value: 'user3'),
      //     'name': PlutoCell(value: 'Suzi'),
      //     'age': PlutoCell(value: 40),
      //     'role': PlutoCell(value: 'Owner'),
      //     'joined': PlutoCell(value: '2021-03-01'),
      //     'working_time': PlutoCell(value: '11:00'),
      //     'salary': PlutoCell(value: 700),
      //   },
      // ),
    ];
    return ScreenContainer(
        body: Column(
      children: [
        SizedBox(
          height: 50,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Row(
                children: [
                  Icon(
                    Icons.contacts,
                    color: AppColors.blue,
                  ),
                  const SizedBox(
                    width: 15,
                  ),
                  const Text(
                    "Contacts",
                    style: TextStyle(fontWeight: FontWeight.w800, fontSize: 18),
                  ),
                ],
              ),
            ],
          ),
        ),
        const Divider(),
        SizedBox(
          height: 500,
          child: PlutoGridDemo(columns, rows),
        ),
      ],
    ));
  }
}
