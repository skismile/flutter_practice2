import 'package:flutter/material.dart';

class MyToggleButton extends StatelessWidget {
  List<bool> isSelected;
   Function togglestateHandler;
  MyToggleButton({super.key, required this.togglestateHandler, required this.isSelected});

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Container(
        padding: const EdgeInsets.fromLTRB(30, 30, 30, 10),
        child: Row(mainAxisAlignment: MainAxisAlignment.center, children: [
          ToggleButtons(
            isSelected: isSelected,
            // selectedColor: const Color(0xFFF9B313),
            selectedColor: const Color(0xFFFFFFFF),
            color:const Color.fromARGB(255, 8, 8, 8),
            fillColor: const Color(0xFFF9B313),
            splashColor: const Color(0xFFF9B313),
            highlightColor: const Color(0xFFF9B313),
            textStyle: const TextStyle(fontWeight: FontWeight.bold),
            renderBorder: true,
            // borderColor: const Color(0xFFCFCFCF),
            borderWidth: 2,
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
              togglestateHandler(newIndex);
            },
          ),
        ]));
  }
}
