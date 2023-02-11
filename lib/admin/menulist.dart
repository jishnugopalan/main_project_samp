import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:mainproject/admin/screens/dashboard_screen.dart';

class MenuList extends StatefulWidget {
  const MenuList({super.key,required this.id, required this.title, required this.icon, required this.selected});
  final int id;
  final String title;
  final IconData icon;
  final bool selected;


  @override
  State<MenuList> createState() => _MenuListState();
}

class _MenuListState extends State<MenuList> {
  var currentPage = DrawerSections.Dashboard;
  @override
  Widget build(BuildContext context) {
    return Container(
 
    child: InkWell(
      onTap: () {
         Navigator.push(
    context,
    MaterialPageRoute(builder: (context) => const Dashboard_Screen()),
  );
        //gotoMenus();
        // Navigator.pop(context as BuildContext);
        //Navigator.pop(context);
        setState(() {
          if (widget.id == 1) {
            currentPage = DrawerSections.Dashboard;
          } else if (widget.id == 2) {
            currentPage = DrawerSections.department;
          } else if (widget.id == 3) {
            currentPage = DrawerSections.Lectures;
          } else if (widget.id == 4) {
            currentPage = DrawerSections.Students;
          } else if (widget.id == 5) {
            currentPage = DrawerSections.Settings;
          }
        });
      },
      child: Padding(
        padding: EdgeInsets.all(15.0),
        child: Row(
          // ignore: prefer_const_literals_to_create_immutables
          children: [
            Expanded(
                child: Icon(
              widget.icon,
              size: 20,
              color: Colors.black,
            )),
            Expanded(
                flex: 5,
                child: Text(
                  widget.title,
                  style: TextStyle(color: Colors.black, fontSize: 16),
                ))
          ],
        ),
      ),
    ),
  );
  }
}
enum DrawerSections {
  Dashboard,
  department,
  Lectures,
  Students,
  Settings,
  Log_Out
}