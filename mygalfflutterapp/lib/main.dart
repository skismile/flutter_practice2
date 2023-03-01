import 'dart:developer';

import 'package:flutter/material.dart';
import 'package:get/get_navigation/get_navigation.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:my_galf/components/colors.dart';
import 'package:my_galf/pages/events_page/events_page.dart';

import 'package:my_galf/pages/home_page/homepage.dart';
import 'package:my_galf/pages/lounge_page/lounge_page.dart';
import 'package:my_galf/pages/panelist/panelist.dart';
import 'package:my_galf/pages/product_details_page/product_details_page.dart';
import 'package:my_galf/pages/product_page/product_page.dart';
import 'package:my_galf/pages/services_page/services_page.dart';
import 'package:my_galf/pages/corporate_wellness_page/corporate_wellness_page.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      theme: ThemeData(
        textTheme: GoogleFonts.rubikTextTheme(
          Theme.of(context).textTheme,
        ),
        primarySwatch: const MaterialColor(
          0xFF222F38, // 0% comes in here, this will be color picked if no shade is selected when defining a Color property which doesn’t require a swatch.
          <int, Color>{
            50: mainThemeColor, //10%
            100: mainThemeColor, //20%
            200: mainThemeColor, //30%
            300: mainThemeColor, //40%
            400: mainThemeColor, //50%
            500: mainThemeColor, //60%
            600: mainThemeColor, //70%
            700: mainThemeColor, //80%
            800: mainThemeColor, //90%
            900: mainThemeColor, //100%
          },
        ),
      ),
      debugShowCheckedModeBanner: false,
      home: Homepage(),
      initialRoute: "/",
      getPages: [
        GetPage(
          name: "/events",
          page: () => EventsPage(),
        ),
        GetPage(
          name: "/",
          page: () => Homepage(),
        ),
        GetPage(
          name: "/services",
          page: () => ServicesPage(),
        ),
        GetPage(
          name: "/products",
          page: () => ProductPage(),
        ),
        GetPage(
          name: "/corporate-wellness",
          page: () => CorporateWellnessPage(),
        ),
        GetPage(
          name: "/lounge",
          page: () => LoungePage(),
        ),
        GetPage(
          name: "/pdp",
          page: () => ProductDetailsPage(),
        ),
        GetPage(
          name: "/panelist",
          page: () => Panelist(),
        ),
      ],
    );
  }
}
