import 'package:flutter/material.dart';

class ProductCard extends StatelessWidget {
  String image;
  String title;
  double rating;
  int time;
  String description;

  ProductCard(
      {super.key,
      required this.image,
      required this.title,
      required this.rating,
      required this.time,
      required this.description});

  @override
  Widget build(BuildContext context) {
    return Container(
        // color: Colors.green,
        margin:const EdgeInsets.only(top: 10),
        height: 125,
        width: MediaQuery.of(context).size.width * 0.9,
        child: Row(
          children: [
            Container(
              height: 125,
              width: MediaQuery.of(context).size.width * 0.3,
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10),
                  image: DecorationImage(
                      fit: BoxFit.cover, image: AssetImage(image))),
            ),
            const SizedBox(
              width: 10,
            ),
            SizedBox(
                width: MediaQuery.of(context).size.width * 0.5,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      title,
                      style:
                        const  TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
                    ),
                    const SizedBox(
                      height: 5,
                    ),
                    Row(
                      children: [
                        const Icon(
                          Icons.star_outline_outlined,
                          color: Color.fromRGBO(249, 179, 19, 1),
                          size: 18,
                        ),
                        Text(
                          "$rating",
                          style: const TextStyle(
                              color: Color.fromRGBO(249, 179, 19, 1),
                              fontSize: 15,
                              fontWeight: FontWeight.bold),
                        ),
                        const SizedBox(
                          width: 10,
                        ),
                        const Text(
                          ".",
                          style: TextStyle(
                              fontSize: 25, fontWeight: FontWeight.bold),
                        ),
                        const SizedBox(
                          width: 10,
                        ),
                        Text(
                          "$time mins",
                          style: const TextStyle(
                              fontSize: 15, fontWeight: FontWeight.bold),
                        ),
                      ],
                    ),
                    const SizedBox(
                      height: 5,
                    ),
                    Text(
                      description,
                      maxLines: 2,
                      style: const TextStyle(
                        color: Colors.black,
                        fontSize: 12,
                        fontWeight: FontWeight.w500,
                      ),
                    ),
                    const SizedBox(
                      height: 5,
                    ),
                    SizedBox(
                      width: 80,
                      height: 27,
                      child: OutlinedButton(
                        onPressed: () {},
                        style: OutlinedButton.styleFrom(
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(5),
                          ),
                        ),
                        child: const Text('ADD'),
                      ),
                    )
                  ],
                ))
          ],
        ));
  }
}
