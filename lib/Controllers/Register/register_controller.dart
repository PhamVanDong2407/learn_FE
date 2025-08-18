import 'package:flutter/material.dart';
import 'package:get/get.dart';

class RegisterController extends GetxController {
  final fullName = TextEditingController();
  final email = TextEditingController();
  final password = TextEditingController();
  final confirmPassword = TextEditingController();
  final phone = TextEditingController();

  var isPasswordHidden = true.obs;
  var agreed = false.obs;

  void register() {
    // Logic tạo tài khoản ở đây
    print('Tạo tài khoản với: ${email.text}');
  }

  void loginWithGoogle() {
    // Logic đăng nhập Google
    print('Đăng nhập bằng Google');
  }
}
