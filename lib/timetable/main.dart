import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:time_machine/time_machine.dart';
import 'package:timetable/timetable.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();

  await TimeMachine.initialize({'rootBundle': rootBundle});
  runApp(MaterialApp(
    title: 'timetable',
    home: MyPage(),
  ));
}

class MyPage extends StatefulWidget {
  @override
  _MyPageState createState() => _MyPageState();
}

class _MyPageState extends State<MyPage> {
  final GlobalKey<ScaffoldState> _scaffoldKey = GlobalKey();
  TimetableController<BasicEvent> _controller;

  @override
  void initState() {
    super.initState();
    _controller = TimetableController(
      eventProvider: EventProvider.list([
        BasicEvent(
          id: 0,
          title: 'MyPage',
          color: Colors.blue,
          start: LocalDate.today().at(LocalTime(13, 0, 0)),
          end: LocalDate.today().at(LocalTime(13, 0, 0)),
        ),
      ]),
      initialTimeRange: InitialTimeRange.range(
        startTime: LocalTime(8, 0, 0),
        endTime: LocalTime(20, 0, 0),
      ),
      initialDate: LocalDate.today(),
      visibleRange: VisibleRange.days(3),
      firstDayOfWeek: DayOfWeek.monday,
    );
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: _scaffoldKey,
      appBar: AppBar(
        title: Text('Timetable'),
      ),
      body: Timetable<BasicEvent>(
        controller: _controller,
        eventBuilder: (event) {
          return BasicEventWidget(
            event,
            onTap: () {},
          );
        },
        allDayEventBuilder: (context, event, info) {
          return BasicAllDayEventWidget(
            event,
            info: info,
            onTap: () {},
          );
        },
      ),
    );
  }
}
