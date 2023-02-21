import 'package:flutter/material.dart';
import '../../components/bottom_navbar.dart';

class WowClub extends StatefulWidget {
  const WowClub({Key? key}) : super(key: key);

  @override
  _WowClubState createState() => _WowClubState();
}

class _WowClubState extends State<WowClub> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        bottomNavigationBar: MyBottomNavbar(),
        body: SingleChildScrollView(
            child: SizedBox(
          height: 5000,
          child: Stack(
            children: [
              Positioned(
                child: Container(
                  width: MediaQuery.of(context).size.width,
                  height: MediaQuery.of(context).size.height,
                  color: Colors.amber,
                  child: Container(
                      padding: EdgeInsets.all(30),
                      child: const Text(
                        "WOW CLUB",
                        style: TextStyle(
                            fontSize: 20, fontWeight: FontWeight.bold),
                        textAlign: TextAlign.center,
                      )),
                ),
              ),
              Positioned(
                top: 80,
                child: Container(
                  padding: EdgeInsets.all(30),
                  decoration: BoxDecoration(
                    color: Colors.black,
                    borderRadius: BorderRadius.circular(25),
                  ),
                  width: MediaQuery.of(context).size.width,
                  height: MediaQuery.of(context).size.height,
                  child: const Text(
                    'THE PREMIUM EATERY CLUB YOU DESERVE',
                    maxLines: 2,
                    textAlign: TextAlign.center,
                    style: TextStyle(
                        color: Colors.white,
                        fontSize: 22,
                        fontWeight: FontWeight.bold),
                  ),
                ),
              ),
              Positioned(
                top: 180,
                child: Container(
                  width: MediaQuery.of(context).size.width,
                  //  height:MediaQuery.of(context).size.height,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(20),
                    color: Colors.white,
                  ),
                  child: Column(
                    children: [
                      Container(
                        padding: EdgeInsets.all(20),
                        child: const Text(
                          "COMING SOON",
                          textAlign: TextAlign.center,
                          style: TextStyle(
                            fontSize: 30,
                            fontWeight: FontWeight.w600,
                          ),
                        ),
                      ),
                      Row(
                        children: [
                          Expanded(
                            child: Container(
                                margin: const EdgeInsets.only(
                                    left: 12.0, right: 20.0),
                                child: const Divider(
                                  color: Colors.grey,
                                  height: 24,
                                )),
                          ),
                          const Text(
                            "WOW CLUB",
                            style: TextStyle(
                                fontSize: 35,
                                color: Colors.amber,
                                fontWeight: FontWeight.w600),
                          ),
                          Expanded(
                            child: Container(
                                margin: const EdgeInsets.only(
                                    left: 20.0, right: 12.0),
                                child: const Divider(
                                  color: Colors.grey,
                                  height: 36,
                                )),
                          )
                        ],
                      ),
                      Container(
                        child: Column(
                          children: [
                            wowMomoClub(url: 'assets/image/club_1.png'),
                            wowMomoClub(url: 'assets/image/club_2.png'),
                            wowMomoClub(url: 'assets/image/club_3.png'),
                            wowMomoClub(url: 'assets/image/club_2.png'),
                          ],
                        ),
                      ),
                      const Text(
                        "Select Your Member",
                        textAlign: TextAlign.center,
                        style: TextStyle(
                            fontSize: 20, fontWeight: FontWeight.bold),
                      ),
                      Row(children: [
                        Expanded(
                          child: Container(
                              margin: const EdgeInsets.only(
                                  left: 80.0, right: 80.0),
                              child: const Divider(
                                color: Color.fromARGB(255, 119, 113, 113),
                                height: 20,
                              )),
                        )
                      ]),
                      Container(
                        // width: 200,
                        padding: EdgeInsets.all(20),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            memberShipCard(context),
                            const SizedBox(
                              width: 10,
                            ),
                            memberShipCard(context),
                            // memberShipCard(context),
                          ],
                        ),
                      ),
                      Container(
                          decoration: BoxDecoration(
                              color: Colors.black,
                              borderRadius: BorderRadius.circular(20)),
                          child: ElevatedButton(
                            onPressed: () {},
                            style: ElevatedButton.styleFrom(
                              primary: Colors.black,
                              padding: const EdgeInsets.symmetric(
                                  horizontal: 50, vertical: 20),
                            ),
                            child: const Text(
                              'Apply EATCLUB & Proced',
                              style: TextStyle(fontSize: 20),
                            ),
                          )),
                      Container(
                        padding: const EdgeInsets.all(20),
                        child: RichText(
                          text: const TextSpan(
                              // text: "Fulfill your",
                              // style: TextStyle(color: Colors.black, fontSize: 30),
                              children: [
                                TextSpan(
                                  text: " Benefits on All ",
                                  style: TextStyle(
                                      color: Colors.black,
                                      fontSize: 23,
                                      fontWeight: FontWeight.bold),
                                ),
                                TextSpan(
                                  text: "Partner Brands",
                                  style: TextStyle(
                                      color: Color.fromRGBO(249, 179, 19, 1),
                                      fontSize: 23,
                                      fontWeight: FontWeight.bold),
                                )
                              ]),
                        ),
                      ),
                      Container(
                          child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          partnerCard(),
                          partnerCard(),
                          partnerCard(),
                        ],
                      ))
                    ],
                  ),
                ),
              )

              // Text('1255555555555555555555555555')
            ],
          ),
        )));
  }
}

Widget partnerCard() {
  return Container(
    padding: EdgeInsets.all(20),
    child: Image.asset('assets/image/p_1.png'),
  );
}

Widget memberShipCard(context) {
  return Container(
    width: MediaQuery.of(context).size.width * 0.4,
    padding: EdgeInsets.only(top: 10),
    decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(20),
        border: Border.all(
          color: Colors.amber,
          width: 3.0,
        )),
    child: Column(
      children: [
        const Text(
          'Free',
          style: TextStyle(fontWeight: FontWeight.bold),
        ),
        const Text('Trial'),
        const SizedBox(
          height: 5,
        ),
        const Text('1 month'),
        Container(
          padding: const EdgeInsets.all(10),
          width: MediaQuery.of(context).size.width,
          color: Colors.amber,
          child: Column(
            children: const [
              Text('Only on'),
              Text('WoW MOMO App',
                  style: TextStyle(fontWeight: FontWeight.bold))
            ],
          ),
        )
      ],
    ),
  );
}

Widget wowMomoClub({required url}) {
  return Container(
    padding: EdgeInsets.all(20),
    child: Row(
      children: [
        Image.asset(url),
        const SizedBox(
          width: 20,
        ),
        Container(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const Text(
                'Double Your Cashback',
                style: TextStyle(fontSize: 15, fontWeight: FontWeight.bold),
              ),
              Container(
                padding: EdgeInsets.only(top: 5),
                child: const Text(
                    'Just get 2X into cashback everytime\n you purchase',
                    maxLines: 2,
                    style: TextStyle(color: Colors.grey)),
              )
            ],
          ),
        )
      ],
      // Image.asset("assets/image/club_1.png"),
    ),
  );
}
