import 'package:cost_management/src/models/category.dart';
import 'package:get/get.dart';

class AllCategoriesDataBase {
  static RxList<Category> _allCategories = <Category>[].obs;
  static void addCategory(Category category) {
    _allCategories.add(category);
  }

  static List<Category> getAllCategories() {
    return _allCategories;
  }

  Category getCategoryByID(int id) {
    return _allCategories.firstWhere((category) => category.categoryId == id);
  }
}
