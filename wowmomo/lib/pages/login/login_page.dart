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
                    children: [
                      CircleAvatar(
                        radius: 50,
                        backgroundImage: NetworkImage(
                            "https://vrchennai.com/UploadFile/StoreImage/wow-momo-th.jpg"),
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
                decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.only(
                        topLeft: Radius.circular(50),
                        topRight: Radius.circular(60))),
                height: 500,
                width: 400,
              ),
            ),
          )
        ],
      ),
    )

        // Column(
        //   children: [
        //     Indexer(children: [
        //       Indexed(
        //           index: 1, //more the index, upper the order
        //           child: Positioned(
        //             top: 50,
        //             left: 50,
        //             child: Container(
        //               width: double.infinity,
        //               // height: 350,
        //               color: Colors.amber[600],
        //               child: Text("data"),
        //             ),
        //           )),
        //       Indexed(
        //           index: 2, //more the index, upper the order
        //           child: Positioned(
        //             top: 50,
        //             left: 50,
        //             child: Container(
        //               decoration: BoxDecoration(
        //                   color: Colors.red,
        //                   borderRadius: BorderRadius.only(
        //                       topLeft: Radius.circular(40),
        //                       topRight: Radius.circular(40))),
        //               width: double.infinity,
        //               // height: 472,
        //               child: const Text("data"),
        //             ),
        //           )),
        //     ]),
        //   ],
        // )

        );
  }
}
