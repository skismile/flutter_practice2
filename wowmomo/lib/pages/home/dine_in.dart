import "package:flutter/material.dart";

import "package:wowmomo/components/dine_card.dart";

class DineInPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Container(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const Text(
            "Outlets near you",
            style: TextStyle(fontWeight: FontWeight.bold),
          ),
          ...["d0", "dd"].map((ele) {
            return DineCard(
                image: "assets/images/logo_eats.png",
                title: "Veg Tarka",
                distence: 2.5,
                time: 27,
                description:
                    "A Tibten noodle soup with green vegetables and flat noodles");
          })
        ],
      ),
    );
  }
}
