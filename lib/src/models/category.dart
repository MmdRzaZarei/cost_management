import 'package:cost_management/src/models/item.dart';
import 'package:get/get.dart';

class Category {
  static int _lastID = 0;
  RxInt totalCost = 0.obs;
  RxString categoryName = ''.obs;
  RxList<Item> itemList = <Item>[].obs;
  int categoryId;

  Category({required this.categoryName}) : categoryId = ++_lastID;

  void updateTotalCost(int addedValue) {
    totalCost += addedValue;
  }
}
