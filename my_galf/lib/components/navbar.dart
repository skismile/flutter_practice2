import 'package:flutter/material.dart';

class Navbar extends StatelessWidget {
  const Navbar({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        //! nav 1 start from here
        Container(
          height: 30,
          color: Color(0xFF222f38),
          child: Row(
            children: [
              const Expanded(
                flex: 3,
                child: Text(
                  "MYGALF - YOUR TRUSTED WELLNESS MARKETPLACE, YOUR FAVOURITE BRANDS, OUR BEST PRICES !",
                  textAlign: TextAlign.center,
                  style: TextStyle(color: Colors.white),
                ),
              ),
              Expanded(
                  flex: 1,
                  child: Row(
                    children: const [
                      Text(
                        "NEWS",
                        style: TextStyle(color: Colors.white),
                      ),
                      SizedBox(
                        width: 10,
                      ),
                      Text(
                        "|",
                        style: TextStyle(color: Colors.white),
                      ),
                      SizedBox(
                        width: 10,
                      ),
                      Text(
                        "ABOUT US",
                        style: TextStyle(color: Colors.white),
                      ),
                      SizedBox(
                        width: 10,
                      ),
                      Text(
                        "|",
                        style: TextStyle(color: Colors.white),
                      ),
                      SizedBox(
                        width: 10,
                      ),
                      Text(
                        "CONTACT",
                        style: TextStyle(color: Colors.white),
                      ),
                    ],
                  )),
              Expanded(
                  flex: 1,
                  child: Row(children: const [
                    Text(
                      "DOWNLOAD APP",
                      style: TextStyle(color: Colors.white),
                    ),
                    SizedBox(
                      width: 10,
                    ),
                    Text(
                      "|",
                      style: TextStyle(color: Colors.white),
                    ),
                    SizedBox(
                      width: 10,
                    ),
                    Text(
                      "CONTACT",
                      style: TextStyle(color: Colors.white),
                    ),
                  ]))
            ],
          ),
        ),

        //! nav 2 start from here
        Container(
          // color: Colors.red,
          height: 80,
          width: MediaQuery.of(context).size.width * 0.8,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              Image.network("assets/images/my_galf_logo.png"),
              const Text("Galf Shop"),
              const Text("Service"),
              const Text("Events"),
              const Text("Corporate Wellness"),
              const Text("Lounge"),
              SizedBox(
                height: 30,
                width: MediaQuery.of(context).size.width * 0.1,
                child: TextField(
                  decoration: InputDecoration(
                    isDense: true,
                    hintText: 'Search items here...',
                    hintStyle:
                        const TextStyle(color: Colors.grey, fontSize: 10),
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(30),
                    ),
                    prefixIcon: const Icon(
                      Icons.search,
                      size: 15,
                    ),
                    prefixIconConstraints:
                        BoxConstraints(minWidth: 40, minHeight: 20),
                  ),
                ),
              ),
              Row(
                children: [
                  Image.asset("assets/icons/price_tag.png"),
                  const SizedBox(
                    width: 10,
                  ),
                  Image.asset("assets/icons/bag.png"),
                  const SizedBox(
                    width: 10,
                  ),
                  Image.asset("assets/icons/user.png"),
                ],
              ),
            ],
          ),
        )
      ],
    );
  }
}
