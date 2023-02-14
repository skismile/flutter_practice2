import "package:flutter/material.dart";
import "package:wowmomo/components/bottom_navbar.dart";

class AccountPage extends StatelessWidget {
  const AccountPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: MyBottomNavbar(),
      appBar: AppBar(
        title: const Text("Account Page"),
      ),
      body: const Center(
        child: Text("Account Page"),
      ),
    );
  }
}
