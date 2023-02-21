import 'package:flutter/material.dart';
import 'package:test/responsive/responsive_layout.dart';

class Homepage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final currentWidth = MediaQuery.of(context).size.width;

    return Scaffold(
      body: Container(
        // child: ResponsiveLayout(mobileView: mobileView(), deskView: deskView()),
        child: ForGoogleMAp(),
      ),
    );
  }
}

Widget mobileView() {
  return const Center(
    child: Text("Mobile view"),
  );
}

Widget deskView() {
  return const Center(
    child: Text("desk view"),
  );
}

Widget ForGoogleMAp() {
  return Container(
    child: Text("data"),
  );
}
