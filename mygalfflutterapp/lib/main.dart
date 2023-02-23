import 'package:flutter/material.dart';
import 'package:my_galf/pages/eventspage/events_page.dart';
import 'package:my_galf/pages/homepage/homepage.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        theme: ThemeData(fontFamily: 'test'),
        debugShowCheckedModeBanner: false,
        home: EventsPage());
  }
}
