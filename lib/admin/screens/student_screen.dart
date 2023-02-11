// ignore_for_file: prefer_const_constructors, avoid_unnecessary_containers, camel_case_types

import 'package:flutter/material.dart';

class Stud_screen extends StatefulWidget {
  const Stud_screen({super.key});

  @override
  State<Stud_screen> createState() => _Stud_screenState();
}

class _Stud_screenState extends State<Stud_screen> {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Center(
        child: Text("Student"),
      ),
    );
  }
}
