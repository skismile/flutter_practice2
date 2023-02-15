import 'package:flutter/material.dart';
import "dart:math";

import "package:wowmomo/pages/nutritionPage/models.dart";

class RoundCarousel extends StatefulWidget {
  const RoundCarousel({Key? key}) : super(key: key);

  @override
  _RoundCarouselState createState() => _RoundCarouselState();
}

class _RoundCarouselState extends State<RoundCarousel> {
  late PageController _pageController;
  int _currentPage = 1;
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    _pageController =
        PageController(initialPage: _currentPage, viewportFraction: 0.5);
  }

  @override
  void dispose() {
    // TODO: implement dispose
    super.dispose();
    _pageController.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return AspectRatio(
      aspectRatio: 1.7,
      child: PageView.builder(
        itemCount: dataList.length,
        // physics: const ClampingScrollPhysics(),
        controller: _pageController,
        onPageChanged: (value) {
          print("-------------------$value");

          _currentPage = value;
        },
        itemBuilder: (context, index) {
          return carouselView(index);
        },
      ),
    );
  }

  Widget carouselView(int index) {
    print("current page $_currentPage");
    print("current index $index");
    return AnimatedBuilder(
      animation: _pageController,
      builder: (context, child) {
        double value = 0.0;

        if (_pageController.position.hasContentDimensions) {
          value = index.toDouble() - (_pageController.page ?? 0);
          value = (value * 0.15).clamp(-1, 1);
        }
        return Transform.rotate(
          angle: pi * value,
          child: carouselCard(dataList[index], index),
        );
        // return carouselCard(dataList[index]);
      },
    );
  }

  Widget carouselCard(DataModel data, index) {
    return SizedBox(
      child: Column(
        children: [
          Container(
              width: MediaQuery.of(context).size.width * 0.5,
              height: index == _currentPage ? 200 : 120,
              decoration: BoxDecoration(
                  // color: Colors.red,
                  borderRadius: BorderRadius.circular(30),
                  // boxShadow: const [
                  //   BoxShadow(
                  //       offset: Offset(0, 4),
                  //       blurRadius: 4,
                  //       color: Colors.black26)
                  // ],
                  image: DecorationImage(
                      image: AssetImage(data.imageName), fit: BoxFit.contain))),
          // Padding(
          //   padding: const EdgeInsets.only(top: 20),
          //   child: Text(
          //     "${data.title}",
          //     style: const TextStyle(
          //         color: Colors.black87,
          //         fontSize: 16,
          //         fontWeight: FontWeight.bold),
          //   ),
          // ),
        ],
      ),
    );
  }
}
