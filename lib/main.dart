import 'package:flutter/material.dart';
import 'package:syncfusion_flutter_calendar/calendar.dart';
void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      // Application name
      title: 'Flutter Hello World',
      // Application theme data, you can set the colors for the application as
      // you want
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      // A widget which will be started on application startup
      home: MyHomePage(title: 'Flutter Demo Home Page'),
    );
  }
}

class CustomTimePicker extends StatefulWidget {
  final Function(DateTime) onTimeSelected;

  CustomTimePicker({required this.onTimeSelected});

  @override
  _CustomTimePickerState createState() => _CustomTimePickerState();
}

class _CustomTimePickerState extends State<CustomTimePicker> {
  static const double _intervalHeight = 100;
  static const double _intervalSpacing = 5;
  static const double _containerHeight = _intervalHeight + _intervalSpacing;
  static const int _numIntervals = 24;

  double _containerPosition = 0;
  double _maxContainerPosition =
      (_numIntervals - 1) * (_intervalHeight + _intervalSpacing);

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      children: [
        Expanded(
          child: Stack(
            children: [
              ListView.builder(
                  itemCount: _numIntervals,
                  shrinkWrap: true,
                  itemBuilder: (context, index) {
                    return Positioned(
                        top: index * (_intervalHeight + _intervalSpacing),
                        child: Container(
                          height: 70,
                          width: 200,
                          decoration: BoxDecoration(
                            border: Border(
                              bottom: BorderSide(
                                width: 1,
                                color: Colors.grey[300]!,
                              ),
                            ),
                          ),
                          child: Center(
                            child: Text(
                              _formatTime(DateTime.utc(0, 0, 0, index)),
                              style: TextStyle(fontSize: 16),
                            ),
                          ),
                        ));
                  }),
              Positioned(
                top: _containerPosition,
                child: GestureDetector(
                  child: Padding(
                    padding: EdgeInsets.only(left: 180.0),
                    child: Container(
                      height: _containerHeight,
                      width: 100,
                      decoration: BoxDecoration(
                        color: Theme.of(context).accentColor,
                        borderRadius: BorderRadius.circular(4),
                      ),
                      child: Center(
                        child: Icon(
                          Icons.drag_handle,
                          color: Colors.white,
                        ),
                      ),
                    ),
                  ),
                  onVerticalDragUpdate: (DragUpdateDetails details) {
                    setState(() {
                      _containerPosition += details.delta.dy;
                      _containerPosition =
                          _containerPosition.clamp(0.0, _maxContainerPosition);
                      widget.onTimeSelected(
                          _getTimeForPosition(_containerPosition));
                    });
                  },
                ),
              ),
            ],
          ),
        ),
      ],
    );
  }

  DateTime _getTimeForPosition(double position) {
    final int minutesPerInterval =
        60 * _intervalHeight ~/ (_intervalHeight + _intervalSpacing);
    final int minutes =
        (position / (_intervalHeight + _intervalSpacing) * minutesPerInterval)
            .round();
    return DateTime.utc(0, 0, 0, 0, minutes);
  }

  String _formatTime(DateTime time) {
    String hour = (time.hour % 12).toString().padLeft(2, '0');
    String minute = time.minute.toString().padLeft(2, '0');
    String period = time.hour < 12 ? 'AM' : 'PM';
    return '$hour:$minute $period';
  }
}

class MyHomePage extends StatelessWidget {
  final String title;
  const MyHomePage({super.key, required this.title});

List<Meeting> _getDataSource() {
  final List<Meeting> meetings = <Meeting>[];
  final DateTime today = DateTime.now();
  final DateTime startTime =
      DateTime(today.year, today.month, today.day, 1, 0, 0);
  final DateTime endTime = startTime.add(const Duration(hours: 1));
  final DateTime startTime1 =
      DateTime(today.year, today.month, today.day, 5, 0, 0);
  final DateTime endTime1 = startTime.add(const Duration(hours: 1));
  final DateTime startTime2 =
      DateTime(today.year, today.month, today.day, 7, 0, 0);
  final DateTime endTime2 = startTime.add(const Duration(hours: 1));
  final DateTime startTime3 =
      DateTime(today.year, today.month, today.day, 15, 0, 0);
  final DateTime endTime3 = startTime.add(const Duration(hours: 1));
  meetings.add(Meeting(
      'breakfast', startTime, endTime, const Color(0xFF0F8644), false));
      meetings.add(Meeting(
      'lunch', startTime1, endTime1, Colors.red, false));
      meetings.add(Meeting(
      'snack', startTime2, endTime2,  Colors.black, false));
      meetings.add(Meeting(
      ' dinner', startTime3, endTime3, const Color(0xFF0F8644), false));
  return meetings;
}
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          // The title text which will be shown on the action bar
          title: Text(title),
        ),
        body: Container(child:
        SfCalendar(
          view: CalendarView.day,
          showCurrentTimeIndicator: true,
          dataSource: MeetingDataSource(_getDataSource()),
          allowDragAndDrop: true,
          
          dragAndDropSettings: DragAndDropSettings(allowScroll:  false),
        )
        )
        );
  }
}
class Meeting {
  Meeting(this.eventName, this.from, this.to, this.background, this.isAllDay);

  String eventName;
  DateTime from;
  DateTime to;
  Color background;
  bool isAllDay;
}
class MeetingDataSource extends CalendarDataSource {
  MeetingDataSource(List<Meeting> source) {
    appointments = source;
  }

  @override
  DateTime getStartTime(int index) {
    return appointments![index].from;
  }

  @override
  DateTime getEndTime(int index) {
    return appointments![index].to;
  }

  @override
  String getSubject(int index) {
    return appointments![index].eventName;
  }

  @override
  Color getColor(int index) {
    return appointments![index].background;
  }

  @override
  bool isAllDay(int index) {
    return appointments![index].isAllDay;
  }
}
