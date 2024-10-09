import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../../../models/user.dart';

class RegisterController extends GetxController {
  RxString usernameField = ''.obs;
  RxString passwordField = ''.obs;
  RxString passwordFieldSecondaryValue = ''.obs;
  void updateUsername(String value) {
    usernameField.value = value;
  }

  void updatePassword(String value) {
    passwordField.value = value;
  }

  void updateSecondaryPassword(String value) {
    passwordFieldSecondaryValue.value = value;
  }

  void submitLogin() {
    if (usernameField.value.isEmpty || passwordField.value.isEmpty) {
      Get.snackbar('Error', 'Please fill in both fields');
    } else {
      Get.snackbar('Success', 'Login Successful!');
    }
  }
}
