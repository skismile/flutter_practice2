import 'package:flutter/material.dart';
import 'package:wowmomo/components/toggle_button.dart';
import 'package:wowmomo/pages/home/delivery.dart';
import 'package:wowmomo/pages/home/dine_in.dart';

class ScrollPage extends StatelessWidget {
  Function togglestateHandler;
  List<bool> isSelected;
  int index;

  ScrollPage(
      {required this.togglestateHandler,
      required this.isSelected,
      required this.index});

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return SingleChildScrollView(
        child: Column(
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        const SizedBox(
          height: 100,
        ),

        SizedBox(
          width: MediaQuery.of(context).size.width * 0.9,
          child: TextField(
            decoration: InputDecoration(
              isDense: true,
              hintText: 'Search for cuisine, item or more',
              hintStyle: TextStyle(color: Colors.grey),
              border: OutlineInputBorder(
                borderRadius: BorderRadius.circular(30),
              ),
              prefixIcon: const Icon(
                Icons.search,
                size: 40,
              ),
              // suffixIcon: Icon(
              //   Icons.search,
              //   size: 40,
              // ),
              // prefixStyle: TextStyle(),
              // suffixIconConstraints: BoxConstraints(minWidth: 40, minHeight: 20),
              prefixIconConstraints:
                  BoxConstraints(minWidth: 40, minHeight: 20),
            ),
          ),
        ),
        MyToggleButton(
            togglestateHandler: togglestateHandler, isSelected: isSelected),
        // ToggleButto(
        //     togglestateHandler: togglestateHandler,
        //     isSelected: isSelected,
        //     context: context),
        SizedBox(
          height: 5,
        ),

        // ?--------------Delivery
        index == 1 ? DineInPage() : DeliveryPage(),
        // ----------------------------
      ],
    ));
  }
}
