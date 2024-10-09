import 'dart:ffi';

import 'package:get/get.dart';
import 'package:cost_management/src/infrastructure/all_categories_database.dart';
import 'package:cost_management/src/models/category.dart';
import 'package:cost_management/src/models/item.dart';

class AddItemController extends GetxController {
  RxString itemName = ''.obs;
  RxInt itemCost = 0.obs;

  void updateItemName(String value) {
    itemName.value = value;
  }

  void updateItemCost(String value) {
    double newValue = double.tryParse(value)!;

    itemCost.value = newValue.toInt();
  }

  void AddItemToCategory({
    required int categoryID,
    required RxInt cost,
    required RxString name,
  }) {
    List<Category> allCategories = AllCategoriesDataBase.getAllCategories();

    allCategories
        .firstWhere((category) => categoryID == category.categoryId)
        .itemList
        .add(
          Item(cost: cost, name: name),
        );
  }
}
