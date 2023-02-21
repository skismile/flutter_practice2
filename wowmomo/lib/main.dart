import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:wowmomo/pages/brand/brand_binding.dart';
import 'package:wowmomo/pages/home/home_page.dart';
import 'package:wowmomo/pages/login/login_page.dart';
import 'package:wowmomo/pages/otp/otp.dart';

void main() {
  BrandBinding().dependencies();
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return GetMaterialApp(
      theme: ThemeData(
          outlinedButtonTheme: OutlinedButtonThemeData(
            style: OutlinedButton.styleFrom(
                backgroundColor: Colors.amber.shade100,
                shape: RoundedRectangleBorder(),
                side: BorderSide(color: Colors.amber)),
          ),
          primarySwatch: Colors.amber),
      debugShowCheckedModeBanner: false,
      title: "WoW MoMo App",
      home: LoginPage(),
      getPages: [
        GetPage(
          name: "/otp",
          page: () => Otp(),
        ),
        GetPage(
          name: "/",
          page: () => HomePage(),
        ),
      ],
    );
  }
}

