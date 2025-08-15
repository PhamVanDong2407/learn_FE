import 'package:fetest/Global/constant.dart';
import 'package:fetest/Routes/app_page.dart';
import 'package:fetest/Services/auth.dart';
import 'package:fetest/Utils/utils.dart';
import 'package:get/get.dart';

class SplashController extends GetxController {
  @override
  Future<void> onInit() async {
    super.onInit();
    String accessToken = await Utils.getStringValueWithKey(
      Constant.ACCESS_TOKEN,
    );
    if (accessToken.isEmpty) {
      Get.offAllNamed(Routes.introduce);
    } else {
      await Auth.login();
    }
  }
}
