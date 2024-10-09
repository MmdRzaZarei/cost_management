import 'package:flutter/material.dart';
import 'dart:async';

import 'package:get/get.dart';

class SplashPage extends StatelessWidget {
  SplashPage({super.key}) {
    Timer(Duration(seconds: 3), () => Get.toNamed('/login-page-view'));
  }

  @override
  Widget build(BuildContext context) {
    var flutterLogo = FlutterLogo(
      size: 30,
      style: FlutterLogoStyle.markOnly,
      curve: Curves.linear,
      duration: Duration(seconds: 3),
    );

    return Scaffold(
      appBar: AppBar(
        title: Text('Loading'),
      ),
      body: flutterLogo,
    );
  }
}
