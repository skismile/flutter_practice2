import 'package:flutter/material.dart';
import 'package:wowmomo/pages/login/login_page.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: "WoW MoMo App",
      home: LoginPage(),
    );
  }
}
