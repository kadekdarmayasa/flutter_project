import 'dart:ffi';
import 'dart:ui';

import 'package:flutter/material.dart';

TextStyle headingTextStyle = const TextStyle(
    fontFamily: 'Poppins',
    fontWeight: FontWeight.w700,
    color: Colors.black,
    fontSize: 35,
    shadows: [
      Shadow(color: Colors.black12, blurRadius: 10, offset: Offset(-2, 2)),
    ]);

TextStyle subHeadingStyle = const TextStyle(
    fontFamily: 'Poppins',
    fontWeight: FontWeight.w600,
    color: Color.fromRGBO(0, 0, 0, 0.75),
    fontSize: 20);

TextStyle paragraphTextStyle = const TextStyle(
    fontFamily: 'Poppins',
    fontWeight: FontWeight.w400,
    color: Color.fromRGBO(0, 0, 0, 0.5),
    fontSize: 16);

ButtonStyle styleButton = ButtonStyle(
  padding: MaterialStateProperty.resolveWith<EdgeInsets>((states) =>
      const EdgeInsets.only(top: 10, bottom: 10, left: 20, right: 20)),
  backgroundColor:
      MaterialStateProperty.resolveWith<Color>((Set<MaterialState> states) {
    return (states.contains(MaterialState.pressed))
        ? const Color(0xffB0EACD)
        : const Color(0xff21BF73);
  }),
);

TextStyle buttonTextStytle = const TextStyle(
    fontFamily: 'Poppins',
    fontWeight: FontWeight.w600,
    color: Colors.white,
    fontSize: 16);

ButtonStyle buttonTagStyle = ButtonStyle(
    elevation: MaterialStateProperty.resolveWith((states) => 0),
    backgroundColor:
        MaterialStateProperty.resolveWith<Color>((Set<MaterialState> states) {
      return const Color(0xffe5e9f2);
    }));

TextStyle textTagStyle = const TextStyle(
  fontFamily: 'Poppins',
  fontWeight: FontWeight.w400,
  color: Colors.black
);
