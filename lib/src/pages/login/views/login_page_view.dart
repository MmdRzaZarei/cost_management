import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:cost_management/src/infrastructure/colors.dart';
import 'package:cost_management/src/pages/login/controller/login_controller.dart';
import '../commons/text_fields.dart';

class LoginPageView extends GetView<LoginController> {
  const LoginPageView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Center(
          child: Text('Login Page'),
        ),
      ),
      body: Center(
        child: Container(
          color: lightPrimary,
          padding: const EdgeInsets.all(40),
          margin: const EdgeInsets.all(20),
          child: Column(
            children: [
              usernameField(controller),
              passwordField(controller),
              ElevatedButton(
                onPressed: controller.submitLogin,
                child: Text('submit!'),
              ),
              ElevatedButton(
                  onPressed: () => Get.toNamed('register-page-view'),
                  child: Text('Create account'))
            ],
          ),
        ),
      ),
    );
  }
}
