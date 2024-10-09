import 'package:get/get.dart';

class AddCategoryController extends GetxController {
  RxString categoryName = ''.obs;

  void updateCategoryName(String value) {
    categoryName.value = value;
  }
}
