import 'package:flutter/material.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';
import 'package:get/get.dart';
import 'package:my_galf/components/footer.dart';
import 'package:my_galf/components/navbar.dart';

class ServicesPage extends StatefulWidget {
  const ServicesPage({Key? key}) : super(key: key);

  @override
  State<ServicesPage> createState() => _ServicesPageState();
}

class _ServicesPageState extends State<ServicesPage> {
  int currenIndex = -1;
  final List<Map> myProducts = [
    {
      "title": "Running Shoes For Men",
      "image": "assets/images/img-1.jpg",
    },
    {"title": "Running Watch For Men", "image": "assets/images/img-2.jpg"},
    {"title": "Running Watch For Men", "image": "assets/images/img-3.jpg"},
    {"title": "Running Watch For Men", "image": "assets/images/img-4.jpg"},
    {
      "title": "Running Shoes For Men",
      "image": "assets/images/img-1.jpg",
    },
    {"title": "Running Watch For Men", "image": "assets/images/img-2.jpg"},
    {"title": "Running Watch For Men", "image": "assets/images/img-3.jpg"},
    {"title": "Running Watch For Men", "image": "assets/images/img-4.jpg"},
    {
      "title": "Running Shoes For Men",
      "image": "assets/images/img-1.jpg",
    },
    {"title": "Running Watch For Men", "image": "assets/images/img-2.jpg"},
    {"title": "Running Watch For Men", "image": "assets/images/img-3.jpg"},
    {"title": "Running Watch For Men", "image": "assets/images/img-4.jpg"},
  ];
  ScrollController _scrollController = ScrollController();
  bool isCategory = true;
  void typeHandler(type) {
    setState(() {
      isCategory = type;
    });
  }

  void updateLocation(index) {
    setState(() {
      currenIndex = index;
    });
  }

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
            child: ListView(children: [
              //navbar is component
              Navbar(currentScreen: currentScreen),
              ProductHeroCarousel(
                  context: context,
                  scrollController: _scrollController,
                  isCategory: isCategory,
                  typeHandler: typeHandler),
              productList(
                  updateLocation: updateLocation,
                  myProducts: myProducts,
                  currenIndex: currenIndex),
              Footer(context: context)
            ])));
  }
}

Widget ProductHeroCarousel(
    {required context,
    required scrollController,
    required isCategory,
    required typeHandler}) {
  return Container(
    height: 500,
    width: MediaQuery.of(context).size.width,
    // color: Colors.blue,
    decoration: BoxDecoration(
        image: DecorationImage(
            fit: BoxFit.fill,
            image: AssetImage("assets/images/services_hero.png"))),
    child: Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        const Text(
          "Panelist",
          style: TextStyle(
              fontWeight: FontWeight.w700, fontSize: 22, color: Colors.black),
        ),
        const SizedBox(
          height: 10,
        ),
        const Text(
          "Lorem ipsum dolor sit amet, consectetur adipiscing elit. In maximus, mauris a aliquet\ncongue, elit quam ultrices odio, quis fermentum odio augue ac tellus.",
          textAlign: TextAlign.center,
          style: TextStyle(
              fontWeight: FontWeight.w400, fontSize: 11, color: Colors.black),
        ),
        const SizedBox(
          height: 20,
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            GestureDetector(
              onTap: () {
                scrollController.animateTo(
                  scrollController.offset - 300.0,
                  duration: Duration(milliseconds: 500),
                  curve: Curves.ease,
                );
              },
              child: Container(
                width: 40,
                height: 40,
                decoration:
                    BoxDecoration(border: Border.all(color: Colors.black)),
                child: const Icon(
                  Icons.arrow_back_ios,
                  color: Colors.black,
                ),
              ),
            ),
            const SizedBox(
              width: 15,
            ),
            Container(
              // color: Colors.green,

              height: 200,
              width: MediaQuery.of(context).size.width * 0.7,
              child: ListView(
                controller: scrollController,
                scrollDirection: Axis.horizontal,
                children: [
                  GestureDetector(
                    onTap: () {
                      Get.toNamed("/panelist");
                    },
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: const [
                        CircleAvatar(
                          radius: 70,
                          backgroundImage: AssetImage(
                            "assets/images/services_panelist.png",
                          ),
                          backgroundColor: Colors.transparent,
                        ),
                        SizedBox(
                          height: 5,
                        ),
                        Text(
                          "Panelist",
                          style: TextStyle(fontWeight: FontWeight.bold),
                        )
                      ],
                    ),
                  ),
                  const SizedBox(
                    width: 30,
                  ),
                  GestureDetector(
                    onTap: () {
                      Get.toNamed("/panelist");
                    },
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: const [
                        CircleAvatar(
                          radius: 70,
                          backgroundImage: AssetImage(
                            "assets/images/services_panelist.png",
                          ),
                          backgroundColor: Colors.transparent,
                        ),
                        SizedBox(
                          height: 5,
                        ),
                        Text(
                          "Panelist",
                          style: TextStyle(fontWeight: FontWeight.bold),
                        )
                      ],
                    ),
                  ),
                  const SizedBox(
                    width: 30,
                  ),
                  GestureDetector(
                    onTap: () {
                      Get.toNamed("/panelist");
                    },
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: const [
                        CircleAvatar(
                          radius: 70,
                          backgroundImage: AssetImage(
                            "assets/images/services_panelist.png",
                          ),
                          backgroundColor: Colors.transparent,
                        ),
                        SizedBox(
                          height: 5,
                        ),
                        Text(
                          "Panelist",
                          style: TextStyle(fontWeight: FontWeight.bold),
                        )
                      ],
                    ),
                  ),
                  const SizedBox(
                    width: 30,
                  ),
                  GestureDetector(
                    onTap: () {
                      Get.toNamed("/panelist");
                    },
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: const [
                        CircleAvatar(
                          radius: 70,
                          backgroundImage: AssetImage(
                            "assets/images/services_panelist.png",
                          ),
                          backgroundColor: Colors.transparent,
                        ),
                        SizedBox(
                          height: 5,
                        ),
                        Text(
                          "Panelist",
                          style: TextStyle(fontWeight: FontWeight.bold),
                        )
                      ],
                    ),
                  ),
                  const SizedBox(
                    width: 30,
                  ),
                  GestureDetector(
                    onTap: () {
                      Get.toNamed("/panelist");
                    },
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: const [
                        CircleAvatar(
                          radius: 70,
                          backgroundImage: AssetImage(
                            "assets/images/services_panelist.png",
                          ),
                          backgroundColor: Colors.transparent,
                        ),
                        SizedBox(
                          height: 5,
                        ),
                        Text(
                          "Panelist",
                          style: TextStyle(fontWeight: FontWeight.bold),
                        )
                      ],
                    ),
                  ),
                  const SizedBox(
                    width: 30,
                  ),
                  GestureDetector(
                    onTap: () {
                      Get.toNamed("/panelist");
                    },
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: const [
                        CircleAvatar(
                          radius: 70,
                          backgroundImage: AssetImage(
                            "assets/images/services_panelist.png",
                          ),
                          backgroundColor: Colors.transparent,
                        ),
                        SizedBox(
                          height: 5,
                        ),
                        Text(
                          "Panelist",
                          style: TextStyle(fontWeight: FontWeight.bold),
                        )
                      ],
                    ),
                  ),
                  const SizedBox(
                    width: 30,
                  ),
                  GestureDetector(
                    onTap: () {
                      Get.toNamed("/panelist");
                    },
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: const [
                        CircleAvatar(
                          radius: 70,
                          backgroundImage: AssetImage(
                            "assets/images/services_panelist.png",
                          ),
                          backgroundColor: Colors.transparent,
                        ),
                        SizedBox(
                          height: 5,
                        ),
                        Text(
                          "Panelist",
                          style: TextStyle(fontWeight: FontWeight.bold),
                        )
                      ],
                    ),
                  ),
                  const SizedBox(
                    width: 30,
                  ),
                ],
              ),
            ),
            const SizedBox(
              width: 20,
            ),
            GestureDetector(
              onTap: () {
                scrollController.animateTo(
                  scrollController.offset + 300.0,
                  duration: Duration(milliseconds: 500),
                  curve: Curves.ease,
                );
              },
              child: Container(
                width: 40,
                height: 40,
                decoration:
                    BoxDecoration(border: Border.all(color: Colors.black)),
                child: const Icon(
                  Icons.arrow_forward_ios,
                  color: Colors.black,
                ),
              ),
            ),
          ],
        ),
        const SizedBox(
          height: 10,
        ),
      ],
    ),
  );
}

Widget productList(
    {required updateLocation, required myProducts, required currenIndex}) {
  return Container(
    padding: EdgeInsets.all(25),
    margin: EdgeInsets.only(left: 25, right: 25),
    // color: Colors.amber,
    child: GridView.builder(
        shrinkWrap: true,
        gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
            //maxCrossAxisExtent: 200,
            //childAspectRatio: 1,
            crossAxisSpacing: 20,
            crossAxisCount: 4,
            childAspectRatio: 2 / 2.5,
            mainAxisSpacing: 50),
        itemCount: myProducts.length,
        itemBuilder: (BuildContext ctx, index) {
          return Container(
            alignment: Alignment.center,
            child: productCard(
                myProducts: myProducts,
                index: index,
                updateLocation: updateLocation,
                currenIndex: currenIndex),
          );
        }),
  );
}

Widget productCard(
    {required myProducts,
    required index,
    required updateLocation,
    required currenIndex}) {
  return MouseRegion(
    onEnter: (event) {
      //print(event);
      updateLocation(index);
    },
    onExit: (event) {
      updateLocation(-1);
    },
    child: Container(
      padding: const EdgeInsets.only(top: 15, left: 10, right: 10),
      //width: 287,
      //  height: 467,
      color: Colors.white,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Expanded(
            child: Container(
              height: 150,
              decoration: BoxDecoration(
                  image: DecorationImage(
                      image: AssetImage(
                myProducts[index]['image'],
              ))),
            ),
          ),
          const SizedBox(
            height: 11,
          ),
          Text(
            myProducts[index]['title'],
            style: const TextStyle(
                fontSize: 19,
                fontWeight: FontWeight.w700,
                color: Color(0xFF1C4A64)),
          ),
          const SizedBox(
            height: 4,
          ),
          const SizedBox(
            width: 250,
            child: Text(
              "Lorem ipsum dolor sit amet, consectetur adipiscing elit.",
              maxLines: 2,
              style: TextStyle(
                  fontSize: 13,
                  fontWeight: FontWeight.w400,
                  color: Color(0xFF1C4A64)),
              textAlign: TextAlign.center,
            ),
          ),
          const SizedBox(
            height: 8,
          ),
          Container(
              child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              const Text(
                "2.75",
                style: TextStyle(
                    color: Colors.amber,
                    fontWeight: FontWeight.w700,
                    fontSize: 14),
              ),
              const SizedBox(
                width: 5,
              ),
              RatingBarIndicator(
                rating: 2.75,
                itemBuilder: (context, index) => const Icon(
                  Icons.star,
                  color: Colors.amber,
                ),
                itemCount: 5,
                itemSize: 14,
                direction: Axis.horizontal,
              ),
            ],
          )),
          const SizedBox(
            height: 4,
          ),
          Container(
              child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: const [
              Text("₹1250",
                  style: TextStyle(
                      color: Color(0xFF1C4A64),
                      fontWeight: FontWeight.w500,
                      fontSize: 25)),
              SizedBox(
                width: 5,
              ),
              Text(
                "₹2,499",
                style: TextStyle(
                    color: Color(0xFF1C4A64),
                    fontWeight: FontWeight.w400,
                    fontSize: 10),
              ),
              Text(
                "(50% Off)",
                style: TextStyle(
                    color: Color(0xFF28C969),
                    fontWeight: FontWeight.w400,
                    fontSize: 10),
              ),
            ],
          )),
          currenIndex == index
              ? Container(
                  padding: EdgeInsets.only(top: 3),
                  child: Row(
                    children: [
                      Expanded(
                          flex: 2,
                          child: ElevatedButton.icon(
                              style: ElevatedButton.styleFrom(
                                  backgroundColor: Color(0xFFFF9900),
                                  shape: RoundedRectangleBorder(),
                                  minimumSize: Size(180, 50)

                                  //onPrimary: Colors.black,
                                  ),
                              onPressed: () {},
                              icon: const Icon(
                                Icons.wallet_giftcard,
                                color: Colors.white,
                                size: 10.0,
                              ),
                              label: const Text(
                                "Add to Cart",
                                style: TextStyle(
                                    fontSize: 10, fontWeight: FontWeight.w500),
                              ))),
                      Expanded(
                        child: Icon(Icons.favorite_border,
                            size: 24, color: Colors.black),
                      )
                    ],
                  ),
                )
              : SizedBox()
        ],
      ),
    ),
  );
}
