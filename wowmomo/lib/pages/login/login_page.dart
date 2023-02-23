import "package:flutter/material.dart";
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:wowmomo/components/colors.dart';

class LoginPage extends StatelessWidget {
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
          BottomBox(context: context),
          WowLogo(),
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
    // child: Image.asset(
    //   "assets/images/logo_eats.png",
    //   width: 100,
    //   height: 100,
    // )
    child: CircleAvatar(
      radius: 60,
      backgroundColor: Colors.transparent,
      // backgroundImage: AssetImage("assets/images/logo_eats.png")

      child: Container(
        width: 100,
        height: 100,
        decoration: BoxDecoration(
            image: const DecorationImage(
                fit: BoxFit.fill,
                image: AssetImage("assets/images/logo_eats.png")),
            color: Colors.red,
            borderRadius: BorderRadius.circular(50)),
      ),
    ),
    // NetworkImage(
    //     "https://vrchennai.com/UploadFile/StoreImage/wow-momo-th.jpg"),
  );
}

// ignore: non_constant_identifier_names
Widget TopBox({required context}) {
  return //less the value, below the order
      Positioned(
    top: 0,
    left: 0,
    child: Container(
      height: 900,
      // width: 400,
      width: MediaQuery.of(context).size.width,
      decoration: const BoxDecoration(
        image: DecorationImage(
          image: AssetImage("assets/images/log_back.png"),
          fit: BoxFit.fill,
        ),
      ),
      // color: Colors.amber[700],
    ),
  );
}

// -----------------------------------------------------
Widget BottomBox({required context}) {
  return Positioned(
    bottom: 0,
    left: 0,
    child: Container(
      decoration: const BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.only(
              topLeft: Radius.circular(50), topRight: Radius.circular(50))),
      height: 470,
      width: MediaQuery.of(context).size.width,
      child: Column(
        children: [
          const SizedBox(
            height: 70,
          ),
          Text("#MoreWOWEveryday",
              style: GoogleFonts.inter(
                textStyle: const TextStyle(
                    fontStyle: FontStyle.italic,
                    color: primaryAmberColor,
                    // color: Colors.amber[700],
                    fontWeight: FontWeight.bold,
                    fontSize: 24.8),
              )),
          RichText(
            text: TextSpan(
                // text: "Fulfill your",
                // style: TextStyle(color: Colors.black, fontSize: 30),
                children: [
                  TextSpan(
                    text: " Fulfill your",
                    style: GoogleFonts.inter(
                        textStyle: const TextStyle(
                            fontStyle: FontStyle.italic,
                            fontWeight: FontWeight.bold,
                            color: Colors.black,
                            fontSize: 24.8)),
                  ),
                  TextSpan(
                      text: " cravings",
                      style: GoogleFonts.inter(
                        textStyle: const TextStyle(
                            fontWeight: FontWeight.bold,
                            fontStyle: FontStyle.italic,
                            color: primaryAmberColor,
                            fontSize: 24.8),
                      )),
                  TextSpan(
                      text: " here!",
                      style: GoogleFonts.inter(
                        textStyle: const TextStyle(
                            fontWeight: FontWeight.bold,
                            fontStyle: FontStyle.italic,
                            color: Colors.black,
                            fontSize: 24.8),
                      )),
                ]),
          ),
          const SizedBox(
            height: 10,
          ),
          Text(
            "Experience Health and Happiness in every\nOrder!",
            textAlign: TextAlign.center,
            style: GoogleFonts.inter(textStyle: const TextStyle(fontSize: 12)),
          ),
          const SizedBox(
            height: 30,
          ),
          SizedBox(
            width: 300,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Expanded(flex: 1, child: Divider(color: Colors.black)),
                const SizedBox(
                  width: 10,
                ),
                Text("Sign In / Register",
                    style: GoogleFonts.inter(
                      textStyle: const TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 11,
                          color: Color.fromRGBO(45, 45, 45, 1)),
                    )),
                const SizedBox(
                  width: 10,
                ),
                Expanded(child: Divider(color: Colors.black)),
              ],
            ),
          ),
          const SizedBox(
            height: 20,
          ),
          SizedBox(
            width: 300,
            height: 50,
            child: TextField(
              keyboardType: const TextInputType.numberWithOptions(),
              decoration: InputDecoration(
                isDense: true,
                hintText: 'Enter your number',
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(30),
                ),
                prefixIcon: const Text(
                  "+91",
                  textAlign: TextAlign.center,
                ),
                // prefixStyle: TextStyle(),
                prefixIconConstraints:
                    const BoxConstraints(minWidth: 40, minHeight: 20),
              ),
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
                  shape: const StadiumBorder(),
                  backgroundColor: primaryAmberColor,
                ),
                onPressed: () {
                  Get.toNamed("/otp");
                },
                child: const Text(
                  "Next",
                  style: TextStyle(color: Colors.white, fontSize: 20),
                )),
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
          )
        ],
      ),
    ),
  );
}
