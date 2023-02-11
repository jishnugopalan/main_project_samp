// ignore_for_file: prefer_const_constructors, duplicate_ignore, unnecessary_new, constant_identifier_names, cast_from_nullable_always_fails, prefer_typing_uninitialized_variables, avoid_web_libraries_in_flutter

import 'package:flutter/material.dart';
// ignore: unused_import
import 'package:google_fonts/google_fonts.dart';
import 'package:mainproject/admin/screens/dashboard_screen.dart';
import 'package:mainproject/admin/screens/dep_screen.dart';
import 'package:mainproject/admin/screens/lecture_screen.dart';
import 'package:mainproject/admin/screens/settings_screen.dart';
import 'package:mainproject/admin/screens/student_screen.dart';

class AdmnHome extends StatefulWidget {
  const AdmnHome({super.key});

  @override
  State<AdmnHome> createState() => _AdmnHomeState();
}

var currentPage = DrawerSections.Dashboard;

class _AdmnHomeState extends State<AdmnHome> {
  @override
  Widget build(BuildContext context) {
    var container;
    if (currentPage == DrawerSections.Dashboard) {
      container = Dashboard_Screen();
    } else if (currentPage == DrawerSections.department) {
      container = Dep_screen();
    } else if (currentPage == DrawerSections.Lectures) {
      container = lec_screen();
    } else if (currentPage == DrawerSections.Students) {
      container = Stud_screen();
    } else if (currentPage == DrawerSections.Settings) {
      container = Settings_screen();
    }
    return Container(
      height: 250,
      decoration: BoxDecoration(
        image: DecorationImage(
            image: AssetImage('images/register.png'), fit: BoxFit.cover),
      ),
      // decoration: BoxDecoration(
      //     color: Color(0xffF5591F),
      //     // ignore: prefer_const_literals_to_create_immutables
      //     gradient: LinearGradient(colors: [
      //       (Color.fromARGB(255, 83, 99, 175)),
      //       (Color.fromARGB(255, 213, 223, 231))
      //     ], begin: Alignment.topCenter, end: Alignment.bottomCenter)),
      child: Scaffold(
        backgroundColor: Colors.transparent,
        appBar: AppBar(
          backgroundColor: Colors.transparent,
          centerTitle: true,
          title: Text(
            "INNOVIS",
            style: TextStyle(
                color: Colors.white,
                fontSize: 24,
                fontStyle: FontStyle.italic,
                fontFamily: 'RobotoMono'),
          ),
        ),
        body: container,
        drawer: Drawer(
          child: SingleChildScrollView(
            child: Container(
              child: Column(
                children: [headerDrawer(), drawerList()],
              ),
            ),
          ),
        ),
      ),
    );
  }
}

Widget headerDrawer() {
  return Container(
    width: double.infinity,
    height: 250,
    padding: EdgeInsets.only(top: 20.0),
    decoration: BoxDecoration(
        color: Color.fromARGB(255, 83, 99, 175),
        // border: Border.all(),
        borderRadius: BorderRadius.only(
          bottomRight: Radius.circular(20),
        )),
    child: Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Container(
          margin: EdgeInsets.only(bottom: 10),
          height: 70,
          decoration: BoxDecoration(
              shape: BoxShape.circle,
              image: DecorationImage(image: AssetImage('images/propic1.jpg'))),
        ),
        Text(
          "Admin name",
          style: TextStyle(color: Colors.white, fontSize: 20),
        ),
        SizedBox(
          height: 10,
        ),
        Text(
          "Head Of the Department",
          style: TextStyle(color: Colors.white, fontSize: 15),
        )
      ],
    ),
  );
}

Widget drawerList() {
  return Container(
    padding: EdgeInsets.only(top: 10, left: 5),
    child: Column(
      children: [
        menuList(1, "Dashboard", Icons.dashboard_outlined,
            currentPage == DrawerSections.Dashboard ? true : false),
        menuList(2, "Department", Icons.school_outlined,
            currentPage == DrawerSections.department ? true : false),
        menuList(3, "Lectures", Icons.people_alt_rounded,
            currentPage == DrawerSections.Lectures ? true : false),
        menuList(4, "Students", Icons.person_2,
            currentPage == DrawerSections.Students ? true : false),
        menuList(5, "Settings", Icons.settings,
            currentPage == DrawerSections.Settings ? true : false),
        menuList(6, "Log Out", Icons.exit_to_app,
            currentPage == DrawerSections.Log_Out ? true : false)
      ],
    ),
  );
}

void gotoMenus() {
  Navigator.pushNamed(BuildContext as BuildContext context, 'register');
}

// Widget menuList(int id, String title, IconData icon, bool selected) {
//   return Material(
//     color: selected ? Colors.grey[300] : Colors.transparent,
//     child: GestureDetector(
//       onTap: () {
//         Navigator.pop(context as BuildContext);
//         setState(() {
//           if (id == 1) {
//             currentPage = DrawerSections.Dashboard;
//           } else if (id == 2) {
//             currentPage = DrawerSections.department;
//           } else if (id == 3) {
//             currentPage = DrawerSections.Lectures;
//           } else if (id == 4) {
//             currentPage = DrawerSections.Students;
//           } else if (id == 5) {
//             currentPage = DrawerSections.Settings;
//           }
//         });
//       },
//       child: Container(
//         color: Colors.yellow.shade600,
//         padding: const EdgeInsets.all(8),
//         // Change button text when light changes state.
//         child: Text(),
//       ),
//     ),
//   );
// }
Widget menuList(int id, String title, IconData icon, bool selected) {
  return Container(
    color: selected ? Colors.grey[300] : Colors.transparent,
    child: InkWell(
      onTap: () {
        // Navigator.pop(context as BuildContext);
        //Navigator.pop(context);
        // setState(() {
        //   if (id == 1) {
        //     currentPage = DrawerSections.Dashboard;
        //   } else if (id == 2) {
        //     currentPage = DrawerSections.department;
        //   } else if (id == 3) {
        //     currentPage = DrawerSections.Lectures;
        //   } else if (id == 4) {
        //     currentPage = DrawerSections.Students;
        //   } else if (id == 5) {
        //     currentPage = DrawerSections.Settings;
        //   }
        // });
      },
      child: Padding(
        padding: EdgeInsets.all(15.0),
        child: Row(
          // ignore: prefer_const_literals_to_create_immutables
          children: [
            Expanded(
                child: Icon(
              icon,
              size: 20,
              color: Colors.black,
            )),
            Expanded(
                flex: 5,
                child: Text(
                  title,
                  style: TextStyle(color: Colors.black, fontSize: 16),
                ))
          ],
        ),
      ),
    ),
  );
}

void setState(Null Function() param0) {}

enum DrawerSections {
  Dashboard,
  department,
  Lectures,
  Students,
  Settings,
  Log_Out
}
