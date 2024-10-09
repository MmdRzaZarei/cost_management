import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../controller/add_item_bindings.dart';
import '../controller/add_item_controller.dart';

class AddItemView extends GetView<AddItemController> {
  const AddItemView({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(children: [
      TextField(
        onChanged: (value) {
          controller.updateItemName(value);
        },
      ),
      const SizedBox(
        height: 20,
      ),
      TextField(
        onChanged: (value) {
          controller.updateItemCost(value);
        },
      ),
      // ElevatedButton(onPressed: () {controller.AddItemToCategory(categoryID: categoryID, cost: controller.itemCost, name: controller.itemName)}, child: Text('submit')),
    ]);
  }
}
