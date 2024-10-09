import '../controller/register_bindings.dart';
import '../controller/register_controller.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

TextField passwordField(RegisterController controller) {
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

TextField usernameField(RegisterController controller) {
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

TextField passwordFieldSecondary(RegisterController controller) {
  return TextField(
    obscureText: true,
    onChanged: (value) {
      controller.updateSecondaryPassword(value);
    },
    decoration: const InputDecoration(
      labelText: 'Password',
      hintText: 'Enter your password',
      border: OutlineInputBorder(),
      prefixIcon: Icon(Icons.lock),
    ),
  );
}
