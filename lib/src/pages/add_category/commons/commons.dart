import 'package:get/get.dart';

import 'package:flutter/material.dart';
import '../controller/add_category_controller.dart';
import 'package:cost_management/src/models/category.dart';
import 'package:cost_management/src/infrastructure/all_categories_database.dart';

TextField categoryNameInput(AddCategoryController controller) {
  return TextField(
    decoration: const InputDecoration(
      labelText: 'enter new category name here',
      hintText: 'new Category',
    ),
    onChanged: (value) {
      controller.updateCategoryName(value);
    },
  );
}

ElevatedButton btnCategoryInput(AddCategoryController controller) {
  return ElevatedButton(
    onPressed: () {
      AllCategoriesDataBase.addCategory(
        Category(categoryName: controller.categoryName),
      );
      Get.toNamed('/categories-view');
    },
    child: const Text('add new category'),
  );
}
