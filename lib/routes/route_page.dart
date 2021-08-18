import 'package:chat_app/pages/auth/login.dart';
import 'package:chat_app/pages/introduction/introduction.dart';
import 'package:chat_app/pages/splash/splash.dart';
import 'package:chat_app/routes/route_name.dart';
import 'package:get/get.dart';

class Pages {
  static final pages = [
    GetPage(name: Routes.introduction, page: () => Introduction()),
    GetPage(name: Routes.splash, page: () => SplashScreen()),
    GetPage(name: Routes.login, page: () => LoginPage())
  ];
}