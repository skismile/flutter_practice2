import 'package:flutter/material.dart';

class FixedNavbar extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Container(
      padding: EdgeInsets.all(15),
      height: 100,
      color: Colors.white,
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.end,
        children: [
          Container(
              // height: 100,
              margin:const EdgeInsets.only(top: 20),
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
                              fontSize: 20, fontWeight: FontWeight.bold)),
                      Icon(Icons.arrow_drop_down)
                    ],
                  ),
                  Container(
                    padding:const EdgeInsets.only(left: 10),
                    child:const Text(
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
}
