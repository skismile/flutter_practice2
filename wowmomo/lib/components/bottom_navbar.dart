import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:wowmomo/pages/account/account.dart';
import 'package:wowmomo/pages/home/home_page.dart';
import 'package:wowmomo/pages/nutritionPage/nutrition_page.dart';
import 'package:wowmomo/pages/offerpage/offer_page.dart';
import 'package:wowmomo/pages/wowclubpage/wowclub_page.dart';

class MyBottomNavbar extends StatefulWidget {
  @override
  State<MyBottomNavbar> createState() => _MyBottomNavbarState();
}

class _MyBottomNavbarState extends State<MyBottomNavbar> {
  int index = 0;
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return BottomNavigationBar(
      onTap: (value) {
        value == 0
            ? Get.to(HomePage())
            : value == 1
                ? Get.to(OfferPage())
                : value == 2
                    ? Get.to(WowclubPage())
                    : value == 3
                        ? Get.to(NutritionPage())
                        : Get.to(AccountPage());
        setState(() {
          index = value;
        });
        print(value);
      },
      type: BottomNavigationBarType.fixed, // Fixed
      backgroundColor: Colors.white, // <-- This works for fixed
      selectedItemColor: Colors.black,
      unselectedItemColor: const Color.fromRGBO(249, 179, 19, 1),
      currentIndex: index,
      items: const [
        BottomNavigationBarItem(
          icon: Icon(Icons.restaurant),
          label: 'Home',
        ),
        BottomNavigationBarItem(
          icon: Icon(Icons.local_offer_outlined),
          label: 'Offers',
        ),
        BottomNavigationBarItem(
          icon: Icon(Icons.view_in_ar_outlined),
          label: 'Wow Club',
        ),
        BottomNavigationBarItem(
          icon: Icon(Icons.ramen_dining),
          label: 'Nutrition',
        ),
        BottomNavigationBarItem(
          icon: Icon(Icons.account_box_outlined),
          label: 'Account',
        ),
      ],
    );
  }
}
