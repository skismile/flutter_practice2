import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:my_galf/components/colors.dart';

class Navbar extends StatelessWidget {
  final String currentScreen;
  const Navbar({required this.currentScreen});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        //! nav 1 start from here
        currentScreen == "big"
            ? Container(
                height: 33,
                width: MediaQuery.of(context).size.width,
                color: mainThemeColor,
                child: Row(
                  children: [
                    const SizedBox(
                      width: 141,
                    ),
                    SizedBox(
                      height: 12,
                      width: 536,
                      child: Text(
                        "MYGALF - YOUR TRUSTED WELLNESS MARKETPLACE, YOUR FAVOURITE BRANDS, OUR BEST PRICES !",
                        textAlign: TextAlign.center,
                        // style: GoogleFonts.lato(fontStyle: FontStyle.italic),
                        // style: TextStyle(color: Colors.white, fontFamily: "test"),

                        style: GoogleFonts.rubik(
                          textStyle: const TextStyle(
                              color: Color(0xFFFFFFFF), fontSize: 11),
                        ),
                      ),
                    ),
                    const SizedBox(
                      width: 58,
                    ),
                    SizedBox(
                        width: 185,
                        height: 20,
                        child: Row(
                          children: [
                            SizedBox(
                              width: 31,
                              height: 13,
                              child: Text("NEWS",
                                  style: GoogleFonts.rubik(
                                    textStyle: const TextStyle(
                                        color: Color(0xFFFFFFFF),
                                        fontWeight: FontWeight.w500,
                                        fontSize: 11),
                                  )),
                            ),
                            const SizedBox(
                              width: 12,
                            ),
                            const SizedBox(
                              width: 0,
                              child: VerticalDivider(
                                color: Color(0xFFFFFFFF),
                                thickness: 2,
                              ),
                            ),
                            const SizedBox(
                              width: 12,
                            ),
                            SizedBox(
                              height: 13,
                              width: 55,
                              child: Text("ABOUT US",
                                  style: GoogleFonts.rubik(
                                    textStyle: const TextStyle(
                                        color: Color(0xFFFFFFFF),
                                        fontWeight: FontWeight.w500,
                                        fontSize: 11),
                                  )),
                            ),
                            const SizedBox(
                              width: 12,
                            ),
                            const SizedBox(
                              width: 0,
                              child: VerticalDivider(
                                color: Color(0xFFFFFFFF),
                                thickness: 2,
                              ),
                            ),
                            const SizedBox(
                              width: 12,
                            ),
                            SizedBox(
                              width: 51,
                              height: 13,
                              child: Text("CONTACT",
                                  style: GoogleFonts.rubik(
                                    textStyle: const TextStyle(
                                        color: Color(0xFFFFFFFF),
                                        fontWeight: FontWeight.w500,
                                        fontSize: 11),
                                  )),
                            ),
                          ],
                        )),
                    const SizedBox(
                      width: 58,
                    ),
                    SizedBox(
                        width: 161,
                        height: 20,
                        child: Row(children: [
                          Text("DOWNLOAD APP",
                              style: GoogleFonts.rubik(
                                textStyle: const TextStyle(
                                    color: Color(0xFFFFFFFF),
                                    fontWeight: FontWeight.w500,
                                    fontSize: 11),
                              )),
                          const SizedBox(
                            width: 12,
                          ),
                          const SizedBox(
                            width: 0,
                            child: VerticalDivider(
                              color: Color(0xFFFFFFFF),
                              thickness: 2,
                            ),
                          ),
                          const SizedBox(
                            width: 12,
                          ),
                          Text("CONTACT",
                              style: GoogleFonts.rubik(
                                textStyle: const TextStyle(
                                    color: Color(0xFFFFFFFF),
                                    fontWeight: FontWeight.w500,
                                    fontSize: 11),
                              )),
                        ]))
                  ],
                ),
              )
            : SizedBox(),

        //! nav 2 start from here
        Container(
          // color: Colors.red,
          height: currentScreen == "big"
              ? 80
              : currentScreen == "medium"
                  ? 40
                  : 30,
          width: MediaQuery.of(context).size.width * 0.8,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              Image.network("assets/images/my_galf_logo.png"),
              Text(
                "Galf Shop",
                style: GoogleFonts.rubik(
                    textStyle: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: currentScreen == "small"
                            ? 10
                            : currentScreen == "medium"
                                ? 12
                                : 13)),
              ),
              Text(
                "Service",
                style: GoogleFonts.rubik(
                    textStyle: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: currentScreen == "small"
                            ? 10
                            : currentScreen == "medium"
                                ? 12
                                : 13)),
              ),
              Text(
                "Events",
                style: GoogleFonts.rubik(
                    textStyle: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: currentScreen == "small"
                            ? 10
                            : currentScreen == "medium"
                                ? 12
                                : 13)),
              ),
              Text(
                "Corporate Wellness",
                style: GoogleFonts.rubik(
                    textStyle: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: currentScreen == "small"
                            ? 10
                            : currentScreen == "medium"
                                ? 12
                                : 13)),
              ),
              Text(
                "Lounge",
                style: GoogleFonts.rubik(
                    textStyle: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: currentScreen == "small"
                            ? 10
                            : currentScreen == "medium"
                                ? 12
                                : 13)),
              ),
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
