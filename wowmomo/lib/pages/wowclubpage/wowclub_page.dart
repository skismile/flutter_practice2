import "package:flutter/material.dart";
import "package:wowmomo/components/bottom_navbar.dart";

class WowclubPage extends StatelessWidget {
  const WowclubPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: MyBottomNavbar(),
      appBar: AppBar(
        title: const Text("wow club Page Page"),
      ),
      body: const Center(
        child: Text("wow club Page"),
      ),
    );
  }
}
