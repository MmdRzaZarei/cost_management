import '../controller/categories_controller.dart';
import 'package:get/get.dart';
import 'package:flutter/material.dart';
import 'package:cost_management/src/infrastructure/colors.dart';

Column categoriesColumn(CategoriesController controller) {
  return Column(
    children: controller.allCategories
        .map(
          (category) => ListTile(
            title: Text(category.categoryName.value),
            subtitle: Text(
              category.totalCost.value.toString(),
            ),
            onTap: () {
              //TODO: go to the category where user clicked with get arguments
              // Get.toNamed();
            },
          ),
        )
        .toList(),
  );
}

AppBar Appbar() {
  return AppBar(
    title: const Text(
      'ALL CATEGORIES',
      style: TextStyle(
        color: Colors.white,
      ),
    ),
    backgroundColor: darkPrimary,
  );
}
