import 'package:flutter/material.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:wowmomo/pages/home/home_page.dart';

import './brand_controller.dart';
import './brand_binding.dart';

class Brand extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return _Brand();
  }
}

class _Brand extends State<Brand> {
  var brandPageController = Get.find<BrandController>();
  List<bool> isSelected = [true, false];
  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      height: double.infinity,
      decoration: const BoxDecoration(
        image: DecorationImage(
          image: AssetImage("assets/images/log_back.png"),
          fit: BoxFit.cover,
        ),
      ),
      child: Stack(
        children: [
          _bottomContainer(),
        ],
      ),
    );
  }

  Widget _bottomContainer() {
    return Positioned(
      bottom: 0,
      child: Container(
        width: MediaQuery.of(context).size.width,
        padding: const EdgeInsets.fromLTRB(25, 30, 25, 30),
        decoration: const BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.only(
            topLeft: Radius.circular(44),
            topRight: Radius.circular(44),
          ),
        ),
        child: Column(
          children: [
            _brandOnOffContainer(),
            _brandListContainer(),
          ],
        ),
      ),
    );
  }

  Widget _brandOnOffContainer() {
    return Container(
      padding: const EdgeInsets.fromLTRB(30, 30, 30, 10),
      child: ToggleButtons(
        isSelected: isSelected,
        selectedColor: const Color(0xFFFFFFFF),
        color: const Color(0xFFB4B2B2),
        fillColor: const Color(0xFFF9B313),
        splashColor: const Color(0xFFF9B313),
        highlightColor: const Color(0xFFF9B313),
        textStyle: const TextStyle(fontWeight: FontWeight.bold),
        renderBorder: true,
        borderColor: const Color(0xFFCFCFCF),
        borderWidth: 1.5,
        borderRadius: BorderRadius.circular(44),
        selectedBorderColor: const Color(0xFFF9B313),
        constraints: BoxConstraints(
          minWidth: (MediaQuery.of(context).size.width * 0.7) / 2,
          minHeight: 37,
        ),
        children: const [
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 12),
            child: Text('Delivery', style: TextStyle(fontSize: 18)),
          ),
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 12),
            child: Text('Dine-in', style: TextStyle(fontSize: 18)),
          ),
        ],
        onPressed: (int newIndex) {
          setState(() {
            for (int index = 0; index < isSelected.length; index++) {
              if (index == newIndex) {
                isSelected[index] = true;
              } else {
                isSelected[index] = false;
              }
            }
          });
        },
      ),
    );
  }

  Widget _brandListContainer() {
    return Container(
      width: MediaQuery.of(context).size.width,
      height: MediaQuery.of(context).size.height * 0.6,
      padding: const EdgeInsets.fromLTRB(30, 0, 30, 0),
      alignment: Alignment.center,
      child: GridView.builder(
        itemCount: 5,
        gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 2,
          childAspectRatio: 1 / 1,
          crossAxisSpacing: 15,
          mainAxisSpacing: 15,
        ),
        itemBuilder: (BuildContext context, int index) {
          return Container(
              width: 104,
              height: 104,
              padding: const EdgeInsets.all(30),
              decoration: BoxDecoration(
                color: const Color(0xFFFAFAFA),
                border: Border.all(color: const Color(0xFFE1E1E1)),
                borderRadius: BorderRadius.circular(100),
              ),
              child: GestureDetector(
                onTap: () {
                  Get.to(HomePage());
                },
                child: CircleAvatar(
                  child: Image.asset("assets/images/logo.png"),
                ),
              ));
        },
      ),
    );
  }
}
