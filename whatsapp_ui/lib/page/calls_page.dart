import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:whatsapp_ui/styling.dart';

ListView callPage = ListView(children: [
  Container(
    padding: const EdgeInsets.only(top: 20, bottom: 20, left: 15, right: 15),
    child: Column(
      children: [
        buildCalls(
            name: 'Papa',
            time: 'Yesterday, 2:40 PM',
            imgAsset: 'Bapak.jpg',
            callIn: false),
        const SizedBox(height: 15),
        buildCalls(
            name: 'Mahalini Raharja',
            time: 'Today, 16:40 PM',
            imgAsset: 'Mahalini.jpg',
            callIn: true,
            rejected: false),
        const SizedBox(height: 15),
        buildCalls(
            name: 'Ibu',
            time: 'September 30, 5.00 PM',
            imgAsset: 'Ibu.jpg',
            callIn: false,),
        const SizedBox(height: 15),
        buildCalls(
            name: 'Tiara',
            time: '(4) October 17, 6.00 PM',
            imgAsset: 'Tiara.jpg',
            callIn: true,
            rejected: true
        ),
      ],
    ),
  )
]);

Row buildCalls(
    {required String name,
    required String time,
    required String imgAsset,
    required bool callIn, 
    bool rejected = false}) {
  return Row(
    children: [
      ClipRRect(
        borderRadius: BorderRadius.circular(30),
        child: SizedBox(
          height: 60,
          width: 60,
          child:
              Image(image: AssetImage('images/' + imgAsset), fit: BoxFit.cover),
        ),
      ),
      const SizedBox(width: 15),
      Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(name, style: headingStatus),
          const SizedBox(
            height: 6,
          ),
          Row(children: [
            (callIn == true)
                ? Transform.rotate(
                    angle: -10,
                    child: Icon(Icons.arrow_forward,
                        color: (rejected == true)? redColor : lightGreenColor , size: 18))
                : Transform.rotate(
                    angle: 18.2,
                    child:
                        Icon(Icons.arrow_forward, color: lightGreenColor, size: 18)),
            const SizedBox(width: 5),
            Text(
              time,
              style: subHeadingStatus,
            ),
          ])
        ],
      ),
      const Spacer(),
      Icon(
        Icons.call,
        color: greenColorv2,
      )
    ],
  );
}
