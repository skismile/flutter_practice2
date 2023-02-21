import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';

class ResponsiveLayout extends StatelessWidget {
  final Widget mobileView;
  final Widget deskView;
  ResponsiveLayout({required this.mobileView, required this.deskView});
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return LayoutBuilder(
      builder: (context, Constraints) {
        if (Constraints.maxWidth < 600) {
          return mobileView;
        } else {
          return deskView;
        }
      },
    );
  }
}
