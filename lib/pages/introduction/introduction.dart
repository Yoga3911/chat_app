import 'dart:ui';

import 'package:chat_app/routes/route_name.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:introduction_screen/introduction_screen.dart';

class Introduction extends StatelessWidget {
  PageViewModel pageViewModels(String title, String body) {
    return PageViewModel(
        title: title,
        body: body,
        image: Container(
          width: 100,
          height: 100,
          color: Colors.red,
        ));
  }

  @override
  Widget build(BuildContext context) {
    List<PageViewModel> listPageViewModel = [
      pageViewModels('Real Time Chat',
          'Fitur Real Time Chat akan membuat anda semakin mudah untuk berkomunikasi'),
      pageViewModels('Change Theme',
          'Dengan fitur Change Theme dapat memilih Tema yang anda suka')
    ];

    return Scaffold(
      body: IntroductionScreen(
        pages: listPageViewModel,
        onDone: () => Get.toNamed(Routes.login),
        showSkipButton: true,
        skip: const Text('Skip'),
        next: const Text('Next'),
        done: const Text(
          'Log In',
          style: TextStyle(fontWeight: FontWeight.w600),
        ),
        dotsDecorator: DotsDecorator(
            size: const Size.square(10.0),
            activeSize: const Size(20.0, 10.0),
            color: Colors.black26,
            spacing: const EdgeInsets.symmetric(horizontal: 3.0),
            activeShape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(25.0))),
      ),
    );
  }
}
