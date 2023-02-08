import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: FloatingActionButton(
          onPressed: () {},
          child: Container(
            height: 400,
            width: 400,
            decoration: BoxDecoration(
              image: DecorationImage(
                image: AssetImage("assets/images/logo.png"),
                opacity: 0.3,
                fit: BoxFit.fill,
              ),
            ),
            child: Icon(
              Icons.more_horiz,
              size: 50,
              color: Colors.white,
            ),
          )),
      appBar: AppBar(
        title: const Text("Home Page"),
      ),
      body: const Text("data"),
    );
  }
}
