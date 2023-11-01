import 'package:get/get.dart';
import 'package:pluto_grid/pluto_grid.dart';

class PlutoGridController extends GetxController {
  var rows = <dynamic>[].obs;

  List<PlutoRow> genRow(dynamic row) {
    return [];
  }

  void genColumn(List<String> column) {}
}
