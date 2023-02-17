import 'package:flutter/material.dart';
import 'package:flutter_speed_dial/flutter_speed_dial.dart';
import 'package:wowmomo/components/bottom_navbar.dart';

import 'package:wowmomo/components/fixed_navbar.dart';
import 'package:wowmomo/pages/home/scroll_page.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}


class _HomePageState extends State<HomePage> {
  List<bool> isSelected = [true, false];

  void togglestateHandler(newIndex) {
    setState(() {
      for (int index = 0; index < isSelected.length; index++) {
        if (index == newIndex) {
          isSelected[index] = true;
        } else {
          isSelected[index] = false;
        }
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        bottomNavigationBar: MyBottomNavbar(),
        floatingActionButton: MySpeedDial(),
        body: SizedBox(
            width: double.infinity,
            // height: MediaQuery.of(context).size.height,
            height: MediaQuery.of(context).size.height,
            // color: Colors.red,
            child: Stack(
              children: [
                ScrollPage(
                    togglestateHandler: togglestateHandler,
                    isSelected: isSelected,
                    index: isSelected[0] ? 0 : 1),
                FixedNavbar(),
              ],
            )));
  }
}

//! ------------------------------------------
Widget MySpeedDial() {
  return SpeedDial(
    // elevation: 3000,
    // child: Container(
    //   child: Text("sssssssssssssssssssssss"),
    // ),
    spacing: 20,
    spaceBetweenChildren: 10,
    animatedIcon: AnimatedIcons.menu_close,
    children: [
      SpeedDialChild(
          child: const CircleAvatar(
        backgroundImage: AssetImage("assets/images/logo.png"),
      )),
      SpeedDialChild(
          child: const CircleAvatar(
        backgroundImage: AssetImage("assets/images/china_belly.png"),
      )),
      SpeedDialChild(
          child: const CircleAvatar(
        backgroundImage: AssetImage("assets/images/wow_chicken.png"),
      )),
      SpeedDialChild(
          child: const CircleAvatar(
        backgroundImage: AssetImage("assets/images/wow_china.png"),
      )),
      SpeedDialChild(
          child: const CircleAvatar(
        backgroundImage: AssetImage("assets/images/wow_instant.png"),
      )),
    ],
  );
}
