import 'package:flutter/material.dart';
import 'package:my_galf/components/navbar.dart';
import 'package:carousel_slider/carousel_slider.dart';

class Homepage extends StatelessWidget {
  const Homepage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        // appBar: AppBar(
        //   title: Text("Home Page"),
        // ),
        body: Container(
      width: double.infinity,
      child: ListView(
        children: [
          //navbar is component
          Navbar(),
          //todo -  hero carousel shop now button pending
          HeroCarousel(context),
          const SizedBox(
            height: 30,
          ),
          //Shop by brads
          BrandCarousel(context),
          SizedBox(
            height: 20,
          ),
          Container(
            // child: Image.asset(
            //   "assets/images/hero2.png",
            //   width: MediaQuery.of(context).size.width,
            // ),
            height: 600,
            decoration: const BoxDecoration(
                // color: Colors.red,
                image: DecorationImage(
                    fit: BoxFit.fill,
                    image: AssetImage("assets/images/hero2.png"))),
          ),
          ProgressArea(context),
          CorporateArea(context),
          const SizedBox(
            height: 30,
          ),
          CorporateWelness(context),
          const SizedBox(
            height: 20,
          ),
          TopPicks(context),
          const SizedBox(
            height: 10,
          ),
          FitnessFriday(context),
          AdvantageMygalf(context),
          Blog(context),
          Footer(context),
          const SizedBox(
            height: 5000,
          ),
        ],
      ),
    ));
  }
}

//! multy part widgets created bellow

Widget Blog(context) {
  return Container(
    height: 800,
    width: MediaQuery.of(context).size.width * 0.9,
    child: Column(
      children: [
        const SizedBox(
          height: 20,
        ),
        const Text(
          "Blogs",
          style: TextStyle(fontWeight: FontWeight.bold, fontSize: 30),
        ),
        const SizedBox(
          height: 15,
        ),
        const Text(
          "Learn about the latest trends and topics on Corporate\nWellness with the Galf Blog.",
          textAlign: TextAlign.center,
        ),
        const SizedBox(
          height: 15,
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Container(
              // color: Colors.green,
              height: 600,
              width: 350,
              child: Column(
                children: [
                  Container(
                    // color: Colors.red,
                    height: 270,
                    width: 300,
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Container(
                          height: 200,
                          width: 300,
                          decoration: const BoxDecoration(
                              image: DecorationImage(
                                  fit: BoxFit.cover,
                                  image: AssetImage(
                                      "assets/images/Rectangle_43.png"))),
                        ),
                        const Text(
                          "Lorem ipsum dolor sit amet,\nconsectetur adipiscing elit.",
                          style: TextStyle(
                              fontSize: 20, fontWeight: FontWeight.bold),
                        )
                      ],
                    ),
                  ),
                  Container(
                    // color: Colors.red,
                    height: 270,
                    width: 300,
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Container(
                          height: 200,
                          width: 300,
                          decoration: const BoxDecoration(
                              image: DecorationImage(
                                  fit: BoxFit.cover,
                                  image: AssetImage(
                                      "assets/images/Rectangle_43.png"))),
                        ),
                        const Text(
                          "Lorem ipsum dolor sit amet,\nconsectetur adipiscing elit.",
                          style: TextStyle(
                              fontSize: 20, fontWeight: FontWeight.bold),
                        )
                      ],
                    ),
                  )
                ],
              ),
            ),
            const SizedBox(
              width: 5,
            ),
            Container(
                // color: Color.fromARGB(255, 62, 79, 63),
                height: 600,
                width: 450,
                child: Column(
                  children: [
                    Container(
                      // color: Colors.red,
                      height: 290,
                      width: 450,
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Container(
                            height: 230,
                            width: 450,
                            decoration: const BoxDecoration(
                                image: DecorationImage(
                                    fit: BoxFit.cover,
                                    image: AssetImage(
                                        "assets/images/Group_106.png"))),
                          ),
                          const Text(
                            "Lorem ipsum dolor sit amet,\nconsectetur adipiscing elit.",
                            style: TextStyle(
                                fontSize: 20, fontWeight: FontWeight.bold),
                          )
                        ],
                      ),
                    ),
                    Container(
                      // color: Colors.red,
                      height: 290,
                      width: 450,
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Container(
                            height: 230,
                            width: 450,
                            decoration: const BoxDecoration(
                                image: DecorationImage(
                                    fit: BoxFit.cover,
                                    image: AssetImage(
                                        "assets/images/Group_106.png"))),
                          ),
                          const Text(
                            "Lorem ipsum dolor sit amet,\nconsectetur adipiscing elit.",
                            style: TextStyle(
                                fontSize: 20, fontWeight: FontWeight.bold),
                          )
                        ],
                      ),
                    ),
                  ],
                )),
            const SizedBox(
              width: 5,
            ),
            Container(
              // color: Colors.green,
              height: 600,
              width: 350,
              child: Column(
                children: [
                  Container(
                    // color: Colors.red,
                    height: 270,
                    width: 300,
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Container(
                          height: 200,
                          width: 300,
                          decoration: const BoxDecoration(
                              image: DecorationImage(
                                  fit: BoxFit.cover,
                                  image: AssetImage(
                                      "assets/images/Rectangle_43.png"))),
                        ),
                        const Text(
                          "Lorem ipsum dolor sit amet,\nconsectetur adipiscing elit.",
                          style: TextStyle(
                              fontSize: 20, fontWeight: FontWeight.bold),
                        )
                      ],
                    ),
                  ),
                  Container(
                    // color: Colors.red,
                    height: 270,
                    width: 300,
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Container(
                          height: 200,
                          width: 300,
                          decoration: const BoxDecoration(
                              image: DecorationImage(
                                  fit: BoxFit.cover,
                                  image: AssetImage(
                                      "assets/images/Rectangle_43.png"))),
                        ),
                        const Text(
                          "Lorem ipsum dolor sit amet,\nconsectetur adipiscing elit.",
                          style: TextStyle(
                              fontSize: 20, fontWeight: FontWeight.bold),
                        )
                      ],
                    ),
                  )
                ],
              ),
            ),
            const SizedBox(
              width: 5,
            ),
          ],
        ),
      ],
    ),
  );
}

Widget AdvantageMygalf(context) {
  return Container(
    height: 300,
    width: MediaQuery.of(context).size.width,
    decoration: const BoxDecoration(
        image: DecorationImage(
            fit: BoxFit.cover,
            image: AssetImage("assets/images/Rectangle_74.png"))),
    child: Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        const Text(
          "ADVANTAGE MYGALF",
          style: TextStyle(
              color: Colors.white, fontWeight: FontWeight.bold, fontSize: 30),
        ),
        SizedBox(
          height: 10,
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            Image.asset("assets/icons/Group_260.png"),
            Image.asset("assets/icons/Group_261.png"),
            Image.asset("assets/icons/Group_262.png"),
            Image.asset("assets/icons/Group_263.png"),
            Image.asset("assets/icons/Group_264.png"),
            Image.asset("assets/icons/Group_265.png"),
          ],
        ),
      ],
    ),
  );
}

Widget FitnessFriday(context) {
  return Container(
    width: MediaQuery.of(context).size.width,
    height: 400,
    decoration: const BoxDecoration(
        image: DecorationImage(
            fit: BoxFit.cover,
            image: AssetImage("assets/images/Group_278.png"))),
    child: Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            Column(
              children: [
                const Text(
                  "09 Dec 2022, 07:00 AM",
                  style: TextStyle(
                      color: Colors.white, fontWeight: FontWeight.bold),
                ),
                const SizedBox(
                  height: 10,
                ),
                const Text("AFLI EXCLUSIVE FITNESS FRIDAY",
                    style: TextStyle(
                        color: Colors.white,
                        fontWeight: FontWeight.bold,
                        fontSize: 20)),
                const SizedBox(
                  height: 10,
                ),
                const Text(
                    "Strengthening, Low Intensity Ergonomic Stretching &\nFlexibility Session By Girish Bindra",
                    style: TextStyle(color: Colors.white)),
                const SizedBox(
                  height: 20,
                ),
                Row(
                  children: [
                    SizedBox(
                      width: 150,
                      height: 50,
                      child: ElevatedButton(
                          style: ElevatedButton.styleFrom(
                              backgroundColor: Colors.black),
                          onPressed: () {},
                          child: Text("Register")),
                    ),
                    SizedBox(
                      width: 10,
                    ),
                    SizedBox(
                      width: 150,
                      height: 50,
                      child: OutlinedButton(
                          style: OutlinedButton.styleFrom(
                            side: BorderSide(width: 2, color: Colors.white),
                          ),
                          onPressed: () {},
                          child: const Text(
                            "View All",
                            style: TextStyle(color: Colors.white),
                          )),
                    )
                  ],
                )
              ],
            ),
            const SizedBox(
              height: 250,
              child: VerticalDivider(
                color: Colors.white,
                thickness: 2,
              ),
            ),
            Column(
              children: [
                const Text(
                  "09 Dec 2022, 07:00 AM",
                  style: TextStyle(
                      color: Colors.white, fontWeight: FontWeight.bold),
                ),
                const SizedBox(
                  height: 10,
                ),
                const Text("AFLI EXCLUSIVE FITNESS FRIDAY",
                    style: TextStyle(
                        color: Colors.white,
                        fontWeight: FontWeight.bold,
                        fontSize: 20)),
                const SizedBox(
                  height: 10,
                ),
                const Text(
                    "Strengthening, Low Intensity Ergonomic Stretching &\nFlexibility Session By Girish Bindra",
                    style: TextStyle(color: Colors.white)),
                const SizedBox(
                  height: 20,
                ),
                Row(
                  children: [
                    SizedBox(
                      width: 150,
                      height: 50,
                      child: ElevatedButton(
                          style: ElevatedButton.styleFrom(
                              backgroundColor: Colors.black),
                          onPressed: () {},
                          child: Text("Register")),
                    ),
                    SizedBox(
                      width: 10,
                    ),
                    SizedBox(
                      width: 150,
                      height: 50,
                      child: OutlinedButton(
                          style: OutlinedButton.styleFrom(
                            side: BorderSide(width: 2, color: Colors.white),
                          ),
                          onPressed: () {},
                          child: const Text(
                            "View All",
                            style: TextStyle(color: Colors.white),
                          )),
                    )
                  ],
                )
              ],
            ),
          ],
        ),
        const SizedBox(
          height: 20,
        ),
        SizedBox(
            width: 150,
            height: 50,
            child: ElevatedButton(onPressed: () {}, child: Text("View More")))
      ],
    ),
  );
}

Widget Footer(context) {
  return Container(
    color: Colors.black,
    width: MediaQuery.of(context).size.width,
    // height: 700,
    child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Container(
            // color: Colors.grey,
            width: MediaQuery.of(context).size.width * 0.9,
            height: 400,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Container(
                  height: 250,
                  // width: 200,
                  // color: Colors.red,
                  child: Column(
                      // crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        const Text(
                          "GALF SHOPPING",
                          textAlign: TextAlign.start,
                          style: TextStyle(
                              color: Colors.amber, fontWeight: FontWeight.bold),
                        ),
                        const SizedBox(
                          height: 5,
                        ),
                        const SizedBox(
                          width: 100,
                          child: Divider(
                            color: Colors.white,
                            thickness: 3,
                          ),
                        ),
                        const SizedBox(
                          height: 10,
                        ),
                        Row(
                          children: [
                            SizedBox(
                              child: Column(
                                children: const [
                                  Text(
                                    "Fitness Watches",
                                    style: TextStyle(
                                        height: 2, color: Colors.white),
                                  ),
                                  Text(
                                    "Sports Shoes",
                                    style: TextStyle(
                                        height: 2, color: Colors.white),
                                  ),
                                  Text(
                                    "Sports Nutrition",
                                    style: TextStyle(
                                        height: 2, color: Colors.white),
                                  ),
                                  Text(
                                    "Fitness Accessories",
                                    style: TextStyle(
                                        height: 2, color: Colors.white),
                                  ),
                                  Text(
                                    "Cycling",
                                    style: TextStyle(
                                        height: 2, color: Colors.white),
                                  ),
                                  Text(
                                    "Running",
                                    style: TextStyle(
                                        height: 2, color: Colors.white),
                                  ),
                                ],
                              ),
                            ),
                            SizedBox(
                              child: Column(
                                children: const [
                                  Text(
                                    "Triathlon",
                                    style: TextStyle(
                                        height: 2, color: Colors.white),
                                  ),
                                  Text(
                                    "Fitness Apparels",
                                    style: TextStyle(
                                        height: 2, color: Colors.white),
                                  ),
                                  Text(
                                    "Wellness Kitchens",
                                    style: TextStyle(
                                        height: 2, color: Colors.white),
                                  ),
                                  Text(
                                    "Health Foods",
                                    style: TextStyle(
                                        height: 2, color: Colors.white),
                                  ),
                                  Text(
                                    "Footwear",
                                    style: TextStyle(
                                        height: 2, color: Colors.white),
                                  ),
                                  Text(
                                    "Wellness Books & Artefacts",
                                    style: TextStyle(
                                        height: 2, color: Colors.white),
                                  ),
                                ],
                              ),
                            ),
                          ],
                        ),
                      ]),
                ),
                const SizedBox(
                  height: 250,
                  child: VerticalDivider(
                    color: Colors.white,
                    thickness: 2,
                  ),
                ),
                Container(
                  height: 280,
                  // width: 200,
                  // color: Colors.red,
                  child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        const Text(
                          "Brands",
                          textAlign: TextAlign.start,
                          style: TextStyle(
                              color: Colors.amber, fontWeight: FontWeight.bold),
                        ),
                        const SizedBox(
                          height: 5,
                        ),
                        const SizedBox(
                          width: 100,
                          child: Divider(
                            color: Colors.white,
                            thickness: 3,
                          ),
                        ),
                        const SizedBox(
                          height: 10,
                        ),
                        Row(
                          children: [
                            SizedBox(
                              child: Column(
                                children: const [
                                  Text(
                                    "MyGALF",
                                    style: TextStyle(
                                        height: 2, color: Colors.white),
                                  ),
                                  Text(
                                    "Garmin",
                                    style: TextStyle(
                                        height: 2, color: Colors.white),
                                  ),
                                  Text(
                                    "COROS",
                                    style: TextStyle(
                                        height: 2, color: Colors.white),
                                  ),
                                  Text(
                                    "Foodstrong",
                                    style: TextStyle(
                                        height: 2, color: Colors.white),
                                  ),
                                  Text(
                                    "SUUNTO®",
                                    style: TextStyle(
                                        height: 2, color: Colors.white),
                                  ),
                                  Text(
                                    "2XU India",
                                    style: TextStyle(
                                        height: 2, color: Colors.white),
                                  ),
                                  Text(
                                    "Vibram",
                                    style: TextStyle(
                                        height: 2, color: Colors.white),
                                  ),
                                  Text(
                                    "Brooks",
                                    style: TextStyle(
                                        height: 2, color: Colors.white),
                                  ),
                                ],
                              ),
                            ),
                            SizedBox(
                              child: Column(
                                children: const [
                                  Text(
                                    "Saucony India",
                                    style: TextStyle(
                                        height: 2, color: Colors.white),
                                  ),
                                  Text(
                                    "Tifosi",
                                    style: TextStyle(
                                        height: 2, color: Colors.white),
                                  ),
                                  Text(
                                    "Tacx",
                                    style: TextStyle(
                                        height: 2, color: Colors.white),
                                  ),
                                  Text(
                                    "Spiritude",
                                    style: TextStyle(
                                        height: 2, color: Colors.white),
                                  ),
                                  Text(
                                    "EOnz",
                                    style: TextStyle(
                                        height: 2, color: Colors.white),
                                  ),
                                  Text(
                                    "Fast&Up",
                                    style: TextStyle(
                                        height: 2, color: Colors.white),
                                  ),
                                  Text(
                                    "Healthtrek",
                                    style: TextStyle(
                                        height: 2, color: Colors.white),
                                  ),
                                  Text(
                                    "Healthcare LLP",
                                    style: TextStyle(
                                        height: 2, color: Colors.white),
                                  ),
                                  Text(
                                    "All Brands >>",
                                    style: TextStyle(
                                        height: 2, color: Colors.white),
                                  ),
                                ],
                              ),
                            ),
                          ],
                        ),
                      ]),
                ),
                const SizedBox(
                  height: 250,
                  child: VerticalDivider(
                    color: Colors.white,
                    thickness: 2,
                  ),
                ),
                Container(
                  height: 250,
                  // width: 200,
                  // color: Colors.red,
                  child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        const Text(
                          "GALF SHOPPING",
                          textAlign: TextAlign.start,
                          style: TextStyle(
                              color: Colors.amber, fontWeight: FontWeight.bold),
                        ),
                        const SizedBox(
                          height: 5,
                        ),
                        const SizedBox(
                          width: 100,
                          child: Divider(
                            color: Colors.white,
                            thickness: 3,
                          ),
                        ),
                        const SizedBox(
                          height: 10,
                        ),
                        Row(
                          children: [
                            SizedBox(
                              child: Column(
                                children: const [
                                  Text(
                                    "Fitness Watches",
                                    style: TextStyle(
                                        height: 2, color: Colors.white),
                                  ),
                                  Text(
                                    "Sports Shoes",
                                    style: TextStyle(
                                        height: 2, color: Colors.white),
                                  ),
                                  Text(
                                    "Sports Nutrition",
                                    style: TextStyle(
                                        height: 2, color: Colors.white),
                                  ),
                                  Text(
                                    "Fitness Accessories",
                                    style: TextStyle(
                                        height: 2, color: Colors.white),
                                  ),
                                  Text(
                                    "Cycling",
                                    style: TextStyle(
                                        height: 2, color: Colors.white),
                                  ),
                                  Text(
                                    "Running",
                                    style: TextStyle(
                                        height: 2, color: Colors.white),
                                  ),
                                ],
                              ),
                            ),
                            SizedBox(
                              child: Column(
                                children: const [
                                  Text(
                                    "Triathlon",
                                    style: TextStyle(
                                        height: 2, color: Colors.white),
                                  ),
                                  Text(
                                    "Fitness Apparels",
                                    style: TextStyle(
                                        height: 2, color: Colors.white),
                                  ),
                                  Text(
                                    "Wellness Kitchens",
                                    style: TextStyle(
                                        height: 2, color: Colors.white),
                                  ),
                                  Text(
                                    "Health Foods",
                                    style: TextStyle(
                                        height: 2, color: Colors.white),
                                  ),
                                  Text(
                                    "Footwear",
                                    style: TextStyle(
                                        height: 2, color: Colors.white),
                                  ),
                                  Text(
                                    "Wellness Books & Artefacts",
                                    style: TextStyle(
                                        height: 2, color: Colors.white),
                                  ),
                                ],
                              ),
                            ),
                          ],
                        ),
                      ]),
                ),
                const SizedBox(
                  height: 250,
                  child: VerticalDivider(
                    color: Colors.white,
                    thickness: 2,
                  ),
                ),
                Container(
                  height: 250,
                  // width: 200,
                  // color: Colors.red,
                  child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        const Text(
                          "GALF SHOPPING",
                          textAlign: TextAlign.start,
                          style: TextStyle(
                              color: Colors.amber, fontWeight: FontWeight.bold),
                        ),
                        const SizedBox(
                          height: 5,
                        ),
                        const SizedBox(
                          width: 100,
                          child: Divider(
                            color: Colors.white,
                            thickness: 3,
                          ),
                        ),
                        const SizedBox(
                          height: 10,
                        ),
                        Row(
                          children: [
                            SizedBox(
                              child: Column(
                                children: const [
                                  Text(
                                    "Fitness Watches",
                                    style: TextStyle(
                                        height: 2, color: Colors.white),
                                  ),
                                  Text(
                                    "Sports Shoes",
                                    style: TextStyle(
                                        height: 2, color: Colors.white),
                                  ),
                                  Text(
                                    "Sports Nutrition",
                                    style: TextStyle(
                                        height: 2, color: Colors.white),
                                  ),
                                  Text(
                                    "Fitness Accessories",
                                    style: TextStyle(
                                        height: 2, color: Colors.white),
                                  ),
                                  Text(
                                    "Cycling",
                                    style: TextStyle(
                                        height: 2, color: Colors.white),
                                  ),
                                  Text(
                                    "Running",
                                    style: TextStyle(
                                        height: 2, color: Colors.white),
                                  ),
                                ],
                              ),
                            ),
                            SizedBox(
                              child: Column(
                                children: const [
                                  Text(
                                    "Triathlon",
                                    style: TextStyle(
                                        height: 2, color: Colors.white),
                                  ),
                                  Text(
                                    "Fitness Apparels",
                                    style: TextStyle(
                                        height: 2, color: Colors.white),
                                  ),
                                  Text(
                                    "Wellness Kitchens",
                                    style: TextStyle(
                                        height: 2, color: Colors.white),
                                  ),
                                  Text(
                                    "Health Foods",
                                    style: TextStyle(
                                        height: 2, color: Colors.white),
                                  ),
                                  Text(
                                    "Footwear",
                                    style: TextStyle(
                                        height: 2, color: Colors.white),
                                  ),
                                  Text(
                                    "Wellness Books & Artefacts",
                                    style: TextStyle(
                                        height: 2, color: Colors.white),
                                  ),
                                ],
                              ),
                            ),
                          ],
                        ),
                      ]),
                ),
                const SizedBox(
                  height: 250,
                  child: VerticalDivider(
                    color: Colors.white,
                    thickness: 2,
                  ),
                )
              ],
            ),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              const SizedBox(
                width: 200,
              ),
              Container(
                child: Image.asset("assets/images/Googleplay.png"),
              ),
              const SizedBox(
                width: 20,
              ),
              Container(
                child: Image.asset("assets/images/appstore.png"),
              ),
            ],
          ),
          const SizedBox(
            height: 20,
          ),
          Container(
            color: Color.fromARGB(255, 55, 70, 81),
            height: 100,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: const [
                Text("© 2022, My Gulf. All rights reserved"),
                Text("Terms and Conditions | Privacy Policy"),
              ],
            ),
          )
        ]),
  );
}

Widget TopPicks(context) {
  return Container(
    // color: Colors.red,
    // height: 20,00
    child: Column(children: [
      const Text(
        "My GALF Top Picks",
        style: TextStyle(fontSize: 30, fontWeight: FontWeight.bold),
      ),
      const SizedBox(
        height: 20,
      ),
      const Text(
        "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Proin sit\n amet tincidunt justo, at semper eros. ",
        textAlign: TextAlign.center,
      ),
      const SizedBox(
        height: 20,
      ),
      Container(
        width: MediaQuery.of(context).size.width,
        height: 800,
        child: GridView.count(
          physics: const NeverScrollableScrollPhysics(),
          crossAxisCount: 4,
          crossAxisSpacing: 1.0,
          // mainAxisSpacing: 2.0,/
          children: List.generate(8, (index) {
            return Center(
              child: TopPickCard(context),
            );
          }),
        ),
      ),
    ]),
  );
}

Widget TopPickCard(context) {
  return Container(
    color: Color.fromARGB(255, 255, 255, 255),
    height: 360,
    width: 267,
    child: Column(
      children: [
        Container(
          height: 230,
          width: 266,
          child: Image.asset("assets/images/shoe.png"),
          decoration: BoxDecoration(
            color: Color.fromARGB(255, 240, 240, 240),
            borderRadius: BorderRadius.circular(20),
          ),
        ),
        Expanded(
            child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const SizedBox(
              height: 5,
            ),
            const Text(
              "Food Strong Daily Protein",
              textAlign: TextAlign.start,
              style: TextStyle(fontSize: 17, fontWeight: FontWeight.w700),
            ),
            const Text(
              "Lorem ipsum dolor sit amet, consectetur \n adipiscing elit.",
              textAlign: TextAlign.start,
              style: TextStyle(fontSize: 13, fontWeight: FontWeight.w400),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: const [
                Text("Stars"),
                Text("strike price"),
                Text("price")
              ],
            ),
          ],
        )),
        SizedBox(
          height: 50,
          width: MediaQuery.of(context).size.width * 0.8,
          child: ElevatedButton(
              style: ElevatedButton.styleFrom(
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(5), // <-- Radius
                ),
              ),
              onPressed: () {},
              child: const Text("Shop Now")),
        )
      ],
    ),
  );
}

Widget CorporateWelness(context) {
  return Container(
    decoration: const BoxDecoration(
        image: DecorationImage(
            image: AssetImage("assets/images/Rectangle.png"),
            fit: BoxFit.fill)),
    width: MediaQuery.of(context).size.width,
    height: 500,
    child: Row(
      mainAxisAlignment: MainAxisAlignment.spaceAround,
      children: [
        Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const Text(
              "Corporate Wellness\nMade Fun & Easy",
              style: TextStyle(
                  color: Colors.white,
                  fontSize: 40,
                  fontWeight: FontWeight.bold),
            ),
            const Text(
                " Manage all Employee Wellness activities with one Subscription \n Under one  Platform",
                style: TextStyle(
                  color: Colors.white,
                )),
            const Text(
                " \u2022 Manage all Employee Wellness in one Platform\n \u2022 Wellness Surveys, Strategies and  Analytics\n \u2022 Leadership Dashboard\n \u2022 Bonus Rewards for Employees\n \u2022 Access to Premium Events",
                style: TextStyle(
                    color: Colors.white,
                    fontWeight: FontWeight.bold,
                    height: 2)),
            const SizedBox(
              height: 20,
            ),
            Row(
              children: [
                SizedBox(
                  width: 160,
                  height: 50,
                  child: ElevatedButton(
                      onPressed: () {}, child: Text("Schdule a free demo")),
                ),
                const SizedBox(
                  width: 20,
                ),
                SizedBox(
                  height: 50,
                  width: 160,
                  child: OutlinedButton(
                      style: OutlinedButton.styleFrom(
                        side: BorderSide(width: 2, color: Colors.blue),
                      ),
                      onPressed: () {},
                      child: Text("Start free trial")),
                )
              ],
            )
          ],
        ),
        Image.asset("assets/images/my-gluf-home3.png")
      ],
    ),
  );
}

Widget CorporateArea(context) {
  return Container(
    child: Column(
      children: [
        const SizedBox(
          height: 15,
        ),
        const Text(
          "Our Corporates",
          style: TextStyle(fontWeight: FontWeight.bold, fontSize: 30),
        ),
        const SizedBox(
          height: 20,
        ),
        const Text(
          "We have happily transformed employee health in companies from more \n than 26 countries",
          textAlign: TextAlign.center,
          style: TextStyle(fontSize: 15),
        ),
        Image.asset(
          "assets/images/Group_198.png",
        ),
        SizedBox(
            width: 150,
            height: 50,
            child: ElevatedButton(
                onPressed: () {}, child: const Text("View More")))
      ],
    ),
  );
}

Widget ProgressArea(context) {
  return SizedBox(
    height: 700,
    width: MediaQuery.of(context).size.width,
    child: Stack(
      children: [
        ProgressCard(context),
        Positioned(
          top: 130,
          left: 240,
          // right: 0,
          child: Container(
            decoration: BoxDecoration(
                color: Colors.grey[100],
                borderRadius: BorderRadius.circular(10)),
            width: MediaQuery.of(context).size.width * 0.7,
            height: 200,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Image.asset("assets/icons/Vector.png"),
                    const SizedBox(
                      height: 10,
                    ),
                    const Text(
                      "28,58,000",
                      style:
                          TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
                    ),
                    const SizedBox(
                      height: 10,
                    ),
                    const Text(
                      "Steps",
                      style: TextStyle(fontSize: 15),
                    ),
                  ],
                ),
                Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Image.asset("assets/icons/Vector_2.png"),
                    const SizedBox(
                      height: 10,
                    ),
                    const Text(
                      "18,15,800",
                      style:
                          TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
                    ),
                    const SizedBox(
                      height: 10,
                    ),
                    const Text(
                      "Calories",
                      style: TextStyle(fontSize: 15),
                    ),
                  ],
                ),
                Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Image.asset("assets/icons/distance.png"),
                    const SizedBox(
                      height: 10,
                    ),
                    const Text(
                      "2177.8km",
                      style:
                          TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
                    ),
                    const SizedBox(
                      height: 10,
                    ),
                    const Text(
                      "Distence",
                      style: TextStyle(fontSize: 15),
                    ),
                  ],
                ),
                Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Image.asset("assets/icons/point.png"),
                    const SizedBox(
                      height: 10,
                    ),
                    const Text(
                      "12,500",
                      style:
                          TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
                    ),
                    const SizedBox(
                      height: 10,
                    ),
                    const Text(
                      "Points",
                      style: TextStyle(fontSize: 15),
                    ),
                  ],
                ),
              ],
            ),
          ),
        ),
      ],
    ),
  );
}

Widget ProgressCard(context) {
  return Column(
    children: [
      Container(
        height: 250,
        width: MediaQuery.of(context).size.width,
        decoration: const BoxDecoration(
            // color: Colors.red,
            image: DecorationImage(
                fit: BoxFit.fill,
                image: AssetImage("assets/images/blue_background.png"))),
        child: Column(
          children: const [
            SizedBox(
              height: 15,
            ),
            Text(
              "Progress & Earn Money",
              style: TextStyle(color: Colors.white, fontSize: 30),
            ),
            SizedBox(
              height: 10,
            ),
            Text(
              "Revolutionizing employee wellness journeys around the globe.\nKickstart yours today & get and earn money",
              textAlign: TextAlign.center,
              style: TextStyle(color: Colors.white, fontSize: 10),
            ),
            SizedBox(
              height: 10,
            ),
          ],
        ),
      ),
      Container(
        height: 450,
        color: Color(0xFF222f38),
        child: Column(
          children: [
            const SizedBox(
              height: 100,
            ),
            const Text(
              "Join MyGALF Club",
              style: TextStyle(color: Colors.white, fontSize: 30),
            ),
            const SizedBox(
              height: 10,
            ),
            const Text(
              "Join MyGalf Club, your one-stop wellness partner",
              textAlign: TextAlign.center,
              style: TextStyle(color: Colors.white, fontSize: 10),
            ),
            const SizedBox(
              height: 10,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Container(
                  decoration: const BoxDecoration(
                      border: Border(right: BorderSide(color: Colors.white))),
                  height: 200,
                  width: 200,
                  // color: Colors.red,
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Image.asset("assets/icons/party.png"),
                      const SizedBox(
                        height: 10,
                      ),
                      const Text(
                        "Priority Access to \n premium events",
                        style: TextStyle(color: Colors.white, fontSize: 10),
                      )
                    ],
                  ),
                ),
                Container(
                  decoration: const BoxDecoration(
                      border: Border(right: BorderSide(color: Colors.white))),
                  height: 200,
                  width: 200,
                  // color: Colors.red,
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Image.asset("assets/icons/party.png"),
                      const SizedBox(
                        height: 10,
                      ),
                      const Text(
                        "Priority Access to \n premium events",
                        style: TextStyle(color: Colors.white, fontSize: 10),
                      )
                    ],
                  ),
                ),
                Container(
                  decoration: const BoxDecoration(
                      border: Border(right: BorderSide(color: Colors.white))),
                  height: 200,
                  width: 200,
                  // color: Colors.red,
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Image.asset("assets/icons/party.png"),
                      const SizedBox(
                        height: 10,
                      ),
                      const Text(
                        "Priority Access to \n premium events",
                        style: TextStyle(color: Colors.white, fontSize: 10),
                      )
                    ],
                  ),
                ),
                Container(
                  decoration: const BoxDecoration(
                      border: Border(right: BorderSide(color: Colors.white))),
                  height: 200,
                  width: 200,
                  // color: Colors.red,
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Image.asset("assets/icons/party.png"),
                      const SizedBox(
                        height: 10,
                      ),
                      const Text(
                        "Priority Access to \n premium events",
                        style: TextStyle(color: Colors.white, fontSize: 10),
                      )
                    ],
                  ),
                )
              ],
            )
          ],
        ),
      ),
    ],
  );
}

Widget HeroCarousel(context) {
  return CarouselSlider(
    options: CarouselOptions(
      height: 500.0,
      scrollDirection: Axis.vertical,
      viewportFraction: 1.0,
    ),
    items: [1, 2, 3].map((i) {
      return Builder(
        builder: (BuildContext context) {
          return Container(
            width: MediaQuery.of(context).size.width,
            margin: const EdgeInsets.symmetric(vertical: 5.0),
            decoration: const BoxDecoration(
                // color: Colors.red,
                image: DecorationImage(
                    fit: BoxFit.fill,
                    image: AssetImage("assets/images/hero.jpg"))),
          );
        },
      );
    }).toList(),
  );
}

Widget BrandCard(context) {
  return Container(
    margin: const EdgeInsets.all(10),
    child: Column(
      children: [
        Image.asset("assets/images/tacx.png"),
        Container(
          decoration: const BoxDecoration(
            // color: Colors.red,
            // borderRadius: BorderRadius.circular(20),
            border: Border(
              left: BorderSide(
                color: Colors.black,
              ),
              right: BorderSide(color: Colors.black),
              bottom: BorderSide(color: Colors.black),
            ),
          ),
          height: 250,
          width: 200,
          child: Column(children: [
            Image.asset("assets/images/tacx_body.png"),
            SizedBox(
              child: ElevatedButton(
                child: const Text("Shop More"),
                onPressed: () {},
              ),
            )
          ]),
        )
      ],
    ),
  );
}

Widget BrandCarousel(context) {
  return Column(
    children: [
      const Text(
        "Shop By Brands",
        style: TextStyle(fontWeight: FontWeight.bold, fontSize: 30),
      ),
      const SizedBox(
        height: 20,
      ),
      const Text(
        "We have happily served our client with our brand from more \n than 26 countries",
        textAlign: TextAlign.center,
      ),
      Container(
          height: 350,
          width: MediaQuery.of(context).size.width * 0.6,
          child: ListView.builder(
            itemCount: 20,
            scrollDirection: Axis.horizontal,
            itemBuilder: (context, index) {
              return BrandCard(context);
            },
          )),
      SizedBox(
        width: 150,
        height: 50,
        child: ElevatedButton(onPressed: () {}, child: const Text("View More")),
      )
    ],
  );
}
