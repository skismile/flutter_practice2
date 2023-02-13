import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  List<bool> isSelected = [true, false];

  void togglestateHandler(newIndex) {
    setState(() {
      for (int index = 0; index < isSelected.length; index++) {
        if (index == newIndex) {
          isSelected[index] = true;
        } else {
          isSelected[index] = false;
        }
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        bottomNavigationBar: BottomNavBar(),
        floatingActionButton: FloatingActionButton(
            onPressed: () {},
            child: Container(
              height: 400,
              width: 400,
              decoration: const BoxDecoration(
                image: DecorationImage(
                  image: AssetImage("assets/images/logo.png"),
                  opacity: 0.3,
                  fit: BoxFit.fill,
                ),
              ),
              child: const Icon(
                Icons.more_horiz,
                size: 50,
                color: Colors.white,
              ),
            )),
        // appBar: AppBar(
        //   title: const Text("Home Page"),
        // ),
        body: SizedBox(
            width: double.infinity,
            // height: MediaQuery.of(context).size.height,
            height: MediaQuery.of(context).size.height,
            // color: Colors.red,
            child: Stack(
              children: [
                ScrollPage(
                    context: context,
                    togglestateHandler: togglestateHandler,
                    isSelected: isSelected,
                    index: isSelected[0] ? 0 : 1),
                FixedNavbar(context: context),
              ],
            )));
  }
}

// ! ----------------------------------------------------------

Widget BottomNavBar() {
  return BottomNavigationBar(
    type: BottomNavigationBarType.fixed, // Fixed
    backgroundColor: Colors.white, // <-- This works for fixed
    selectedItemColor: Colors.black,
    unselectedItemColor: Color.fromRGBO(249, 179, 19, 1),
    items: const [
      BottomNavigationBarItem(
        icon: Icon(Icons.restaurant),
        label: 'Home',
      ),
      BottomNavigationBarItem(
        icon: Icon(Icons.local_offer_outlined),
        label: 'Offers',
      ),
      BottomNavigationBarItem(
        icon: Icon(Icons.view_in_ar_outlined),
        label: 'Wow Club',
      ),
      BottomNavigationBarItem(
        icon: Icon(Icons.ramen_dining),
        label: 'Nutrition',
      ),
      BottomNavigationBarItem(
        icon: Icon(Icons.account_box_outlined),
        label: 'Account',
      ),
    ],
  );
}

// ignore: non_constant_identifier_names
Widget ToggleButton(
    {required togglestateHandler, required isSelected, required context}) {
  return Container(
      padding: const EdgeInsets.fromLTRB(30, 30, 30, 10),
      child: Row(mainAxisAlignment: MainAxisAlignment.center, children: [
        ToggleButtons(
          isSelected: isSelected,
          // selectedColor: const Color(0xFFF9B313),
          selectedColor: const Color(0xFFFFFFFF),
          color: Color.fromARGB(255, 8, 8, 8),
          fillColor: const Color(0xFFF9B313),
          splashColor: const Color(0xFFF9B313),
          highlightColor: const Color(0xFFF9B313),
          textStyle: const TextStyle(fontWeight: FontWeight.bold),
          renderBorder: true,
          // borderColor: const Color(0xFFCFCFCF),
          borderWidth: 2,
          borderRadius: BorderRadius.circular(44),
          selectedBorderColor: const Color(0xFFF9B313),
          constraints: BoxConstraints(
            minWidth: (MediaQuery.of(context).size.width * 0.7) / 2,
            minHeight: 37,
          ),
          children: const [
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 12),
              child: Text('Delivery', style: TextStyle(fontSize: 18)),
            ),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 12),
              child: Text('Dine-in', style: TextStyle(fontSize: 18)),
            ),
          ],
          onPressed: (int newIndex) {
            togglestateHandler(newIndex);
          },
        ),
      ]));
}

// ignore: non_constant_identifier_names
Widget FixedNavbar({required context}) {
  return Container(
    padding: EdgeInsets.all(15),
    height: 100,
    color: Colors.white,
    child: Row(
      crossAxisAlignment: CrossAxisAlignment.end,
      children: [
        Container(
            // height: 100,
            margin: EdgeInsets.only(top: 20),
            // padding: EdgeInsets.only(left: 5),
            width: MediaQuery.of(context).size.width * 0.6,
            // color: Colors.red,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                Row(
                  children: const [
                    Icon(
                      Icons.location_on,
                      size: 30,
                    ),
                    Text("Home",
                        style: TextStyle(
                            fontSize: 20, fontWeight: FontWeight.bold))
                  ],
                ),
                Container(
                  padding: EdgeInsets.only(left: 10),
                  child: Text(
                      overflow: TextOverflow.ellipsis,
                      "A-1,101,North House Building"),
                )
              ],
            )),
        // const SizedBox(
        //   width: 20,
        // ),
        SizedBox(
          width: 80,
          child: Row(
            children: const [
              Icon(
                Icons.account_balance_wallet,
                size: 30,
              ),
              Text(
                " ₹130",
                style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
              )
            ],
          ),
        ),
        const SizedBox(
          width: 10,
        ),
        const SizedBox(
          width: 20, 
          child: Icon(
            Icons.add_shopping_cart,
            size: 30,
          ),
        ),
      ],
    ),
  );
}

// ignore: non_constant_identifier_names
Widget ScrollPage(
    {required context,
    required togglestateHandler,
    required isSelected,
    required index}) {
  return SingleChildScrollView(
      child: Column(
    crossAxisAlignment: CrossAxisAlignment.center,
    children: [
      const SizedBox(
        height: 100,
      ),

      SizedBox(
        width: MediaQuery.of(context).size.width * 0.9,
        child: TextField(
          decoration: InputDecoration(
            isDense: true,
            hintText: 'Search for cuisine, item or more',
            hintStyle: TextStyle(color: Colors.grey),
            border: OutlineInputBorder(
              borderRadius: BorderRadius.circular(30),
            ),
            prefixIcon: Icon(
              Icons.search,
              size: 40,
            ),
            // suffixIcon: Icon(
            //   Icons.search,
            //   size: 40,
            // ),
            // prefixStyle: TextStyle(),
            // suffixIconConstraints: BoxConstraints(minWidth: 40, minHeight: 20),
            prefixIconConstraints: BoxConstraints(minWidth: 40, minHeight: 20),
          ),
        ),
      ),

      ToggleButton(
          togglestateHandler: togglestateHandler,
          isSelected: isSelected,
          context: context),
      SizedBox(
        height: 5,
      ),

      // ?--------------Delivery
      index == 1
          ? DineinPage(context: context)
          : DeliveryPage(context: context),
      // ----------------------------
    ],
  ));
}

Widget DineinPage({required context}) {
  return Container(
    child: Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          "Outlets near you",
          style: TextStyle(fontWeight: FontWeight.bold),
        ),
        ProductCard(context: context),
        ProductCard(context: context),
        ProductCard(context: context),
        ProductCard(context: context),
      ],
    ),
  );
}

Widget DeliveryPage({required context}) {
  return Column(
    children: [
      SizedBox(
          height: 100,
          width: MediaQuery.of(context).size.width * 0.9,
          child: ListView.builder(
            itemCount: 6,
            itemBuilder: (context, index) {
              return SizedBox(
                  width: 100,
                  height: 100,
                  child: Card(
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(20),
                    ),
                    child: Image.asset(
                      'assets/images/tandoor.png',
                      fit: BoxFit.cover,
                    ),
                  ));
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
      Container(
        width: MediaQuery.of(context).size.width * 0.9,
        height: 140,
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(20),
            // color: Colors.blue,
            image: const DecorationImage(
                fit: BoxFit.fill, image: AssetImage("assets/images/hero.png"))),
      ),
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
      ProductCard(context: context),
      ProductCard(context: context),
      ProductCard(context: context),
    ],
  );
}

// ignore: non_constant_identifier_names
Widget ProductCard({required context}) {
  return Container(
      // color: Colors.green,
      margin: EdgeInsets.only(top: 10),
      height: 125,
      width: MediaQuery.of(context).size.width * 0.9,
      child: Row(
        children: [
          Container(
            height: 125,
            width: MediaQuery.of(context).size.width * 0.3,
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10),
                image: const DecorationImage(
                    fit: BoxFit.cover,
                    image: AssetImage("assets/images/vegtadka.png"))),
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
                  const Text(
                    "Veg Thukpa",
                    style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
                  ),
                  const SizedBox(
                    height: 5,
                  ),
                  Row(
                    children: const [
                      Icon(
                        Icons.star_outline_outlined,
                        color: Color.fromRGBO(249, 179, 19, 1),
                        size: 18,
                      ),
                      Text(
                        "4.5",
                        style: TextStyle(
                            color: Color.fromRGBO(249, 179, 19, 1),
                            fontSize: 15,
                            fontWeight: FontWeight.bold),
                      ),
                      SizedBox(
                        width: 10,
                      ),
                      Text(
                        ".",
                        style: TextStyle(
                            fontSize: 25, fontWeight: FontWeight.bold),
                      ),
                      SizedBox(
                        width: 10,
                      ),
                      Text(
                        "27 mins",
                        style: TextStyle(
                            fontSize: 15, fontWeight: FontWeight.bold),
                      ),
                    ],
                  ),
                  const SizedBox(
                    height: 5,
                  ),
                  const Text(
                    "A Tibetan noodle soup with green \n vegetables and flat noodles. Serves 1",
                    maxLines: 2,
                    style: TextStyle(
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
                      child: Text('ADD'),
                      style: OutlinedButton.styleFrom(
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(5),
                        ),
                      ),
                    ),
                  )
                ],
              ))
        ],
      ));
}
