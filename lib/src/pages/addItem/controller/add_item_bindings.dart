import 'package:get/get.dart';
import 'add_item_controller.dart';

class AddItemsBindings extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<AddItemController>(() => AddItemController());
  }
}
