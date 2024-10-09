import 'package:get/get.dart';
import 'package:flutter/material.dart';
import 'package:cost_management/src/infrastructure/colors.dart';
import 'package:cost_management/src/models/category.dart';
import 'package:cost_management/src/infrastructure/all_categories_database.dart';

class CategoriesController extends GetxController {
  List<Category> allCategories = AllCategoriesDataBase.getAllCategories();
}
