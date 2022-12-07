import 'dart:ui';

import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/material.dart';
import 'package:smart_task_management/Home/appbar.dart';
import 'package:smart_task_management/Home/calenderTimeline.dart';

import 'package:smart_task_management/Home/taskPanel.dart';

class home extends StatefulWidget {
  const home({super.key});

  @override
  State<home> createState() => _homeState();
}

class _homeState extends State<home> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        bottomNavigationBar: BottomNavigationBar(items: const [
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
        body: CustomScrollView(slivers: <Widget>[
          const HomeAppBar(),
          SliverToBoxAdapter(
            child: TaskPanel(),
          ),
        ]));
  }
}
