import 'package:flutter/material.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';
import 'package:my_galf/components/footer.dart';
import 'package:my_galf/components/navbar.dart';
import 'package:carousel_slider/carousel_slider.dart';

class Homepage extends StatelessWidget {
  const Homepage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final currentWidth = MediaQuery.of(context).size.width;
    final currentScreen = currentWidth <= 300
        ? "xsmall"
        : currentWidth > 300 && currentWidth < 500
            ? "small"
            : currentWidth >= 500 && currentWidth <= 1100
                ? "medium"
                : "big";
    return Scaffold(
        // appBar: AppBar(
        //   title: Text("$currentWidth"),
        // ),
        body: Container(
      width: double.infinity,
      child: ListView(
        children: [
          //navbar is component
          Navbar(currentScreen: currentScreen),
          //todo -  hero carousel shop now button pending

          HeroCarousel(context: context, currentScreen: currentScreen),
          const SizedBox(
            height: 30,
          ),
          //Shop by brads
          BrandCarousel(context),
          const SizedBox(
            height: 20,
          ),
          Container(
            // child: Image.asset(
            //   "assets/images/hero2.png",
            //   width: MediaQuery.of(context).size.width,
            // ),
            // ignore: unrelated_type_equality_checks
            height: currentScreen == "big"
                ? 500
                // ignore: unrelated_type_equality_checks
                : currentScreen == "medium"
                    ? 400
                    : 200,
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
          Footer(context: context),
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

// Widget Footer(context) {
//   return
// }

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
          mainAxisSpacing: 20,
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
    // margin: EdgeInsets.only(top: 20),
    color: Color.fromARGB(255, 255, 255, 255),
    height: 380,
    width: 267,
    child: Column(
      crossAxisAlignment: CrossAxisAlignment.center,
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
              children: [
                Row(
                  children: [
                    const Text(
                      "2.75",
                      style: TextStyle(
                          color: Colors.amber,
                          fontWeight: FontWeight.bold,
                          fontSize: 10),
                    ),
                    const SizedBox(
                      width: 2,
                    ),
                    RatingBarIndicator(
                      rating: 2.75,
                      itemBuilder: (context, index) => const Icon(
                        Icons.star,
                        color: Colors.amber,
                      ),
                      itemCount: 5,
                      itemSize: 10,
                      direction: Axis.horizontal,
                    ),
                  ],
                ),
                const Text(
                  "???1599",
                  style: TextStyle(
                      decoration: TextDecoration.lineThrough, fontSize: 15),
                ),
                const Text(
                  "???1199",
                  style: TextStyle(fontWeight: FontWeight.bold),
                )
              ],
            ),
          ],
        )),
        Container(
          height: 50,
          width: 250,
          // color: Colors.red,
          child: ElevatedButton(
              style: ElevatedButton.styleFrom(
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(10), // <-- Radius
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
                " \u2022 Manage all Employee Wellness in one Platform\n \u2022 Wellness Surveys, Strategies and  Analytics\n \u2022 Leadership Dashboard\n \u2022 Bonus Rewards for Employees\n \u2022 Access to??Premium??Events",
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
            top: 140,
            left: 0,
            right: 0,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Container(
                  decoration: BoxDecoration(
                      color: Colors.grey[100],
                      borderRadius: BorderRadius.circular(10)),
                  width: MediaQuery.of(context).size.width * 0.7,
                  height: 170,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Image.asset(
                            "assets/icons/Vector.png",
                            width: 25,
                          ),
                          const SizedBox(
                            height: 10,
                          ),
                          const Text(
                            "28,58,000",
                            style: TextStyle(
                                fontWeight: FontWeight.bold, fontSize: 15),
                          ),
                          const SizedBox(
                            height: 10,
                          ),
                          const Text(
                            "Steps",
                            style: TextStyle(fontSize: 12),
                          ),
                        ],
                      ),
                      Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Image.asset(
                            "assets/icons/Vector_2.png",
                            width: 25,
                          ),
                          const SizedBox(
                            height: 10,
                          ),
                          const Text(
                            "18,15,800",
                            style: TextStyle(
                                fontWeight: FontWeight.bold, fontSize: 15),
                          ),
                          const SizedBox(
                            height: 10,
                          ),
                          const Text(
                            "Calories",
                            style: TextStyle(fontSize: 12),
                          ),
                        ],
                      ),
                      Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Image.asset(
                            "assets/icons/distance.png",
                            width: 25,
                          ),
                          const SizedBox(
                            height: 10,
                          ),
                          const Text(
                            "2177.8km",
                            style: TextStyle(
                                fontWeight: FontWeight.bold, fontSize: 15),
                          ),
                          const SizedBox(
                            height: 10,
                          ),
                          const Text(
                            "Distence",
                            style: TextStyle(fontSize: 12),
                          ),
                        ],
                      ),
                      Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Image.asset(
                            "assets/icons/point.png",
                            width: 25,
                          ),
                          const SizedBox(
                            height: 10,
                          ),
                          const Text(
                            "12,500",
                            style: TextStyle(
                                fontWeight: FontWeight.bold, fontSize: 15),
                          ),
                          const SizedBox(
                            height: 10,
                          ),
                          const Text(
                            "Points",
                            style: TextStyle(fontSize: 12),
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
              ],
            )),
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

Widget HeroCarousel({required context, required currentScreen}) {
  return CarouselSlider(
    options: CarouselOptions(
        height: currentScreen == "small"
            ? 300
            : currentScreen == "medium"
                ? 400.0
                : 500,
        scrollDirection: Axis.vertical,
        viewportFraction: 1.0,
        enableInfiniteScroll: false),
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
          width: MediaQuery.of(context).size.width * 0.8,
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
