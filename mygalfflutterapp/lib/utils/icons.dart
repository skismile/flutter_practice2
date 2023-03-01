import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class IconPath {
  static const String bulletedCircle = "icons/bulleted_circle.svg";
}

class GalfIcons {
  GalfIcons._();
  static final SvgPicture bulletedCircle = SvgPicture.asset(
    IconPath.bulletedCircle,
    height: 5,
    width: 5,
    semanticsLabel: "circle icon",
    color: Colors.blue,
  );
}
