import 'package:flutter/material.dart';
import 'package:mainproject/admin/adm_home.dart';
import 'package:mainproject/screens/login_screen.dart';
import 'package:mainproject/screens/register_screen.dart';
import 'package:mainproject/screens/splash_screen.dart';

void main() {
  runApp(MaterialApp(
    theme: ThemeData(
      primarySwatch: Colors.blue,
      brightness: Brightness.light,
    ),
    debugShowCheckedModeBanner: false,
    home: const AdmnHome(),
    routes: {
      'register': (context) => const MyRegister(),
      'login': (context) => const MyLogin(),
      'admnhome': (context) => const AdmnHome(),
    },
  ));
}
