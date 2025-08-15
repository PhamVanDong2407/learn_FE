import 'package:fetest/Views/introduce.dart';
import 'package:fetest/Views/splash.dart';
import 'package:get/get.dart';

part 'app_route.dart';

class AppPage {
  AppPage._();

  static const String initialRoute = Routes.splash;

  static final List<GetPage<dynamic>> routes = [
    // GetPage(name: Routes.dashboard, page: () => Dashboard()),
    GetPage(name: Routes.splash, page: () => Splash()),
    GetPage(name: Routes.introduce, page: () => IntroductionScreen()),
    // GetPage(name: Routes.home, page: () => Home()),
    // GetPage(name: Routes.login, page: () => Login()),
  ];
}
