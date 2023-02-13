import 'package:flutter/material.dart';
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
        bottomNavigationBar: BottomNavbar(),
        floatingActionButton: FloatingActionButton(
            onPressed: () {},
            child: Container(
              height: 400,
              width: 400,
              decoration: const BoxDecoration(
                image: DecorationImage(
                  image: AssetImage("assets/images/logo.png"),
                  opacity: 0.3,
                  fit: BoxFit.fill,
                ),
              ),
              child: const Icon(
                Icons.more_horiz,
                size: 50,
                color: Colors.white,
              ),
            )),
        // appBar: AppBar(
        //   title: const Text("Home Page"),
        // ),
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
