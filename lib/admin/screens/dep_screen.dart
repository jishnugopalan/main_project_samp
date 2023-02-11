// ignore_for_file: prefer_const_constructors, avoid_unnecessary_containers, camel_case_types

import 'package:flutter/material.dart';

class Dep_screen extends StatefulWidget {
  const Dep_screen({super.key});

  @override
  State<Dep_screen> createState() => _Dep_screenState();
}

class _Dep_screenState extends State<Dep_screen> {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Center(
        child: Text("department"),
      ),
    );
  }
}
