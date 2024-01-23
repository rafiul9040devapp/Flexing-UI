import 'package:get/get.dart';

class ListController extends GetxController {
  final RxList<int> _listOfTotal = <int>[].obs;
  RxList<int> get listOfTotal => _listOfTotal;

  void addItemsToList(int total) => _listOfTotal.insert(0, total);
}
