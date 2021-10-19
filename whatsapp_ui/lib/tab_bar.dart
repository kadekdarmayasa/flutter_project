import 'package:flutter/material.dart';
import 'package:whatsapp_ui/styling.dart';

TabBar tabBar = TabBar(
  indicatorColor: Colors.white,
  labelStyle: labelStyleColor,
  unselectedLabelStyle: unselectLabelStyle,
  tabs: [
    const Tab(child: Icon(Icons.camera_alt_rounded)),
    Tab(
      child: Text(
        'CHATS',
        style: subHeading,
      ),
    ),
    Tab(
      child: Text(
        'STATUS',
        style: subHeading,
      ),
    ),
    Tab(
      child: Text(
        'CALLS',
        style: subHeading,
      ),
    ),
  ],
);
