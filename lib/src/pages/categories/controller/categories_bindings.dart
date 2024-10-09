import 'package:get/get.dart';
import 'categories_controller.dart';

class CategoriesBindings extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<CategoriesController>(() => CategoriesController());
  }
}
