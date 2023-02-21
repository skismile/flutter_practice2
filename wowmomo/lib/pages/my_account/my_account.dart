import 'package:flutter/material.dart';
import 'package:wowmomo/components/bottom_navbar.dart';

class MyAccount extends StatefulWidget {
  const MyAccount({Key? key}) : super(key: key);

  @override
  _MyAccountState createState() => _MyAccountState();
}

class _MyAccountState extends State<MyAccount> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: MyBottomNavbar(),
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SizedBox(
              height: 250,
              child: Stack(children: [
                Positioned(
                    child: Container(
                        padding: EdgeInsets.all(30),
                        height: 200,
                        width: MediaQuery.of(context).size.width,
                        decoration: const BoxDecoration(
                          borderRadius: BorderRadiusDirectional.only(
                              bottomStart: Radius.circular(30),
                              bottomEnd: Radius.circular(30)),
                          color: Colors.amber,
                        ),
                        child: const Text(
                          'My Account',
                          textAlign: TextAlign.center,
                          style: TextStyle(
                              fontSize: 20, fontWeight: FontWeight.bold),
                        ))),
                Positioned(
                    top: 80,
                    left: 20,
                    child: Container(
                      // height: 150,
                      padding:const EdgeInsets.all(20),
                      width: MediaQuery.of(context).size.width * 0.9,

                      decoration: BoxDecoration(
                          color:const Color.fromARGB(255, 47, 48, 47),
                          borderRadius: BorderRadius.circular(20)),
                      child: Row(
                        children: [
                          Container(
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.start,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: const [
                                Text(
                                  'Vineet',
                                  // padding:EdgeInsets.all(20),
                                  style: TextStyle(
                                      color: Colors.white,
                                      fontSize: 18,
                                      fontWeight: FontWeight.bold),
                                ),
                                SizedBox(
                                  height: 3,
                                ),
                                Text('vineet.bl@gmail.com',
                                    style: TextStyle(color: Colors.white)),
                                SizedBox(
                                  height: 2,
                                ),
                                Text('9851566623',
                                    style: TextStyle(color: Colors.white)),
                              ],
                            ),
                          ),
                          const SizedBox(
                            width: 30,
                          ),
                          Container(
                            padding: EdgeInsets.only(left: 20),
                            child: Image.asset('assets/image/p_image.png'),
                          )
                        ],
                      ),
                    ))
              ]),
            ),
            Container(
              //height: 2,
              //width: 100,
              // color: Colors.blue,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  tabOption(),
                  tabOption(),
                  tabOption(),
                  tabOption(),
                ],
              ),
            ),
            Container(
              //height: 2,
              color: Colors.amber,
              child: Row(
                children: [
                  Container(
                      padding: EdgeInsets.all(10),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          const Text(
                            'Wow Club',
                            style: TextStyle(
                                fontSize: 25, fontWeight: FontWeight.bold),
                          ),
                          const Text(
                            'Your Premium Food Club',
                            style: TextStyle(color: Colors.white),
                          ),
                          Container(
                            padding: EdgeInsets.all(10),
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.start,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: const [
                                Text('⚈ Join Wow Club Now'),
                                Text(
                                    '⚈ Earn double cashback with all your orders'),
                                Text('⚈ Free Invite to premium WOW events')
                              ],
                            ),
                          )
                        ],
                      )),
                  Container(
                    // margin: EdgeInsets.all(5),
                    padding: const EdgeInsets.all(5),
                    decoration: const BoxDecoration(
                      color: Color.fromARGB(255, 47, 48, 47),
                    ),
                    child: const Text('+Join Club'),
                  ),
                ],
              ),
            ),
            Container(
              padding: const EdgeInsets.all(20),
              child: const Text(
                'WOW Club',
                textAlign: TextAlign.start,
                style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
              ),
            ),
            Container(
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(20),
                  // color:Colors.amber,
                  border: Border.all(width: 2, color: Colors.amber)),
              child: Column(
                children: const [
                  ExpansionTile(
                    title: Text(
                      "Title",
                      style: TextStyle(
                          fontSize: 18.0, fontWeight: FontWeight.bold),
                    ),
                    children: <Widget>[
                      ExpansionTile(
                        title: Text(
                          'Sub title',
                        ),
                        children: <Widget>[
                          ListTile(
                            title: Text('data'),
                          )
                        ],
                      ),
                      ListTile(
                        title: Text('data'),
                      )
                    ],
                  )
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}

Widget tabOption() {
  return Container(
    padding: const EdgeInsets.all(15),
    margin: const EdgeInsets.all(5),
    decoration: BoxDecoration(
      borderRadius: BorderRadius.circular(20),
      boxShadow: const [
        BoxShadow(
          blurRadius: 15,
          spreadRadius: 0.1,
          color: Color.fromARGB(255, 179, 179, 179),
        )
      ],
      color: const Color.fromRGBO(255, 255, 255, 1),
      border: Border.all(
        color: Colors.white,
        width: 5,
      ),
    ),
    child: Column(
      children: const [
        Icon(
          Icons.favorite_border,
          //semanticLabel: 'Text to announce in accessibility modes',
        ),
        Text('Orders'),
      ],
    ),
  );
}
