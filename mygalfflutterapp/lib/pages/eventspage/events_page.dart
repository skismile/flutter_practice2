import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:my_galf/components/footer.dart';
import 'package:my_galf/components/navbar.dart';

class EventsPage extends StatelessWidget {
  const EventsPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final currentWidth = MediaQuery.of(context).size.width;
    final currentScreen = currentWidth <= 300
        ? "xsmall"
        : currentWidth > 300 && currentWidth < 600
            ? "small"
            : currentWidth >= 600 && currentWidth <= 1200
                ? "medium"
                : "big";
    return Scaffold(

        // appBar: AppBar(
        //   title: Text("$currentWidth"),
        // ),
        body: Container(
      width: double.infinity,
      child: ListView(
        shrinkWrap: true,
        children: [
          Navbar(currentScreen: currentScreen),
          Eventhero(context: context, currentScreen: currentScreen),
          const SizedBox(
            height: 90,
          ),
          UpcomingEvents(context: context, currentScreen: currentScreen),
          Footer(context: context)
        ],
      ),
    ));
  }
}

// -------------------------
Widget Eventhero({required context, required currentScreen}) {
  return Container(
    width: MediaQuery.of(context).size.width,
    height: currentScreen == "big"
        ? 330
        : currentScreen == "medium"
            ? 250
            : 200,
    decoration: const BoxDecoration(
        image: DecorationImage(
            fit: BoxFit.fill,
            image: AssetImage("assets/images/events_hero.jpg"))),
  );
}

Widget UpcomingEvents({required context, required currentScreen}) {
  // print("object-----------$context");
  return UnconstrainedBox(
      child: Container(
    width: MediaQuery.of(context).size.width * 0.8,
    // color: Colors.blue,
    // height: 500,
    child: Column(
      children: [
        Row(
          children: [
            Text("Up coming Event",
                style: GoogleFonts.rubik(
                  textStyle: const TextStyle(
                      fontSize: 40, fontWeight: FontWeight.bold),
                ))
          ],
        ),
        const SizedBox(
          height: 30,
        ),
        Container(
          width: MediaQuery.of(context).size.width,
          height: 1800,
          child: GridView.count(
            // childAspectRatio: 1 / 0.8,
            physics: const NeverScrollableScrollPhysics(),
            crossAxisCount: currentScreen == "big"
                ? 3
                : currentScreen == "medium"
                    ? 2
                    : 1,
            crossAxisSpacing: 10,
            mainAxisSpacing: 30,
            // mainAxisSpacing: 2.0,/
            children: List.generate(12, (index) {
              return EventsCard(context: context, currentScreen: currentScreen);
            }),
          ),
        ),
        SizedBox(
          height: 50,
          child: ElevatedButton(
              onPressed: () {},
              style: ElevatedButton.styleFrom(backgroundColor: Colors.grey),
              child: const Text(
                "Load More Event",
                style: TextStyle(color: Colors.black),
              )),
        ),
        const SizedBox(
          height: 20,
        ),
      ],
    ),
  ));
}

Widget EventsCard({required context, required currentScreen}) {
  return Container(
    decoration: BoxDecoration(
        // color: Colors.red,
        borderRadius: BorderRadius.circular(20)),
    child: Column(
      children: [
        Container(
          height: currentScreen == "big"
              ? 160
              : currentScreen == "small"
                  ? 250
                  : 180,
          // color: Colors.red,

          decoration: const BoxDecoration(
              borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(10), topRight: Radius.circular(10)),
              image: DecorationImage(
                  fit: BoxFit.fill,
                  image: AssetImage("assets/images/events_card1.jpg"))),
        ),
        const SizedBox(
          height: 30,
        ),
        Container(
          // color: Colors.green,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              Column(
                children: [
                  Text("SEP",
                      style: GoogleFonts.rubik(
                        textStyle: const TextStyle(
                            color: Color.fromARGB(255, 214, 126, 230),
                            fontWeight: FontWeight.bold,
                            fontSize: 22),
                      )),
                  Text("18",
                      style: GoogleFonts.rubik(
                        textStyle: const TextStyle(
                            fontWeight: FontWeight.bold, fontSize: 30),
                      )),
                ],
              ),
              const SizedBox(
                width: 10,
              ),
              Expanded(
                child: Column(
                  children: [
                    Text("Lorem ipsum dolor sit amet",
                        // maxLines: 2,
                        softWrap: false,
                        overflow: TextOverflow.ellipsis,
                        textAlign: TextAlign.start,
                        style: GoogleFonts.rubik(
                          textStyle: const TextStyle(
                              fontWeight: FontWeight.bold, fontSize: 22),
                        )),
                    Text(
                        "Lorem ipsum dolor sit amet,consectetur \n adipiscing elit,ula cursus",
                        maxLines: 2,
                        softWrap: false,
                        overflow: TextOverflow.ellipsis,
                        textAlign: TextAlign.start,
                        style: GoogleFonts.rubik(
                          textStyle: const TextStyle(
                              fontWeight: FontWeight.bold,
                              fontSize: 15,
                              color: Color.fromARGB(66, 8, 8, 8)),
                        ))
                  ],
                ),
              ),
            ],
          ),
        ),
      ],
    ),
    // color: Colors.red,
  );
}
