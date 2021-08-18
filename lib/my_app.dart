import 'package:flutter/material.dart';
import 'package:login_app/app_controller.dart';
import 'package:login_app/views/login_view.dart';

import 'views/home_view.dart';

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return AnimatedBuilder(
      animation: AppController.instance,
      builder: (builder, child) {
        return MaterialApp(
          debugShowCheckedModeBanner: false,
          theme: ThemeData(
            primarySwatch: Colors.red,
            brightness: AppController.instance.isDartTheme
                ? Brightness.dark
                : Brightness.light,
          ),
          initialRoute: '/',
          routes: {
            '/': (context) => LoginView(),
            '/home': (context) => HomeView(),
          },
        );
      },
    );
  }
}
