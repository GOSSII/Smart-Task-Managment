import 'package:flutter/material.dart';
import 'package:smart_task_management/Calender/calenderAppbar.dart';
import 'package:smart_task_management/Calender/daySchduler.dart';
import 'package:smart_task_management/Home/homeAppbar.dart';

import 'package:smart_task_management/Home/taskPanel.dart';

class home extends StatefulWidget {
  const home({super.key});

  @override
  State<home> createState() => _homeState();
}

class _homeState extends State<home> {
  int currentIndex = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        bottomNavigationBar:
            BottomNavigationBar(onTap: onTabTapped, items: const [
          BottomNavigationBarItem(
              icon: Icon(
                Icons.home,
              ),
              label: 'Home'),
          BottomNavigationBarItem(
              icon: Icon(
                Icons.calendar_month,
              ),
              label: 'calendar'),
          BottomNavigationBarItem(
              icon: Icon(
                Icons.settings,
              ),
              label: 'Setting'),
        ]),
        backgroundColor: Colors.blue[800],
        body: _children[currentIndex]);
  }

  void onTabTapped(int index) {
    setState(() {
      currentIndex = index;
    });
  }

  final List<Widget> _children = [
    // Home Page
    CustomScrollView(slivers: <Widget>[
      const HomeAppBar(),
      SliverToBoxAdapter(
        child: TaskPanel(),
      ),
    ]),
    // Calender Page
    CustomScrollView(slivers: <Widget>[
      const CalenderAppbar(),
      SliverToBoxAdapter(
        child: DaySchduler(),
      ),
    ]),
    // Other Page
    Text('fsd'),
  ];
}
