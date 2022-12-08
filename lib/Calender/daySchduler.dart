import 'package:flutter/material.dart';
import 'package:calendar_view/calendar_view.dart';
import 'package:smart_task_management/Calender/data.dart';

DateTime get _now => DateTime.now();

class DaySchduler extends StatefulWidget {
  const DaySchduler({super.key});

  @override
  State<DaySchduler> createState() => _DaySchdulerState();
}

class _DaySchdulerState extends State<DaySchduler> {
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
  }

  EventController<Object?>? das;
  @override
  Widget build(BuildContext context) {
    return Container(
      height: MediaQuery.of(context).size.height,
      color: Colors.grey.shade100,
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 4.0),
        child: DayView(
          controller: EventController<Event>()..addAll(events),
          eventTileBuilder: (date, events, boundry, start, end) {
            // Return your widget to display as event tile.
            return RoundedEventTile(
              borderRadius: BorderRadius.circular(10.0),
              title: events[0].title,
              totalEvents: events.length - 1,
              description: events[0].description,
              padding: EdgeInsets.all(8.0),
              backgroundColor: events[0].color,
              margin: EdgeInsets.all(2.0),
              titleStyle: TextStyle(
                fontSize: 12,
                color: Colors.white,
              ),
              descriptionStyle: TextStyle(
                fontSize: 10,
                color: Colors.white,
              ),
            );
          },
          showVerticalLine: true, // To display live time line in day view.
          showLiveTimeLineInAllDays:
              true, // To display live time line in all pages in day view.
          minDay: DateTime(1990),
          maxDay: DateTime(2050),
          initialDay: DateTime(_now.year, _now.month, _now.day, 18, 30),
          heightPerMinute: 1, // height occupied by 1 minute time span.

          eventArranger:
              SideEventArranger(), // To define how simultaneous events will be arranged.
          onEventTap: (events, date) => print(events),
          onDateLongPress: (date) => print(date),
        ),
      ),
    );
  }
}
