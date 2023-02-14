import 'package:flutter/material.dart';
Widget float1() {
    return Container(
      child: FloatingActionButton(
        onPressed: null,
        heroTag: "btn1",
        tooltip: 'First button',
        child: Icon(Icons.add),
      ),
    );
}

Widget float2() {
    return Container(
      child: FloatingActionButton(
        onPressed: null,
        heroTag: "btn2",
        tooltip: 'Second button',
        child: Icon(Icons.add),
      ),
    );
}

import "package:carousel_widget_3d/carousel_widget_3d.dart";
import "package:flutter/material.dart";
import "package:wowmomo/components/bottom_navbar.dart";

class NutritionPage extends StatefulWidget {
  const NutritionPage({Key? key}) : super(key: key);

  @override
  State<NutritionPage> createState() => _NutritionPageState();
}

class _NutritionPageState extends State<NutritionPage> {
  int _center = 0;

  void _incrementCounter() {
    setState(() {
      _center++;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: MyBottomNavbar(),
      floatingActionButton: FloatingActionButton(
        onPressed: _incrementCounter,
        tooltip: 'Increment',
        child: const Icon(Icons.next_plan_outlined),
      ),
      body: 
      
      
      // Center(
      //     child: Carousel3d(
      //   duration: Duration(seconds: 2),
      //   // displayRadius: 20,
      //   center: _center,
      //   items: [
      //     getCard(Colors.red, 0),
      //     getCard(Colors.green, 1),
      //     getCard(Colors.yellow, 2),
      //     getCard(Colors.orange, 3),
      //     // getCard(Colors.blue, 4),
      //     // getCard(Colors.purple, 5),
      //     // getCard(Colors.amberAccent, 6),
      //     // getCard(Colors.tealAccent, 7),
      //   ],
      // )),

      // SingleChildScrollView(
      //   child: Column(
      //     crossAxisAlignment: CrossAxisAlignment.center,
      //     children: [
      //       Container(
      //         decoration: const BoxDecoration(
      //           borderRadius: BorderRadius.only(
      //               bottomLeft: Radius.circular(30),
      //               bottomRight: Radius.circular(30)),
      //           color: Colors.amber,
      //         ),
      //         width: double.infinity,
      //         padding: EdgeInsets.all(25),
      //         child: const Text(
      //           "WOW NUTRITION",
      //           textAlign: TextAlign.center,
      //           style: TextStyle(fontSize: 20, fontWeight: FontWeight.w600),
      //         ),
      //       ),
      //       const SizedBox(
      //         height: 20,
      //       ),
      //       SizedBox(
      //         width: 300,
      //         child: Row(
      //           mainAxisAlignment: MainAxisAlignment.center,
      //           children: const [
      //             Expanded(flex: 1, child: Divider(color: Colors.black)),
      //             SizedBox(
      //               width: 10,
      //             ),
      //             Text(
      //               "Calorie Tracker",
      //               style: TextStyle(fontWeight: FontWeight.bold),
      //             ),
      //             SizedBox(
      //               width: 10,
      //             ),
      //             Expanded(child: Divider(color: Colors.black)),
      //           ],
      //         ),
      //       ),
      //       const SizedBox(
      //         height: 20,
      //       ),
      //       Row(
      //         mainAxisAlignment: MainAxisAlignment.center,
      //         children: const [
      //           CircleAvatar(
      //             radius: 25,
      //             backgroundImage: AssetImage("assets/images/wow_china.png"),
      //           ),
      //           SizedBox(
      //             width: 20,
      //           ),
      //           CircleAvatar(
      //             radius: 25,
      //             backgroundImage:
      //                 AssetImage("assets/images/wow_chicken.png"),
      //           ),
      //           SizedBox(
      //             width: 20,
      //           ),
      //           CircleAvatar(
      //             radius: 25,
      //             backgroundImage:
      //                 AssetImage("assets/images/wow_instant.png"),
      //           ),
      //           SizedBox(
      //             width: 20,
      //           ),
      //           CircleAvatar(
      //             radius: 25,
      //             backgroundImage: AssetImage("assets/images/logo.png"),
      //           ),
      //           SizedBox(
      //             width: 20,
      //           ),
      //           CircleAvatar(
      //             radius: 25,
      //             backgroundImage:
      //                 AssetImage("assets/images/china_belly.png"),
      //           ),
      //           SizedBox(
      //             width: 20,
      //           ),
      //         ],
      //       ),
      //       const SizedBox(
      //         height: 50,
      //       ),
      //       // Container(
      //       //   // color: Colors.red,
      //       //   width: MediaQuery.of(context).size.width,
      //       //   height: 650,
      //       //   decoration: BoxDecoration(
      //       //       // color: Colors.red,
      //       //       image: DecorationImage(
      //       //           fit: BoxFit.fitWidth,
      //       //           image: AssetImage("assets/images/img1.png"))),
      //       //   // child: Text("123"),
      //       //   child: Column(
      //       //     mainAxisAlignment: MainAxisAlignment.center,
      //       //     children: [
      //       //       SizedBox(
      //       //         height: 250,
      //       //       ),
      //       //       SizedBox(
      //       //         width: 150,
      //       //         height: 40,
      //       //         child: OutlinedButton(
      //       //           onPressed: () {},
      //       //           style: OutlinedButton.styleFrom(
      //       //             shape: RoundedRectangleBorder(
      //       //               borderRadius: BorderRadius.circular(5),
      //       //             ),
      //       //           ),
      //       //           child: const Text('ADD'),
      //       //         ),
      //       //       )
      //       //     ],
      //       //   ),
      //       // )

      //       Container(
      //         width: MediaQuery.of(context).size.width,
      //         color: Colors.red,
      //         height: 500,
      //         child: Carousel3d(
      //           center: 0,
      //           duration: const Duration(seconds: 1),
      //           items: [
      //             Image.asset('assets/images/wow_china.png'),
      //             Image.asset('assets/images/logo.png'),
      //           ],
      //         ),
      //       )
      //     ],
      //   ),
      // )
    );
  }
}

Widget getCard(Color color, int n) {
  return Container(
    width: 100,
    height: 200,
    decoration: BoxDecoration(
        color: color,
        border: Border.all(color: Colors.grey),
        borderRadius: BorderRadius.all(Radius.elliptical(20, 16))),
    child: Center(
      child: Text(
        n.toString(),
        style: TextStyle(fontSize: 40),
      ),
    ),
  );
}
