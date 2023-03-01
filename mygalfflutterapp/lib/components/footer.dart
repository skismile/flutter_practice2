import 'package:flutter/material.dart';

class Footer extends StatelessWidget {
  final BuildContext context;
  const Footer({required this.context});

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.black,
      width: MediaQuery.of(context).size.width,
      // height: 700,
      child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            const SizedBox(
              height: 70,
            ),
            Container(
              // color: Colors.grey,
              width: MediaQuery.of(context).size.width * 0.9,
              // height: 400,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Container(
                    // height: 250,
                    // width: 200,
                    // color: Colors.red,
                    child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          const Text(
                            "GALF SHOPPING",
                            textAlign: TextAlign.start,
                            style: TextStyle(
                                color: Colors.amber,
                                fontWeight: FontWeight.bold),
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
                              const SizedBox(
                                width: 10,
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
                    // height: 280,
                    // width: 200,
                    // color: Colors.red,
                    child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          const Text(
                            "Brands",
                            textAlign: TextAlign.start,
                            style: TextStyle(
                                color: Colors.amber,
                                fontWeight: FontWeight.bold),
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
                                  mainAxisAlignment: MainAxisAlignment.start,
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
                              const SizedBox(
                                width: 10,
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
                                color: Colors.amber,
                                fontWeight: FontWeight.bold),
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
                            "GALF SHOPPINGss",
                            textAlign: TextAlign.start,
                            style: TextStyle(
                                color: Colors.amber,
                                fontWeight: FontWeight.bold),
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
                  // const SizedBox(
                  //   height: 250,
                  //   child: VerticalDivider(
                  //     color: Colors.white,
                  //     thickness: 2,
                  //   ),
                  // )
                ],
              ),
            ),
            const SizedBox(
              height: 20,
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
              padding: const EdgeInsets.only(left: 50, right: 50),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: const [
                  Text(
                    "© 2022, My Gulf. All rights reserved",
                    style: TextStyle(color: Colors.white),
                  ),
                  Text(
                    "Terms and Conditions | Privacy Policy",
                    style: TextStyle(color: Colors.white),
                  ),
                ],
              ),
            )
          ]),
    );
  }
}
