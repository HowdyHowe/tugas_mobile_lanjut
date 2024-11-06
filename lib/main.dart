import 'package:flutter/material.dart';
import 'package:flutter_form_app/menu/mainpage.dart';
import 'package:flutter_form_app/registration/loginpage.dart';
import 'package:flutter_form_app/splash_screen.dart';

void main() {
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
          fontFamily: 'Rubik',
          highlightColor: Color.fromARGB(0, 0, 0, 0),
          splashColor: Colors.transparent,
          hintColor: Colors.black),
      debugShowCheckedModeBanner: false,
      initialRoute: '/',
      routes: {
        '/': (context) => SplashScreen(),
        '/loginpage': (context) => LoginPage(),
        '/home': (context) => MainPage(),
      },
    );
  }
}
