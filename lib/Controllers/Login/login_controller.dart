import 'package:fetest/Services/api_caller.dart';
import 'package:fetest/Services/auth.dart';
import 'package:fetest/Utils/utils.dart';
import 'package:flutter/material.dart';
import 'package:get/get_rx/src/rx_types/rx_types.dart';
import 'package:get/get_state_manager/src/simple/get_controllers.dart';

class LoginController extends GetxController {
  RxBool isWaitSubmit = false.obs;
  TextEditingController usermame = TextEditingController();
  TextEditingController password = TextEditingController();
  String? token = '';
  final isPasswordHidden = true.obs;

  @override
  onInit() async {
    super.onInit();
  }

  // Nút đăng nhập
  Future submit() async {
    isWaitSubmit.value = true;
    try {
      var response = await APICaller.getInstance().get('');

      if (response != null) {
        await Auth.login(
          userName: usermame.text.trim(),
          password: password.text.trim(),
        );
      }
    } catch (e) {
      Utils.showSnackBar(title: 'Thông báo', message: '$e');
    } finally {
      isWaitSubmit.value = false;
    }
  }
}
