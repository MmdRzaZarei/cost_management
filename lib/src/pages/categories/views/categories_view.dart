import 'package:get/get.dart';
import 'package:flutter/material.dart';
import 'package:cost_management/src/infrastructure/colors.dart';
import 'package:cost_management/src/models/category.dart';
import 'package:cost_management/src/infrastructure/all_categories_database.dart';
import '../controller/categories_controller.dart';
import '../commons/categories_commons.dart';

class CategoriesView extends GetView<CategoriesController> {
  const CategoriesView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: Appbar(),
      body: categoriesColumn(controller),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          Get.toNamed('/add-category-page');
        },
        child: const Icon(Icons.add),
      ),
    );
  }
}
