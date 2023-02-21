import 'package:flutter/material.dart';
import 'package:wowmomo/components/bottom_navbar.dart';
import 'package:wowmomo/components/herocard.dart';

class OfferPage extends StatefulWidget {
  const OfferPage({Key? key}) : super(key: key);

  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return _OfferPageState();
  }
}

class _OfferPageState extends State<OfferPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        bottomNavigationBar: MyBottomNavbar(),
        body: SingleChildScrollView(
          child: Column(
            children: [
//search cbar container
              Container(
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(20),
                  color: Colors.amber,
                ),
                width: double.infinity,
                padding: EdgeInsets.all(25),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    const Text(
                      "WOW OFFERS",
                      style:
                          TextStyle(fontSize: 20, fontWeight: FontWeight.w600),
                    ),
                    SizedBox(height: 20),
                    TextField(
                      decoration: InputDecoration(
                        fillColor: Colors.white,
                        filled: true,
                        contentPadding: const EdgeInsets.symmetric(
                          vertical: 18.0,
                          horizontal: 10,
                        ),
                        hintText: "Search item here...",
                        suffixIcon: const Icon(Icons.mic_rounded),
                        prefixIcon: const Icon(Icons.search),
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(
                            35.0,
                          ),
                          borderSide:
                              const BorderSide(width: 3, color: Colors.amber),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              //Deal of the day
              const SizedBox(
                height: 5,
              ),
              Row(
                children: [
                  Expanded(
                    child: Container(
                        margin: const EdgeInsets.only(left: 12.0, right: 20.0),
                        child: const Divider(
                          color: Colors.grey,
                          height: 24,
                        )),
                  ),
                  const Text(
                    "Deal of the day",
                    style: TextStyle(
                        fontSize: 13,
                        color: Colors.black,
                        fontWeight: FontWeight.w600),
                  ),
                  Expanded(
                    child: Container(
                        margin: const EdgeInsets.only(left: 20.0, right: 12.0),
                        child: const Divider(
                          color: Colors.grey,
                          height: 36,
                        )),
                  )
                ],
              ),

              //offer box
              Herocard(image: "assets/images/hero.png"),

              // Delivery and Wow Mony
              const SizedBox(height: 35),
              Container(
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Container(
                      padding: const EdgeInsets.all(5),
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(
                            20,
                          ),
                          border: Border.all(width: 1, color: Colors.amber)),
                      child: Row(
                        children: [
                          // Image.asset('assets/images/logo.png'),
                          const Icon(Icons.add),
                          const SizedBox(
                            width: 8,
                          ),
                          Column(
                            mainAxisAlignment: MainAxisAlignment.start,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: const [
                              Text(
                                'Wow Money',
                                style: TextStyle(
                                    fontSize: 16,
                                    fontStyle: FontStyle.normal,
                                    fontWeight: FontWeight.w700),
                              ),
                              Text('Get 10% cashback \n on every purchase')
                            ],
                          )
                        ],
                      ),
                    ),
                    const SizedBox(width: 5),
                    Container(
                      padding: EdgeInsets.all(5),
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(
                            20,
                          ),
                          border: Border.all(width: 1, color: Colors.amber),
                          color: Colors.amber),
                      child: Row(
                        children: [
                          // Image.asset('assets/icons/logo.png'),
                          Icon(Icons.add),
                          SizedBox(width: 5),
                          Column(
                            mainAxisAlignment: MainAxisAlignment.start,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: const [
                              Text('Free Delivery',
                                  style: TextStyle(
                                      fontSize: 16,
                                      fontStyle: FontStyle.normal,
                                      fontWeight: FontWeight.w700)),
                              Text('Get free delivery on \norders above 500')
                            ],
                          )
                        ],
                      ),
                    )
                  ],
                ),
              ),

              // Cupon Code Start
              const SizedBox(height: 30),
              Row(
                children: [
                  Expanded(
                    child: Container(
                        margin: const EdgeInsets.only(left: 12.0, right: 20.0),
                        child: const Divider(
                          color: Colors.grey,
                          height: 35,
                        )),
                  ),
                  const Text(
                    "Use Coupons",
                    style: TextStyle(
                        fontSize: 13,
                        color: Colors.black,
                        fontWeight: FontWeight.w600),
                  ),
                  Expanded(
                    child: Container(
                        margin: const EdgeInsets.only(left: 20.0, right: 12.0),
                        child: const Divider(
                          color: Colors.grey,
                          height: 36,
                        )),
                  )
                ],
              ),
              // Cupon code End
              Container(
                color: Colors.white,
                margin: EdgeInsets.all(10),
                padding: EdgeInsets.all(10),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    coupensCard(context: context),
                    const SizedBox(
                      width: 10,
                    ),
                    coupensCard(context: context)
                  ],
                ),
              ),

              Container(
                padding: const EdgeInsets.all(10),
                margin: const EdgeInsets.all(10),
                decoration: BoxDecoration(
                    color: Colors.amber,
                    borderRadius: BorderRadius.circular(10)),
                child: Row(
                  children: [
                    Container(
                      child: Image.asset(
                        "assets/images/logo.png",
                        width: 60,
                      ),
                    ),
                    const SizedBox(
                      width: 8,
                    ),
                    Container(
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.start,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: const [
                          Text(
                            "Pay ₹ 0 delivery free on",
                            style: TextStyle(
                                fontSize: 16, fontWeight: FontWeight.bold),
                          ),
                          Text("food with Wow Club\n Membership"),
                        ],
                      ),
                    ),
                    const SizedBox(
                      width: 8,
                    ),
                    Container(
                      padding: EdgeInsets.only(top: 18, left: 5),
                      child: ElevatedButton(
                        onPressed: () {},
                        style: ElevatedButton.styleFrom(
                          primary: Colors.white, // Background color
                        ),
                        child: const Text(
                          "Join Now",
                          style: TextStyle(color: Colors.black),
                        ),
                      ),
                    ),
                  ],
                ),
              ),

              //play and Win start
              const SizedBox(
                height: 10,
              ),
              Container(
                child: RichText(
                  text: const TextSpan(
                      // text: "Fulfill your",
                      // style: TextStyle(color: Colors.black, fontSize: 30),
                      children: [
                        TextSpan(
                          text: " Play &  Win",
                          style: TextStyle(
                              color: Color.fromRGBO(249, 179, 19, 1),
                              fontSize: 23,
                              fontWeight: FontWeight.bold),
                        ),
                        TextSpan(
                          text: " Wow Money",
                          style: TextStyle(
                              color: Colors.black,
                              fontSize: 23,
                              fontWeight: FontWeight.bold),
                        )
                      ]),
                ),
              ),

              //play and Win end
              const SizedBox(
                height: 10,
              ),
              Row(children: [
                Expanded(
                  child: Container(
                      margin: const EdgeInsets.only(left: 80.0, right: 80.0),
                      child: const Divider(
                        color: Color.fromARGB(255, 119, 113, 113),
                        height: 20,
                      )),
                )
              ]),

              //Play box start
              Container(
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    playWInCard(url: 'assets/images/logo.png'),
                    playWInCard(url: 'assets/images/logo.png'),
                    playWInCard(url: 'assets/images/logo.png'),
                  ],
                ),
              ),
              //Play box end
              Row(
                children: [
                  Expanded(
                    child: Container(
                        margin: const EdgeInsets.only(left: 12.0, right: 20.0),
                        child: const Divider(
                          color: Colors.grey,
                          height: 20,
                        )),
                  ),
                  const Text(
                    "More Offers",
                    style: TextStyle(
                        fontSize: 13,
                        color: Colors.black,
                        fontWeight: FontWeight.w600),
                  ),
                  Expanded(
                    child: Container(
                        margin: const EdgeInsets.only(left: 20.0, right: 12.0),
                        child: const Divider(
                          color: Colors.grey,
                          height: 36,
                        )),
                  )
                ],
              ),
              Container(
                  child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  offerLIstCard(),
                  offerLIstCard(),
                  offerLIstCard(),
                ],
              )

                  //offerLIstCard(),
                  )
            ],
          ),
        ));
  }
}

offerLIstCard() {
  return Container(
      padding: const EdgeInsets.all(20),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const CircleAvatar(
            backgroundImage: AssetImage("assets/images/logo.png"),
            radius: 30,
          ),
          const SizedBox(
            width: 23,
          ),
          Container(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: const [
                Text(
                  "Wow Momo",
                  style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                ),
                Text(
                  "Valid on top of all offers",
                  style: TextStyle(color: Colors.grey),
                ),
                SizedBox(
                  height: 10,
                ),
                Text(
                  "Validity: 31 Jan 2023",
                  style: TextStyle(fontSize: 12, fontWeight: FontWeight.bold),
                ),
              ],
            ),
          )
        ],
      ));
}

playWInCard({required url}) {
  return Container(
    padding:const EdgeInsets.all(5),
    margin:const EdgeInsets.all(13),
    decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(10),
        border: Border.all(width: 2, color: Colors.amber)),
    child: Column(
      // children: [Image.asset(url)],
      children: [Icon(Icons.add)],
    ),
  );
}

coupensCard({required context}) {
  return Container(
    padding:const EdgeInsets.only(left: 10),
    decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(10),
        border: Border.all(
          color: Colors.amber,
          width: 2,
        )

        //  border: ()
        ),
    child: Column(
      mainAxisAlignment: MainAxisAlignment.start,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Container(
          padding:const EdgeInsets.only(top: 8, right: 10),
          //color: Colors.blue,
          width: MediaQuery.of(context).size.width * 0.4,
          child: Row(mainAxisAlignment: MainAxisAlignment.end, children: const [
            CircleAvatar(
              // backgroundImage: AssetImage('assets/image/tag.png'),
              backgroundColor: Colors.amberAccent,
              radius: 17,
              child: Icon(
                Icons.local_offer_outlined,
                color: Colors.black87,
              ),
            )
          ]),
        ),
        const Text(
          'For All Users',
          style: TextStyle(
            fontSize: 14,
          ),
          textAlign: TextAlign.left,
        ),
        const SizedBox(
          height: 8,
        ),
        const Text('Get Free \nDelivery On\nYour First Order',
            style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold)),
        const SizedBox(
          height: 20,
        ),
        Container(
          padding:const EdgeInsets.only(left: 15),
          child: Container(
            height: 30,
            width: 120,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(20),
              color: Colors.amber,
            ),
            child: const Center(
              child: Text('FIRSTFREE',
                  style: TextStyle(
                      color: Colors.black, fontWeight: FontWeight.bold),
                  textAlign: TextAlign.center),
            ),
          ),
        ),
        const SizedBox(
          height: 8,
        )
      ],
    ),
  );
}
