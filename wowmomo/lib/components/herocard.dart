import 'package:flutter/material.dart';

class Herocard extends StatelessWidget {
  String image;
  Herocard({required this.image});
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Container(
      width: MediaQuery.of(context).size.width * 0.9,
      height: 140,
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(20),
          // color: Colors.blue,
          image: DecorationImage(fit: BoxFit.fill, image: AssetImage(image))),
    );
  }
}
