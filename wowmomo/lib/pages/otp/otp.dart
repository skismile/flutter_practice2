import "package:flutter/material.dart";
import 'package:get/get.dart';

import 'package:otp_text_field/otp_field.dart';
import 'package:otp_text_field/style.dart';
import 'package:wowmomo/pages/brand/brand.dart';
import 'package:wowmomo/pages/home/home_page.dart';

class Otp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        // appBar: AppBar(
        //   title: Text("login page"),
        // ),
        body: Container(
      width: double.infinity,
      child: Stack(
        children: [
          TopBox(context: context),
          BackButton(),
          WowLogo(),
          BottomBox(context: context),
        ],
      ),
    ));
  }
}

// ! ---------------------------------------------------------------
Widget WowLogo() {
  return Positioned(
      top: 100,
      left: 0,
      right: 0,
      child: Image.asset(
        "assets/images/logo.png",
        width: 100,
        height: 100,
      )
      // NetworkImage(
      //     "https://vrchennai.com/UploadFile/StoreImage/wow-momo-th.jpg"),
      );
}

Widget BackButton() {
  return Positioned(
      left: 10,
      top: 30,
      child: IconButton(
        icon: Icon(
          Icons.arrow_back_ios,
          size: 30,
        ),
        onPressed: () {
          Get.back();
        },
      ));
}

Widget TopBox({required context}) {
  return //less the value, below the order
      Positioned(
    top: 0,
    left: 0,
    child: Container(
      height: 900,
      // width: 400,

      width: MediaQuery.of(context).size.width,
      decoration: BoxDecoration(
        image: DecorationImage(
          image: AssetImage("assets/images/log_back.png"),
          fit: BoxFit.fill,
        ),
      ),
      // color: Colors.amber[700],
    ),
  );
}

Widget BottomBox({required context}) {
  return Positioned(
    bottom: 0,
    left: 0,
    child: Container(
      decoration: const BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.only(
              topLeft: Radius.circular(50), topRight: Radius.circular(70))),
      width: MediaQuery.of(context).size.width,
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
                fontWeight: FontWeight.bold),
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
                  Get.to(Brand());
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
                  backgroundImage: AssetImage("assets/images/google_logo.png"),
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
          ),
          SizedBox(
            height: 30,
          )
        ],
      ),
    ),
  );
}
