import 'package:flutter/material.dart';
import 'package:mobileuts/login.dart';
import 'package:mobileuts/register.dart';
import 'package:mobileuts/splash.dart';

void main() {
  runApp(MaterialApp(
    debugShowCheckedModeBanner: false,
    routes: {
      "/": (context) => Splash(),
      '/login': (context) => Login(),
      '/register': (context) => Register(),
    },
  ));
}
