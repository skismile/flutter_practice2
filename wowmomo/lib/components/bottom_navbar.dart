import 'package:flutter/material.dart';


class BottomNavbar extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return BottomNavigationBar(
    type: BottomNavigationBarType.fixed, // Fixed
    backgroundColor: Colors.white, // <-- This works for fixed
    selectedItemColor: Colors.black,
    unselectedItemColor: Color.fromRGBO(249, 179, 19, 1),
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