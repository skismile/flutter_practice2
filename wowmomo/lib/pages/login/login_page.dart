import "package:flutter/material.dart";
import 'package:indexed/indexed.dart';

class LoginPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
        // appBar: AppBar(
        //   title: Text("login page"),
        // ),
        body: Container(
      width: double.infinity,
      child: Indexer(
        children: [
          Indexed(
            index: 1, //less the value, below the order
            child: Positioned(
              top: 0,
              left: 0,
              child: Container(
                  height: 300,
                  width: 400,
                  color: Colors.amber[700],
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: const [
                      CircleAvatar(
                          radius: 50,
                          backgroundImage: AssetImage("assets/images/logo.png")
                          // NetworkImage(
                          //     "https://vrchennai.com/UploadFile/StoreImage/wow-momo-th.jpg"),
                          )
                    ],
                  )),
            ),
          ),
          Indexed(
            index: 2, //last at widget tree, but middle in order
            child: Positioned(
              top: 250,
              left: 0,
              child: Container(
                decoration: const BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.only(
                        topLeft: Radius.circular(50),
                        topRight: Radius.circular(60))),
                height: 500,
                width: 400,
                child: Column(
                  children: [
                    const SizedBox(
                      height: 70,
                    ),
                    Text(
                      "#MoreWOWEveryday",
                      style: TextStyle(
                          color: Colors.amber[700],
                          fontWeight: FontWeight.bold,
                          fontSize: 30),
                    ),
                    RichText(
                      text: TextSpan(
                          // text: "Fulfill your",
                          // style: TextStyle(color: Colors.black, fontSize: 30),
                          children: [
                            const TextSpan(
                              text: " Fulfill your",
                              style:
                                  TextStyle(color: Colors.black, fontSize: 30),
                            ),
                            TextSpan(
                              text: " cravings",
                              style: TextStyle(
                                  color: Colors.amber[700], fontSize: 30),
                            ),
                            TextSpan(
                              text: " here!",
                              style:
                                  TextStyle(color: Colors.black, fontSize: 30),
                            ),
                          ]),
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    Text("Experience Health and Happiness in every"),
                    Text("Order!"),
                    SizedBox(
                      height: 30,
                    ),
                    Text(
                      "Sign In / Register",
                      style: TextStyle(fontWeight: FontWeight.bold),
                    ),
                    SizedBox(
                      height: 20,
                    ),
                    SizedBox(
                      width: 300,
                      height: 50,
                      child: TextField(
                        keyboardType: TextInputType.numberWithOptions(),
                        decoration: InputDecoration(
                            hintText: '+91 7001727360',
                            filled: true,
                            fillColor: Colors.grey[200],
                            border: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(30),
                            )),
                      ),
                    ),
                    SizedBox(
                      height: 20,
                    ),
                    SizedBox(
                      width: 300,
                      height: 50,
                      child: ElevatedButton(
                          style: ElevatedButton.styleFrom(
                              shape: StadiumBorder(),
                              backgroundColor: Colors.amber[700]),
                          onPressed: () {},
                          child: Text("Next")),
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    Text("Or"),
                    SizedBox(
                      height: 10,
                    ),
                     Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        CircleAvatar(
                          backgroundColor: Colors.transparent,
                          backgroundImage:
                              AssetImage("assets/images/google_logo.png"),
                        ),
                        SizedBox(
                          width: 20,
                        ),
                        CircleAvatar(
                          backgroundColor: Colors.transparent,
                          backgroundImage:
                              AssetImage("assets/images/threedot.png"),
                        ),
                      ],
                    )
                  ],
                ),
              ),
            ),
          )
        ],
      ),
    ));
  }
}
