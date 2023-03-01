import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:my_galf/components/navbar.dart';
import 'package:my_galf/pages/corporate_wellness_page/corporate_wellness_controller.dart';

import '../../utils/icons.dart';

class CorporateWellnessPage extends StatefulWidget {
  const CorporateWellnessPage({super.key});

  @override
  State<CorporateWellnessPage> createState() => _CorporateWellnessPageState();
}

class _CorporateWellnessPageState extends State<CorporateWellnessPage> {
  final xController = Get.put(WellnessController());

  @override
  Widget build(BuildContext context) {
    ScrollController scrollController = ScrollController();

    final currentWidth = MediaQuery.of(context).size.width;
    final currentScreen = currentWidth <= 300
        ? "xsmall"
        : currentWidth > 300 && currentWidth < 600
            ? "small"
            : currentWidth >= 600 && currentWidth <= 1200
                ? "medium"
                : "big";
    return Scaffold(
      body: ListView(
        children: [
          Navbar(currentScreen: currentScreen),
          wellnessEcosystemUpperSection(
              context: context, currentScreen: currentScreen),
          const SizedBox(
            height: 15,
          ),
          keyFeatures(
            context: context,
            currentScreen: currentScreen,
            title: 'Key Features',
          ),
          const SizedBox(
            height: 8,
          ),
          Center(
            child: Container(
              height: 3,
              width: 70,
              color: Colors.blue,
            ),
          ),
          Row(
            children: [
              SizedBox(
                height: 30,
                width: 20,
                child: ElevatedButton(
                  style: OutlinedButton.styleFrom(
                    padding: EdgeInsets.zero,
                    backgroundColor: Colors.grey,
                  ),
                  onPressed: () {
                    scrollController.animateTo(
                      scrollController.offset - 300.0,
                      duration: const Duration(milliseconds: 500),
                      curve: Curves.ease,
                    );
                  },
                  child: const Icon(
                    Icons.arrow_back_ios,
                    color: Colors.white,
                    size: 15,
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.symmetric(
                  vertical: 10,
                ),
                child: SizedBox(
                  height: 110,
                  width: MediaQuery.of(context).size.width * 0.9,
                  child: ListView.builder(
                    padding: const EdgeInsets.symmetric(
                      horizontal: 15,
                      vertical: 15,
                    ),
                    controller: scrollController,
                    shrinkWrap: true,
                    scrollDirection: Axis.horizontal,
                    itemCount: 3,
                    itemBuilder: (context, index) {
                      return featuresList(index: index);
                    },
                  ),
                ),
              ),
              SizedBox(
                width: 20,
                height: 30,
                child: ElevatedButton(
                  style: OutlinedButton.styleFrom(
                    padding: EdgeInsets.zero,
                    backgroundColor: Colors.grey,
                  ),
                  child: const Icon(
                    Icons.arrow_forward_ios,
                    color: Colors.white,
                    size: 15,
                  ),
                  onPressed: () {
                    scrollController.animateTo(
                      scrollController.offset + 300.0,
                      duration: const Duration(milliseconds: 500),
                      curve: Curves.ease,
                    );
                  },
                ),
              ),
            ],
          ),
          const SizedBox(
            height: 20,
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Container(
              decoration: const BoxDecoration(
                image: DecorationImage(
                  image: AssetImage(
                    "images/carv.png", //remaining
                  ),
                  fit: BoxFit.fill,
                ),
              ),
              height: 800,
              width: 200,
              child: Row(
                children: <Widget>[
                  Expanded(
                    child: SizedBox(
                      height: 600,
                      width: 800,
                      child: Image.asset(
                        "images/mobile.png",
                      ),
                    ),
                  ),
                  Expanded(
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        const SizedBox(
                          height: 100,
                        ),
                        Row(
                          children: [
                            Text(
                              "Download ",
                              style: GoogleFonts.rubik(
                                textStyle: const TextStyle(
                                  fontSize: 40,
                                  color: Color.fromARGB(255, 13, 113, 196),
                                  fontWeight: FontWeight.w700,
                                  fontStyle: FontStyle.italic,
                                ),
                              ),
                            ),
                            Text(
                              "our",
                              style: GoogleFonts.rubik(
                                textStyle: const TextStyle(
                                  fontSize: 40,
                                  fontWeight: FontWeight.w700,
                                  fontStyle: FontStyle.italic,
                                ),
                              ),
                            ),
                          ],
                        ),
                        const SizedBox(
                          height: 1,
                        ),
                        Text(
                          "new app",
                          style: GoogleFonts.rubik(
                            textStyle: const TextStyle(
                              fontSize: 40,
                              fontWeight: FontWeight.w700,
                              fontStyle: FontStyle.italic,
                            ),
                          ),
                        ),
                        const SizedBox(
                          height: 25,
                        ),
                        Text(
                          "Manage all Employee Wellness activities with one",
                          style: GoogleFonts.rubik(
                            textStyle: const TextStyle(
                              fontSize: 13,
                            ),
                          ),
                        ),
                        const SizedBox(
                          height: 5,
                        ),
                        Text(
                          "Subscription Under one Platform",
                          style: GoogleFonts.rubik(
                            textStyle: const TextStyle(
                              fontSize: 13,
                            ),
                          ),
                        ),
                        const SizedBox(
                          height: 15,
                        ),
                        bulletedText(
                            text:
                                "Manage all Employee Wellness in one Platform"),
                        const SizedBox(
                          height: 8,
                        ),
                        bulletedText(
                            text: "Wellness Surveys, Strategies and Analytics"),
                        const SizedBox(
                          height: 8,
                        ),
                        bulletedText(
                          text: "Leadership Dashboard",
                        ),
                        const SizedBox(
                          height: 8,
                        ),
                        bulletedText(
                          text: "Bonus Reward for Employees",
                        ),
                        const SizedBox(
                          height: 8,
                        ),
                        bulletedText(
                          text: "Access to Premium Events",
                        ),
                        const SizedBox(
                          height: 30,
                        ),
                        ElevatedButton(
                          onPressed: () {},
                          style: ElevatedButton.styleFrom(
                            backgroundColor:
                                const Color.fromARGB(255, 27, 72, 109),
                          ),
                          child: Text(
                            "JOIN NOW",
                            style: GoogleFonts.rubik(
                              textStyle: const TextStyle(
                                fontStyle: FontStyle.normal,
                                fontSize: 13,
                              ),
                            ),
                          ),
                        ),
                        const SizedBox(
                          height: 30,
                        ),
                        Row(
                          children: [
                            Container(
                              height: 90,
                              width: 100,
                              decoration: const BoxDecoration(
                                image: DecorationImage(
                                  fit: BoxFit.fill,
                                  image: AssetImage(
                                    "images/qrcode.png",
                                  ),
                                ),
                              ),
                            ),
                            const SizedBox(
                              width: 25,
                            ),
                            Container(
                              height: 120,
                              width: 0.8,
                              color: Colors.grey,
                            ),
                            const SizedBox(
                              width: 25,
                            ),
                            Column(
                              children: [
                                Container(
                                  height: 40,
                                  width: 100,
                                  decoration: const BoxDecoration(
                                    image: DecorationImage(
                                      fit: BoxFit.fill,
                                      image: AssetImage(
                                          "assets/images/googleplay.png"),
                                    ),
                                  ),
                                ),
                                const SizedBox(
                                  height: 10,
                                ),
                                Container(
                                  height: 40,
                                  width: 100,
                                  decoration: const BoxDecoration(
                                    image: DecorationImage(
                                      fit: BoxFit.fill,
                                      image: AssetImage(
                                        "assets/images/appstore.png",
                                      ),
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ],
                        )
                      ],
                    ),
                  ),
                ],
              ),
            ),
          )
        ],
      ),
    );
  }

  Row bulletedText({required String text}) {
    return Row(
      children: [
        GalfIcons.bulletedCircle,
        const SizedBox(
          width: 5,
        ),
        Text(
          text,
          style: const TextStyle(
            fontSize: 13,
          ),
        ),
      ],
    );
  }

  Row featuresList({required int index}) {
    return Row(
      children: [
        Container(
          height: 80,
          width: 200,
          decoration: BoxDecoration(
            color: Colors.grey.withOpacity(0.2),
            borderRadius: BorderRadius.circular(15),
          ),
          child: Row(
            children: [
              Wrap(
                direction: Axis.horizontal,
                children: [
                  const SizedBox(
                    width: 10,
                  ),
                  CircleAvatar(
                    radius: 25,
                    backgroundImage: AssetImage(
                      "${xController.featuresList[index]['image']}",
                    ),
                  ),
                  const SizedBox(
                    width: 10,
                  ),
                  Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        "${xController.featuresList[index]['feature']}",
                        style: const TextStyle(
                          fontSize: 12,
                          fontWeight: FontWeight.w700,
                        ),
                      ),
                      const SizedBox(
                        height: 5,
                      ),
                      const Text(
                        "Online and Offline",
                        style: TextStyle(
                          fontSize: 10,
                          fontWeight: FontWeight.normal,
                        ),
                      ),
                      const Text(
                        "Wellness Consultancy",
                        style: TextStyle(
                          fontSize: 10,
                          fontWeight: FontWeight.normal,
                        ),
                      ),
                    ],
                  )
                ],
              ),
            ],
          ),
        ),
        const SizedBox(
          width: 15,
        ),
      ],
    );
  }

  Widget wellnessEcosystemUpperSection(
      {required context, required currentScreen}) {
    return Stack(
      children: [
        ClipPath(
          child: Container(
            width: MediaQuery.of(context).size.width,
            height: currentScreen == "big"
                ? 330
                : currentScreen == "medium"
                    ? 250
                    : 200,
            decoration: const BoxDecoration(
              image: DecorationImage(
                fit: BoxFit.fill,
                image: AssetImage("assets/images/ecosystem_banner.jpg"),
              ),
            ),
          ),
        ),
        Positioned(
          left: 30,
          top: 100,
          child: Text(
            "Wellness Ecosystem",
            style: GoogleFonts.rubik(
              textStyle: const TextStyle(
                fontWeight: FontWeight.w800,
                fontSize: 22,
              ),
            ),
          ),
        ),
        Positioned(
          left: 30,
          top: 135,
          child: Text(
            "Home/Wellness Ecosystem".toUpperCase(),
            style: GoogleFonts.rubik(
              textStyle: const TextStyle(
                fontSize: 10,
              ),
            ),
          ),
        ),
      ],
    );
  }

  Widget keyFeatures(
      {required context, required currentScreen, required String title}) {
    return Center(
      child: Text(
        title,
        style: GoogleFonts.rubik(
          textStyle: const TextStyle(
            fontSize: 20,
            fontWeight: FontWeight.w700,
          ),
        ),
      ),
    );
  }
}
