import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:whatsapp_ui/ui/styling/styling.dart';

// my status 
Row mystatus = Row(
  children: [
    Stack(clipBehavior: Clip.none, children: [
      ClipRRect(
        borderRadius: BorderRadius.circular(30),
        child: SizedBox(
          height: 60,
          width: 60,
          child: Image.asset('images/kadek_darmayasa.jpg', fit: BoxFit.cover),
        ),
      ),
      Positioned(
        right: -4,
        bottom: -4,
        child: Container(
          decoration: BoxDecoration(
            border: Border.all(color: whiteColor, width: 2),
            borderRadius: BorderRadius.circular(15),
            color: lightGreenColor,
          ),
          height: 30,
          width: 30,
          child: Icon(Icons.add, color: whiteColor),
        ),
      )
    ]),
    const SizedBox(width: 20),
    Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
      Text('My Status', style: headingStatus),
      Text('Tap to add status update', style: subHeadingStatus),
    ]),
  ],
);

// recent updates
Column recentUpdates = Column(
  children: [
    buildRecentUpdates(name: 'Lyodra Ginting', time: '28 minutes ago', imgProfile: 'Lyodra.jpg'),
    const SizedBox(height: 15,),
    buildRecentUpdates(name: 'Mahalini Raharja', time: 'Today, 2.39 PM', imgProfile: 'Mahalini.jpg'),
    const SizedBox(height: 15,), 
    buildRecentUpdates(name: 'Jeroma Polin', time: 'Yesterday, 8.40 PM', imgProfile: 'jerome_polin.jpg'),
  ],
);

// build recent updates
Row buildRecentUpdates({required String name, required String time, required String imgProfile}) {
  return Row(
    children: [
      Stack(children: [
        Container(
          decoration: BoxDecoration(
              border: Border.all(
                width: 2,
                color: greenColorv2,
              ),
              borderRadius: BorderRadius.circular(34)),
          height: 68,
          width: 68,
        ),
        Positioned(
          left: 4,
          bottom: 4,
          child: ClipRRect(
            borderRadius: BorderRadius.circular(30),
            child: SizedBox(
              height: 60,
              width: 60,
              child: Image(
                image: AssetImage('images/' + imgProfile.toString()),
                fit: BoxFit.cover,
              ),
            ),
          ),
        ),
      ]),
      const SizedBox(width: 20),
      Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            name,
            style: headingStatus,
          ),
          const SizedBox(height: 5,),
          Text(
            time,
            style: subHeadingStatus,
          )
        ],
      ),
    ],
  );
}

// viewed updates 
Column viewedUpdates = Column(
  children: [
    buildViewedUpdates(name: 'Papa', time: 'Today, 4.50 PM', imgProfile: 'Bapak.jpg'),
    const SizedBox(height: 15,),
    buildViewedUpdates(name: 'Mama', time: 'Today, 7.45 PM', imgProfile: 'Ibu.jpg'),
    const SizedBox(height: 15,), 
    buildViewedUpdates(name: 'Sandhika Galih', time: 'Yesterday, 9.00 PM', imgProfile: 'sandhika.jpg'),
  ],
);

// build viewed updates 
Row buildViewedUpdates({required String name, required String time, required String imgProfile}) {
  return Row(
    children: [
      Stack(children: [
        Container(
          decoration: BoxDecoration(
              border: Border.all(
                width: 2,
                color: blueGreyColor,
              ),
              borderRadius: BorderRadius.circular(34)),
          height: 68,
          width: 68,
        ),
        Positioned(
          left: 4,
          bottom: 4,
          child: ClipRRect(
            borderRadius: BorderRadius.circular(30),
            child: SizedBox(
              height: 60,
              width: 60,
              child: Image(
                image: AssetImage('images/' + imgProfile.toString()),
                fit: BoxFit.cover,
              ),
            ),
          ),
        ),
      ]),
      const SizedBox(width: 20),
      Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            name,
            style: headingStatus,
          ),
          const SizedBox(height: 5,),
          Text(
            time,
            style: subHeadingStatus,
          )
        ],
      ),
    ],
  );
}


