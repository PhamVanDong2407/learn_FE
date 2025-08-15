import 'package:fetest/Controllers/splash_controller.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:get/get.dart';
import 'package:lottie/lottie.dart';

class Splash extends StatelessWidget {
  Splash({super.key});

  final controller = Get.put(SplashController());

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        alignment: Alignment.center,
        children: [
          Container(color: Colors.black),

          Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              SvgPicture.asset(
                'assets/icons/logo.svg',
                width: 120,
                height: 120,
              ),
              const SizedBox(height: 20),
              Lottie.asset('assets/json/loading.json', width: 100, height: 100),
            ],
          ),
        ],
      ),
    );
  }
}
