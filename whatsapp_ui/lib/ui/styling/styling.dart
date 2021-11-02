import 'package:flutter/material.dart';

Color greenColor = const Color(0xff075E54);
Color greenColorv2 = const Color(0xff128C7E);
Color lightGreenColor = const Color(0xff25D366);
Color lightBlueColor = Colors.blue.shade50;
Color blueGreyColor = Colors.blueGrey.shade300;
Color whiteColor = Colors.white;
Color greyColor = Colors.grey.shade200;
Color blackColor = Colors.black54;
Color redColor = Colors.red;

TextStyle headingText = const TextStyle(
  fontFamily: 'Poppins',
  fontWeight: FontWeight.w500,
  fontSize: 22,
);
TextStyle subHeading = const TextStyle(
    fontSize: 16, fontFamily: 'Poppins', fontWeight: FontWeight.w400);

TextStyle labelStyleColor =
    const TextStyle(fontFamily: 'Poppins', fontWeight: FontWeight.w600);
TextStyle unselectLabelStyle =
    const TextStyle(fontFamily: 'Poppins', fontWeight: FontWeight.w400);

TextStyle names = TextStyle(
  fontFamily: 'Poppins',
  fontSize: 16,
  fontWeight: FontWeight.w600,
  color: blackColor,
);
TextStyle messages = TextStyle(
    fontFamily: 'Poppins',
    fontWeight: FontWeight.w300,
    color: blueGreyColor,
    overflow: TextOverflow.ellipsis);
TextStyle timeMessages = TextStyle(
  fontFamily: 'Poppins',
  fontWeight: FontWeight.w300,
  color: blueGreyColor,
  fontSize: 12,
);

TextStyle headingStatus = const TextStyle(
  fontFamily: 'Poppins',
  fontSize: 16,
  fontWeight: FontWeight.w500,
  color: Colors.black54,
);
TextStyle subHeadingStatus = TextStyle(
  fontFamily: 'Poppins',
  fontWeight: FontWeight.w300,
  color: blueGreyColor,
);

ButtonStyle buttonStyle = ButtonStyle(
  elevation: MaterialStateProperty.resolveWith<double>((states) => 0),
  backgroundColor:
      MaterialStateProperty.resolveWith<Color>((states) => lightGreenColor),
  fixedSize: MaterialStateProperty.resolveWith<Size>(
      (states) => const Size.fromWidth(30)),
);
