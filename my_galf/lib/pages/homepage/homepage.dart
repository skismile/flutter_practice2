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
          Container(
            height: 700,
            width: MediaQuery.of(context).size.width,
            child: Stack(
              children: [
                ProgressCard(context),
                Positioned(
                  top: 130,
                  left: 0,
                  right: 0,
                  child: Container(
                    // width: MediaQuery.of(context).size.width * 0.7,
                    width: 50,
                    color: Colors.red,
                    height: 200,
                  ),
                ),
              ],
            ),
          ),
          const SizedBox(
            height: 5000,
          ),
        ],
      ),
    ));
  }
}

//! multy part widgets created bellow

Widget ProgressCard(context) {
  return Column(
    children: [
      Container(
        height: 250,
        width: MediaQuery.of(context).size.width,
        child: Column(
          children: [
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
        decoration: const BoxDecoration(
            // color: Colors.red,
            image: DecorationImage(
                fit: BoxFit.fill,
                image: AssetImage("assets/images/blue_background.png"))),
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
                  decoration: BoxDecoration(
                      border: Border(right: BorderSide(color: Colors.white))),
                  height: 200,
                  width: 200,
                  // color: Colors.red,
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Image.asset("assets/icons/party.png"),
                      SizedBox(
                        height: 10,
                      ),
                      Text(
                        "Priority Access to \n premium events",
                        style: TextStyle(color: Colors.white, fontSize: 10),
                      )
                    ],
                  ),
                ),
                Container(
                  decoration: BoxDecoration(
                      border: Border(right: BorderSide(color: Colors.white))),
                  height: 200,
                  width: 200,
                  // color: Colors.red,
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Image.asset("assets/icons/party.png"),
                      SizedBox(
                        height: 10,
                      ),
                      Text(
                        "Priority Access to \n premium events",
                        style: TextStyle(color: Colors.white, fontSize: 10),
                      )
                    ],
                  ),
                ),
                Container(
                  decoration: BoxDecoration(
                      border: Border(right: BorderSide(color: Colors.white))),
                  height: 200,
                  width: 200,
                  // color: Colors.red,
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Image.asset("assets/icons/party.png"),
                      SizedBox(
                        height: 10,
                      ),
                      Text(
                        "Priority Access to \n premium events",
                        style: TextStyle(color: Colors.white, fontSize: 10),
                      )
                    ],
                  ),
                ),
                Container(
                  decoration: BoxDecoration(
                      border: Border(right: BorderSide(color: Colors.white))),
                  height: 200,
                  width: 200,
                  // color: Colors.red,
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Image.asset("assets/icons/party.png"),
                      SizedBox(
                        height: 10,
                      ),
                      Text(
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
    items: [1, 2, 3, 4, 5].map((i) {
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
