import 'package:cost_management/src/infrastructure/colors.dart';

import '../controller/register_bindings.dart';
import '../controller/register_controller.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../commons/text_fields.dart';

class RegisterPageView extends GetView<RegisterController> {
  const RegisterPageView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: darkPrimary,
        title: Center(
          child: Text(
            'Register',
            style: TextStyle(color: Colors.white),
          ),
        ),
      ),
      body: Center(
        child: Column(
          children: [
            usernameField(controller),
            passwordField(controller),
            passwordFieldSecondary(controller)
          ],
        ),
      ),
    );
  }
}
