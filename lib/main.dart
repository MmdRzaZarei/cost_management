import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'src/pages/categories/views/categories_view.dart';
import 'src/pages/categories/controller/categories_bindings.dart';
import 'src/pages/add_category/views/add_category_view_page.dart';
import 'src/pages/add_category/controller/add_category_binding.dart';
import 'src/pages/items/views/items_view_page.dart';
import 'src/pages/items/controllers/items_bindings.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      initialRoute: '/categories-view',
      getPages: [
        GetPage(
          name: '/categories-view',
          page: () => CategoriesView(),
          binding: CategoriesBindings(),
        ),
        GetPage(
            name: '/add-category-page',
            page: () => AddCategoryViewPage(),
            binding: AddCategoryBinding()),
        GetPage(
            name: '/items-view-page',
            page: () => ItemsViewPage(),
            binding: ItemsBindings()),
      ],
    );
  }
}
