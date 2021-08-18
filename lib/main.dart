import 'package:chat_app/routes/route_name.dart';
import 'package:chat_app/routes/route_page.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:get/get.dart';

void main() {
  WidgetsFlutterBinding.ensureInitialized();
  SystemChrome.setPreferredOrientations([
    DeviceOrientation.portraitUp,
    DeviceOrientation.portraitDown,
  ]);
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      title: 'IndoGram',
      debugShowCheckedModeBanner: false,
      initialRoute: Routes.splash,
      getPages: Pages.pages,
    );
  }
}
