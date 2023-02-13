import 'package:flutter/material.dart';

class CategoryCard extends StatelessWidget {
  String image;

  CategoryCard({required this.image});
  @override
  Widget build(BuildContext context) {
    // TODO: implement build

    return SizedBox(
        width: 100,
        height: 100,
        child: Card(
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(20),
          ),
          child: Image.asset(
            image,
            fit: BoxFit.cover,
          ),
        ));
  }
}
