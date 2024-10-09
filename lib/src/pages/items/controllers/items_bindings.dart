import 'package:get/get.dart';
import 'items_controller.dart';

class ItemsBindings extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<ItemsController>(() => ItemsController());
  }
}
