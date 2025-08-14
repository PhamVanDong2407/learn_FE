import 'package:fetest/Controllers/splash_controller.dart';
import 'package:fetest/Global/app_color.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class Splash extends StatelessWidget {
  Splash({super.key});

  final controller = Get.put(SplashController());

  @override
  Widget build(BuildContext context) {
    return Scaffold(body: Container(color: AppColor.primary));
  }
}
