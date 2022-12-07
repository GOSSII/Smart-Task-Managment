import 'package:calendar_timeline/calendar_timeline.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class CalenderTimeline extends StatefulWidget {
  @override
  _CalenderTimelineState createState() => _CalenderTimelineState();
}

class _CalenderTimelineState extends State<CalenderTimeline> {
  late DateTime _selectedDate;

  @override
  void initState() {
    super.initState();
    _resetSelectedDate();
  }

  void _resetSelectedDate() {
    _selectedDate = DateTime.now().add(Duration(days: 2));
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: <Widget>[
        CalendarTimeline(
          // showYears: true,
          initialDate: _selectedDate,
          firstDate: DateTime.now(),
          lastDate: DateTime.now().add(Duration(days: 365 * 4)),
          onDateSelected: (date) => setState(() => _selectedDate = date),
          leftMargin: 20,
          monthColor: Colors.white70,
          dayColor: Colors.teal[200],
          dayNameColor: Color(0xFF333A47),
          activeDayColor: Colors.white,
          activeBackgroundDayColor: Colors.blue[600],
          dotsColor: Color(0xFF333A47),
          selectableDayPredicate: (date) => date.day != 23,
          locale: 'en',
        ),
      ],
    );
  }
}
