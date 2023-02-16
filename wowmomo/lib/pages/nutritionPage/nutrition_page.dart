import "package:flutter/material.dart";
import "package:wowmomo/components/bottom_navbar.dart";
import "package:wowmomo/components/round_carousel.dart";

class NutritionPage extends StatefulWidget {
  const NutritionPage({Key? key}) : super(key: key);

  @override
  State<NutritionPage> createState() => _NutritionPageState();
}

class _NutritionPageState extends State<NutritionPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: MyBottomNavbar(),
      body: Container(
        width: double.infinity,
        // color: Colors.red,
        child: SingleChildScrollView(
            child: SizedBox(
                height: 5000,
                child: Stack(
                  children: [
                    MyStack(context),
                    Positioned(top: 70, left: 0, right: 0, child: carouse()),
                    Positioned(
                      left: 0,
                      right: 0,
                      top: 100,
                      child: SizedBox(
                        width: 300,
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: const [
                            Expanded(
                                flex: 1, child: Divider(color: Colors.black)),
                            SizedBox(
                              width: 10,
                            ),
                            Text(
                              "Calorie Tracker",
                              style: TextStyle(fontWeight: FontWeight.bold),
                            ),
                            SizedBox(
                              width: 10,
                            ),
                            Expanded(child: Divider(color: Colors.black)),
                          ],
                        ),
                      ),
                    ),
                    Container(
                      decoration: const BoxDecoration(
                        borderRadius: BorderRadius.only(
                            bottomLeft: Radius.circular(30),
                            bottomRight: Radius.circular(30)),
                        color: Colors.amber,
                      ),
                      width: double.infinity,
                      padding: EdgeInsets.all(25),
                      child: const Text(
                        "WOW NUTRITION",
                        textAlign: TextAlign.center,
                        style: TextStyle(
                            fontSize: 20, fontWeight: FontWeight.w600),
                      ),
                    ),
                  ],
                ))),
      ),
    );
  }
}

Widget carouse() {
  return Container(
    height: 200,
    child: Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: const [
        CircleAvatar(
          radius: 28,
          backgroundImage: AssetImage("assets/images/wow_china.png"),
        ),
        SizedBox(
          width: 20,
        ),
        CircleAvatar(
          radius: 28,
          backgroundImage: AssetImage("assets/images/wow_chicken.png"),
        ),
        SizedBox(
          width: 20,
        ),
        CircleAvatar(
          radius: 28,
          backgroundImage: AssetImage("assets/images/wow_instant.png"),
        ),
        SizedBox(
          width: 20,
        ),
        CircleAvatar(
          radius: 28,
          backgroundImage: AssetImage("assets/images/logo.png"),
        ),
        SizedBox(
          width: 20,
        ),
        CircleAvatar(
          radius: 28,
          backgroundImage: AssetImage("assets/images/china_belly.png"),
        ),
        SizedBox(
          width: 20,
        ),
      ],
    ),
  );
}

Widget MyStack(context) {
  return Stack(
    // mainAxisAlignment: MainAxisAlignment.center,
    children: [
      Positioned(
        top: 300,
        child: Container(
          // color: Colors.red,
          width: MediaQuery.of(context).size.width,
          height: 650,
          decoration: BoxDecoration(
              // color: Colors.red,
              image: DecorationImage(
                  fit: BoxFit.fitWidth,
                  image: AssetImage("assets/images/test_1.png"))),
          // child: Text("123"),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              SizedBox(
                height: 250,
              ),
              SizedBox(
                width: 150,
                height: 40,
                child: OutlinedButton(
                  onPressed: () {},
                  style: OutlinedButton.styleFrom(
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(5),
                    ),
                  ),
                  child: const Text('ADD'),
                ),
              )
            ],
          ),
        ),
      ),
      Positioned(top: 230, left: 0, right: 0, child: RoundCarousel()),
    ],
  );
}
