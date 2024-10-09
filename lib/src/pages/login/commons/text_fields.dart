import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:cost_management/src/infrastructure/colors.dart';
import 'package:cost_management/src/pages/login/controller/login_controller.dart';

TextField passwordField(LoginController controller) {
  return TextField(
    obscureText: true,
    onChanged: (value) {
      controller.updatePassword(value);
    },
    decoration: const InputDecoration(
      labelText: 'Password',
      hintText: 'Enter your password',
      border: OutlineInputBorder(),
      prefixIcon: Icon(Icons.lock),
    ),
  );
}

TextField usernameField(LoginController controller) {
  return TextField(
    decoration: const InputDecoration(
      labelText: 'enter your user name',
      hintText: 'Your USERNAME:',
    ),
    onChanged: (value) {
      controller.updateUsername(value);
    },
  );
}
