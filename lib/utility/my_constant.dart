import 'package:flutter/material.dart';

class MyConstant {
  // field
  static String appName = 'Ung Super Uber';
  static Color primary = const Color(0xff00c162);
  static Color light = const Color(0xff5cf591);
  static Color dark = const Color(0xff008f35);

  // method
  BoxDecoration planBox() => BoxDecoration(color: light);

  BoxDecoration whiteBox() => BoxDecoration(color: Colors.white54);

  BoxDecoration gradienBox() => BoxDecoration(
        gradient: RadialGradient(center: Alignment(0, -0.5),
          radius: 1.0,
          colors: [Colors.white, primary],
        ),
      );

  TextStyle h1Style() => TextStyle(
        fontSize: 30,
        fontWeight: FontWeight.bold,
        color: dark,
      );

  TextStyle h2Style() => TextStyle(
        fontSize: 18,
        fontWeight: FontWeight.w700,
        color: dark,
      );

  TextStyle h3Style() => TextStyle(
        fontSize: 14,
        fontWeight: FontWeight.normal,
        color: dark,
      );
}
