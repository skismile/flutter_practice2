import "package:flutter/material.dart";
import 'package:get/get.dart';
import 'package:indexed/indexed.dart';
import 'package:otp_text_field/otp_field.dart';
import 'package:otp_text_field/style.dart';

class Otp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        // appBar: AppBar(
        //   title: Text("login page"),
        // ),
        body: Container(
      width: double.infinity,
      child: Indexer(
        children: [TopBox(), BottomBox()],
      ),
    ));
  }
}

// ! ---------------------------------------------------------------

// ignore: non_constant_identifier_names
Widget TopBox() {
  return Indexed(
    index: 1, //less the value, below the order
    child: Positioned(
      top: 0,
      left: 0,
      child: Container(
          height: 500,
          width: 400,
          decoration: const BoxDecoration(
            image: DecorationImage(
              image: AssetImage("assets/images/log_back.png"),
              fit: BoxFit.fill,
            ),
          ),
          // color: Colors.amber[700],
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.center,
            children: const [
              CircleAvatar(
                  radius: 70,
                  backgroundImage: AssetImage("assets/images/logo.png")
                  // NetworkImage(
                  //     "https://vrchennai.com/UploadFile/StoreImage/wow-momo-th.jpg"),
                  )
            ],
          )),
    ),
  );
}

Widget BottomBox() {
  return Indexed(
    index: 2, //last at widget tree, but middle in order
    child: Positioned(
      top: 390,
      left: 0,
      child: Container(
        decoration: const BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.only(
                topLeft: Radius.circular(50), topRight: Radius.circular(70))),
        height: 470,
        width: 400,
        child: Column(
          children: [
            const SizedBox(
              height: 70,
            ),
            Text("We have sent a verification code to"),
            const SizedBox(
              height: 10,
            ),
            const Text(
              "+91 7001727360",
              style: TextStyle(
                color: Color.fromRGBO(249, 179, 19, 1),
              ),
            ),
            const SizedBox(
              height: 20,
            ),

            SizedBox(
              width: 300,
              height: 50,
              child: OTPTextField(
                length: 6,
                // width:MediaQuery.of(context).size.width,
                fieldWidth: 38,
                outlineBorderRadius: 0,

                style: const TextStyle(fontSize: 17),
                textFieldAlignment: MainAxisAlignment.spaceAround,
                fieldStyle: FieldStyle.box,
                onCompleted: (pin) {
                  print("Completed: " + pin);
                },
              ),
            ),

            // SizedBox(
            //   width: 300,
            //   height: 50,
            //   child: TextField(
            //     keyboardType: TextInputType.numberWithOptions(),
            //     decoration: InputDecoration(
            //         hintText: '+91 7001727360',
            //         filled: true,
            //         fillColor: Colors.grey[200],
            //         border: OutlineInputBorder(
            //           borderRadius: BorderRadius.circular(30),
            //         )),
            //   ),
            // ),
            const SizedBox(
              height: 20,
            ),
            SizedBox(
              width: 300,
              height: 50,
              child: ElevatedButton(
                  style: ElevatedButton.styleFrom(
                    shape: StadiumBorder(),
                    backgroundColor: Color.fromRGBO(249, 179, 19, 1),
                  ),
                  onPressed: () {
                    Get.toNamed("/otp");
                  },
                  child: const Text("Enter")),
            ),
            const SizedBox(
              height: 10,
            ),
            Container(
              width: 300,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: const [
                  Expanded(flex: 1, child: Divider(color: Colors.black)),
                  SizedBox(
                    width: 10,
                  ),
                  Text(
                    "Or",
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
              height: 10,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                CircleAvatar(
                  backgroundColor: Colors.grey[100],
                  radius: 20,
                  child: const CircleAvatar(
                    backgroundColor: Colors.white,
                    radius: 15,
                    backgroundImage:
                        AssetImage("assets/images/google_logo.png"),
                  ),
                ),
                const SizedBox(
                  width: 20,
                ),
                CircleAvatar(
                  backgroundColor: Colors.grey[100],
                  radius: 20,
                  child: const CircleAvatar(
                    radius: 15,
                    backgroundColor: Colors.white,
                    // backgroundColor: Colors.transparent,
                    backgroundImage: AssetImage("assets/images/threedot.png"),
                  ),
                ),
              ],
            )
          ],
        ),
      ),
    ),
  );
}
