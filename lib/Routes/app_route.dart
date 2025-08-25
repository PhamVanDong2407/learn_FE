part of 'app_page.dart';

abstract class Routes {
  Routes._();
  static const dashboard = _Paths.dashboard;
  static const splash = _Paths.splash;
  static const introduce = _Paths.introduce;  
  static const home = _Paths.home;
  static const login = _Paths.login;
  static const register = _Paths.register;
  static const forgotPassword = _Paths.forgotPassword;
}

abstract class _Paths {
  _Paths._();
  static const String dashboard = '/dashboard';
  static const String splash = '/splash';
  static const String introduce = '/introduce';
  static const String home = '/home';
  static const String login = '/login';
  static const String register = '/register';
  static const String forgotPassword = '/forgot-password';
}
