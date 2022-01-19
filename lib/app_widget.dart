import 'package:flutter/material.dart';
import 'package:loginpage/screen/email_screen.dart';
import 'package:loginpage/screen/password_screen.dart';
import 'package:loginpage/screen/splash_screen.dart';

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      initialRoute: "/splash",
      routes: {
        "/splash": (context) => const SplashScreen(),
        "/email": (context) => const EmailScreen(),
        "/password": (context) => const PasswordScreen()
      },
    );
  }
}