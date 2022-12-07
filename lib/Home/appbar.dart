import 'package:flutter/services.dart';

import 'package:flutter/material.dart';
import 'package:smart_task_management/Home/calenderTimeline.dart';

class HomeAppBar extends StatelessWidget {
  const HomeAppBar({super.key});

  @override
  Widget build(BuildContext context) {
    return SliverAppBar(
      systemOverlayStyle:
          const SystemUiOverlayStyle(statusBarBrightness: Brightness.dark),
      expandedHeight: 350.0,
      backgroundColor: Colors.blue[800],
      elevation: 0.0,
      pinned: true,
      stretch: true,
      flexibleSpace: FlexibleSpaceBar(
        background: Padding(
          padding: const EdgeInsets.all(25.0),
          child: Column(
            children: [
              // greeting Section
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      const Text(
                        'Hi, Dipesh!',
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 24,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ],
                  ),
                  Container(
                    decoration: BoxDecoration(
                      color: Colors.blue[600],
                      borderRadius: BorderRadius.circular(12),
                    ),
                    padding: const EdgeInsets.all(12),
                    child: const Icon(
                      Icons.notifications,
                      color: Colors.white,
                    ),
                  )
                ],
              ),
              const SizedBox(
                height: 25,
              ),
              // Search Section
              Container(
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(12),
                  color: Colors.blue[600],
                ),
                padding: const EdgeInsets.all(12),
                child: Row(children: const [
                  Icon(
                    Icons.search,
                    color: Colors.white,
                  ),
                  SizedBox(
                    width: 8,
                  ),
                  Text(
                    'Search',
                    style: TextStyle(color: Colors.white),
                  )
                ]),
              ),
              const SizedBox(
                height: 25,
              ),
              // CalenderTimeline Section
              CalenderTimeline(),
              // List of Task Section
            ],
          ),
        ),
        stretchModes: const [
          StretchMode.blurBackground,
          StretchMode.zoomBackground,
        ],
      ),
      bottom: PreferredSize(
        preferredSize: const Size.fromHeight(0.0),
        child: Container(
          height: 32.0,
          alignment: Alignment.center,
          decoration: const BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.only(
              topLeft: Radius.circular(32.0),
              topRight: Radius.circular(32.0),
            ),
          ),
          child: Container(
            width: 40.0,
            height: 5.0,
            decoration: BoxDecoration(
              color: Color(0xFFD0DBEA),
              borderRadius: BorderRadius.circular(100.0),
            ),
          ),
        ),
      ),
    );
  }
}
