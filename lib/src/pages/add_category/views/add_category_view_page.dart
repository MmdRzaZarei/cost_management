import 'package:cost_management/src/pages/add_category/controller/add_category_controller.dart';
import 'package:get/get.dart';
import 'package:flutter/material.dart';
import 'package:cost_management/src/infrastructure/colors.dart';
import 'package:cost_management/src/models/category.dart';
import 'package:cost_management/src/infrastructure/all_categories_database.dart';
import '../commons/commons.dart';

class AddCategoryViewPage extends GetView<AddCategoryController> {
  const AddCategoryViewPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Center(
          child: Text(
            "Add a new category",
            style: TextStyle(color: textPrimary),
          ),
        ),
        backgroundColor: darkPrimary,
      ),
      body: Container(
        margin: const EdgeInsets.all(20),
        padding: const EdgeInsets.all(20),
        child: Column(
          children: [
            categoryNameInput(controller),
            btnCategoryInput(controller)
          ],
        ),
      ),
    );
  }
}
