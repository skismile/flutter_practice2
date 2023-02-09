import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        bottomNavigationBar: BottomNavigationBar(
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
              icon: Icon(Icons.message),
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
        ),
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
        body: Container(
            width: double.infinity,
            // height: MediaQuery.of(context).size.height,
            height: MediaQuery.of(context).size.height,
            // color: Colors.red,
            child: Stack(
              children: [
                ScrollPage(context: context),
                FixedNavbar(context: context),
              ],
            )));
  }
}

Widget FixedNavbar({required context}) {
  return Container(
    padding: EdgeInsets.all(15),
    height: 90,
    color: Colors.white,
    child: Row(
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        Expanded(
            child: Row(
          children: [
            Icon(
              Icons.location_on,
              size: 30,
            ),
            Text("Home",
                style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold))
          ],
        )),
        SizedBox(
          width: 90,
          child: Row(
            children: [
              Icon(
                Icons.account_balance_wallet,
                size: 30,
              ),
              Text(
                " \₹130",
                style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
              )
            ],
          ),
        ),
        SizedBox(
          width: 100,
          child: Icon(
            Icons.add_shopping_cart,
            size: 30,
          ),
        ),
      ],
    ),
  );
}

Widget ScrollPage({required context}) {
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
            // prefixStyle: TextStyle(),
            prefixIconConstraints: BoxConstraints(minWidth: 40, minHeight: 20),
          ),
        ),
      ),

      SizedBox(
        height: 20,
      ),
      Row(
        children: const [
          Expanded(
              child: Text(
            "Delivery",
            textAlign: TextAlign.center,
          )),
          Expanded(
              child: Text(
            "Dine-in",
            textAlign: TextAlign.center,
          )),
        ],
      ),
      SizedBox(
        height: 20,
      ),
      // ?--------------Delivery

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
                      'assets/images/Momos.png',
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
        height: 150,
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(20),
            color: Colors.blue,
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
      // ----------------------------
    ],
  ));
}

// ignore: non_constant_identifier_names
Widget ProductCard({required context}) {
  return Container(
      // color: Colors.green,
      margin: EdgeInsets.only(top: 10),
      height: 180,
      width: MediaQuery.of(context).size.width * 0.9,
      child: Row(
        children: [
          Container(
            height: 180,
            width: 120,
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
              child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const Text(
                "Veg Thukpa",
                style: TextStyle(fontSize: 25, fontWeight: FontWeight.bold),
              ),
              const SizedBox(
                height: 10,
              ),
              Row(
                children: const [
                  Text(
                    "4.5",
                    style: TextStyle(
                        color: Color.fromRGBO(249, 179, 19, 1),
                        fontSize: 20,
                        fontWeight: FontWeight.bold),
                  ),
                  SizedBox(
                    width: 10,
                  ),
                  Text(
                    "27 mins",
                    style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                  ),
                ],
              ),
              const SizedBox(
                height: 10,
              ),
              const Text(
                "A Tibetan noodle soup with green \n vegetables and flat noodles. Serves 1",
                style: TextStyle(
                  fontSize: 13,
                  fontWeight: FontWeight.w500,
                ),
              ),
              const SizedBox(
                height: 10,
              ),
              SizedBox(
                width: 100,
                child: OutlinedButton(
                  onPressed: () {},
                  child: Text('ADD'),
                  style: OutlinedButton.styleFrom(
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(12),
                    ),
                  ),
                ),
              )
            ],
          ))
        ],
      ));
}
