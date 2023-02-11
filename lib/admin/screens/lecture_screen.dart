// ignore_for_file: prefer_const_constructors, avoid_unnecessary_containers, camel_case_types

import 'package:flutter/material.dart';

class lec_screen extends StatefulWidget {
  const lec_screen({super.key});

  @override
  State<lec_screen> createState() => _lec_screenState();
}

class _lec_screenState extends State<lec_screen> {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Center(
        child: Text("Lecture"),
      ),
    );
  }
}
