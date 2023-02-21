import "package:flutter/material.dart";
import "package:wowmomo/components/category_cards.dart";
import "package:wowmomo/components/herocard.dart";
import "package:wowmomo/components/product_card.dart";

class DeliveryPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Column(
      children: [
        SizedBox(
            height: 100,
            width: MediaQuery.of(context).size.width * 0.9,
            child: ListView.builder(
              itemCount: 6,
              itemBuilder: (context, index) {
                return CategoryCard(image: "assets/images/Momos.png");
              },
              scrollDirection: Axis.horizontal,
            )),
        const SizedBox(
          height: 30,
        ),
        SizedBox(
          width: 300,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: const [
              Expanded(flex: 1, child: Divider(color: Colors.black)),
              SizedBox(
                width: 10,
              ),
              Text(
                "Deal of the day",
                style: TextStyle(fontWeight: FontWeight.bold),
              ),
              SizedBox(
                width: 10,
              ),
              Expanded(child: Divider(color: Colors.black)),
            ],
          ),
        ),
        const SizedBox(
          height: 20,
        ),
        Herocard(image: "assets/images/hero.png"),
        const SizedBox(
          height: 20,
        ),
        SizedBox(
          width: 300,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: const [
              Expanded(flex: 1, child: Divider(color: Colors.black)),
              SizedBox(
                width: 10,
              ),
              Text(
                "Best Sellings Items",
                style: TextStyle(fontWeight: FontWeight.bold),
              ),
              SizedBox(
                width: 10,
              ),
              Expanded(child: Divider(color: Colors.black)),
            ],
          ),
        ),
        ...[1, 2, 3, 4, 5, 6].map((ele) {
          return ProductCard(
              image: "assets/images/vegtadka.png",
              title: "Veg Tarka",
              rating: 4.8,
              time: 27,
              description:
                  "A Tibten noodle soup with green vegetables and flat noodles");
        })
      ],
    );
  }
}
