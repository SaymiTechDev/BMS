import 'package:get/get.dart';
import 'package:pluto_grid/pluto_grid.dart';

class PlutoGridController extends GetxController {
  final rowData = <PlutoRow>[].obs;

  void updateData(List<PlutoRow> rows) {
    rowData.value = rows;
  }
}
