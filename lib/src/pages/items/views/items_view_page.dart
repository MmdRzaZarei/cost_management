import 'package:get/get.dart';
import 'package:flutter/material.dart';
import 'package:cost_management/src/infrastructure/colors.dart';
import 'package:cost_management/src/models/category.dart';
import 'package:cost_management/src/infrastructure/all_categories_database.dart';
import '../controllers/items_bindings.dart';
import '../controllers/items_controller.dart';

class ItemsViewPage extends GetView<ItemsController> {
  const ItemsViewPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Items'),
      ),
      body: Column(),
      floatingActionButton: FloatingActionButton(
        onPressed: () {},
        child: Icon(Icons.add_circle_outline),
      ),
    );
  }
}
