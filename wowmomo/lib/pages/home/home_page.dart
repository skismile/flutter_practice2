import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        floatingActionButton: FloatingActionButton(
            onPressed: () {},
            child: Container(
              height: 400,
              width: 400,
              decoration: BoxDecoration(
                image: DecorationImage(
                  image: AssetImage("assets/images/logo.png"),
                  opacity: 0.3,
                  fit: BoxFit.fill,
                ),
              ),
              child: Icon(
                Icons.more_horiz,
                size: 50,
                color: Colors.white,
              ),
            )),
        appBar: AppBar(
          title: const Text("Home Page"),
        ),
        body: Container(
            width: double.infinity,
            // height: MediaQuery.of(context).size.height,
            height: 600,
            color: Colors.red,
            child: Column(
              children: [
                Row(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: const [
                    SizedBox(
                      width: 60,
                      child: Icon(
                        Icons.location_on,
                        size: 40,
                      ),
                    ),
                    Expanded(child: Text("Home")),
                    SizedBox(
                      width: 60,
                      child: Text("Wallet"),
                    ),
                    SizedBox(
                      width: 100,
                      child: Text("Shopping Cart"),
                    ),
                  ],
                ),
                TextField(
                  decoration: InputDecoration(hintText: "Search field"),
                ),
                Row(
                  children: [
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

                // ?--------------Delivery

                SizedBox(
                  
                    height: 100,
                    child: ListView.builder(
                      itemCount: 6,
                      itemBuilder: (context, index) {
                        return Container(
                            decoration: BoxDecoration(
                                color: Colors.red,
                                borderRadius: BorderRadius.circular(50)),
                            width: 100,
                            height: 100,
                            child: Card(
                              
                              child: Text(
                                "${index}",
                                textAlign: TextAlign.center,
                              ),
                            ));
                      },
                      scrollDirection: Axis.horizontal,
                    )),
              ],
            )));
  }
}
