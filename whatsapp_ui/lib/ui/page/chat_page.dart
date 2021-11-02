import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:whatsapp_ui/ui/styling/styling.dart';

ListView chatPage = ListView(
  children: [
    Container(
      padding: const EdgeInsets.only(left: 20, right: 20, top: 20),
      child: Column(children: [
        buildChats(
            imgAsset: 'images/Bapak.jpg',
            name: 'Papa',
            message: 'Inget nanti bawain bapak nasi ya..',
            time: '08.00 AM',
            pin: true),
        const SizedBox(
          height: 20,
        ),
        buildChats(
          imgAsset: "images/Ibu.jpg",
          name: 'Mama',
          message: 'Hati hati dijalan dek..',
          time: '05.00 PM',
          pin: true,
        ),
        const SizedBox(
          height: 20,
        ),
        buildChats(
          imgAsset: 'images/jerome_polin.jpg',
          name: 'Jerome Polin',
          message: 'Halo, Darma..',
          time: '01.00 PM',
          pin: true,
          read: false,
          totalReadMessages: 1,
        ),
        const SizedBox(
          height: 20,
        ),
        buildChats(
          imgAsset: 'images/Mahalini.jpg',
          name: 'Mahalini Raharja',
          message: 'Salam Kenal Juga 🤗',
          time: '06.00 PM',
          pin: true,
          read: false,
          totalReadMessages: 1,
        ),
        const SizedBox(
          height: 20,
        ),
        buildChats(
            imgAsset: 'images/Lyodra.jpg',
            name: 'Lyodra Ginting',
            message: 'Semangat Nyanyinya lydora..',
            time: '05.00 PM',
            pin: true),
        const SizedBox(
          height: 20,
        ),
        buildChats(
          imgAsset: 'images/Tiara.jpg',
          name: 'Tiara Andini',
          message: 'Wkwk, Baru Tau Loh Aku..',
          time: '08.00 PM',
          pin: true,
          read: false,
          totalReadMessages: 1,
        ),
        const SizedBox(
          height: 20,
        ),
        buildChats(
            imgAsset: 'images/erico_darmawan.jpg',
            name: 'Erico Darmawan',
            message: 'Ayo Belajar Flutter Lagi',
            time: '10.00 AM',
            read: false,
            totalReadMessages: 2),
        const SizedBox(
          height: 20,
        ),
        buildChats(
          imgAsset: 'images/rpl1.jpg',
          name: 'XI-RPL-1',
          message: 'Pak Gung De: Selamat Pagi',
          time: '10.00 AM',
          pin: false,
          read: false,
          totalReadMessages: 4,
        ),
        const SizedBox(
          height: 20,
        ),
        buildChats(
          imgAsset: 'images/sandhika.jpg',
          name: 'Shandika Galih',
          message: 'Semangat Belajarnya 😊',
          time: '10.00 AM',
          pin: false
        ),
        const SizedBox(
          height: 20,
        ),
      ]),
    )
  ],
);

/// - [buildChats] adalah template untuk membuat home chat pada WhatsApp
Row buildChats(
    {required String imgAsset, 
    required String name,
    required String message,
    required String time,
    bool? pin,
    bool? read,
    int? totalReadMessages}) {
  return Row(
    children: [
      ClipRRect(
          borderRadius: BorderRadius.circular(30),
          child: SizedBox(
            height: 60,
            width: 60,
            child: Image.asset(imgAsset, fit: BoxFit.cover),
          )),
      const SizedBox(
        width: 15,
      ),
      Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              name,
              style: headingStatus,
            ),
            const SizedBox(height: 5),
            SizedBox(
                width: 180,
                child: Text(
                  message,
                  style: messages,
                )),
          ]),
      const Spacer(),
      Row(
        children: [
          (pin == true)
              ? SizedBox(
                  height: 50,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.end,
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      Text(time, style: timeMessages),
                      const SizedBox(height: 5),
                      (read == false)
                          ? Row(
                              children: [
                                Transform.rotate(
                                    angle: 25.80,
                                    child: Icon(
                                      Icons.push_pin,
                                      color: blueGreyColor,
                                      size: 18.00,
                                    )),
                                const SizedBox(width: 5),
                                Container(
                                  height: 18,
                                  width: 18,
                                  decoration: BoxDecoration(
                                    color: lightGreenColor,
                                    borderRadius: BorderRadius.circular(9),
                                  ),
                                  child: Center(
                                      child: Text(totalReadMessages.toString(),
                                          style: TextStyle(
                                              color: whiteColor,
                                              fontSize: 12))),
                                )
                              ],
                            )
                          : Transform.rotate(
                              angle: 25.80,
                              child: Icon(
                                Icons.push_pin,
                                color: blueGreyColor,
                                size: 18.00,
                              )),
                    ],
                  ),
                )
              : (read == true)
                  ? Column(
                      crossAxisAlignment: CrossAxisAlignment.end,
                      children: [
                        Text(time, style: messages),
                        const SizedBox(height: 5),
                        Container(
                          height: 18,
                          width: 18,
                          decoration: BoxDecoration(
                            color: lightGreenColor,
                            borderRadius: BorderRadius.circular(9),
                          ),
                          child: Center(
                              child: Text(totalReadMessages.toString(),
                                  style: TextStyle(
                                      color: whiteColor, fontSize: 12))),
                        )
                      ],
                    )
                  : Column(
                      crossAxisAlignment: CrossAxisAlignment.end,
                      children: [
                        Text(time, style: messages),
                      ],
                    ),
        ],
      ),
    ],
  );
}
