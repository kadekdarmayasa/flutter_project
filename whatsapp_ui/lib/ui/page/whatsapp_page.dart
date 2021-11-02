import 'package:flutter/material.dart';
import 'package:whatsapp_ui/ui/page/calls_page.dart';
import 'package:whatsapp_ui/ui/page/chat_page.dart';
import 'package:whatsapp_ui/ui/page/status_page.dart';
import 'package:whatsapp_ui/tab_bar.dart';
import 'package:whatsapp_ui/ui/styling/styling.dart';

class WhatsAppHomePage extends StatelessWidget {
  const WhatsAppHomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return DefaultTabController(
      initialIndex: 1,
      length: 4,
      child: Scaffold(
          appBar: AppBar(
            title: Container(
              width: size.width,
              padding: const EdgeInsets.only(right: 2),
              child: Row(
                children: [
                  Text(
                    'WhatsApp',
                    style: headingText,
                  ),
                  const Spacer(),
                  const Icon(Icons.search),
                  const SizedBox(width: 15),
                  const Icon(Icons.more_vert),
                ],
              ),
            ),
            bottom: PreferredSize(
              preferredSize:
                  Size.fromHeight(tabBar.preferredSize.height * 1.20),
              child: tabBar,
            ),
            backgroundColor: greenColor,
          ),
          body: TabBarView(children: [
            Center(child: Text('Camera', style: headingText)),
            Stack(children: [
              SizedBox(
                height: size.height,
                width: size.width,
                child: chatPage,
              ),
              Positioned(
                right: 15,
                bottom: 20,
                child: FloatingActionButton(
                  backgroundColor: lightGreenColor,
                  onPressed: () {},
                  child: Transform.rotate(
                      angle: 3.18, child: const Icon(Icons.message_sharp)),
                ),
              ),
            ]),
            Stack(
              children: [
                SizedBox(
                  width: size.width,
                  height: size.height,
                  child: ListView(
                    children: [
                      Container(
                        padding: const EdgeInsets.only(top: 20, bottom: 20),
                        child: Column(
                          children: [
                            Container(
                                padding:
                                    const EdgeInsets.only(left: 10, right: 20),
                                child: mystatus),
                            Container(
                              margin: const EdgeInsets.only(top: 12),
                              width: size.width,
                              height: 38,
                              padding:
                                  const EdgeInsets.only(left: 10, right: 20),
                              color: greyColor,
                              child: Align(
                                alignment: const Alignment(-1, 0),
                                child: Text('Recent updates',
                                    style: TextStyle(
                                      color: blackColor,
                                      fontSize: 13.8,
                                    )),
                              ),
                            ),
                            Container(
                              width: size.width,
                              padding: const EdgeInsets.only(
                                  top: 20, left: 10, right: 20, bottom: 8),
                              child: recentUpdates,
                            ),
                            Container(
                              margin: const EdgeInsets.only(top: 12),
                              width: size.width,
                              height: 38,
                              padding:
                                  const EdgeInsets.only(left: 10, right: 20),
                              color: greyColor,
                              child: Align(
                                alignment: const Alignment(-1, 0),
                                child: Text('Viewed updates',
                                    style: TextStyle(
                                      color: blackColor,
                                      fontSize: 13.8,
                                    )),
                              ),
                            ),
                            Container(
                              width: size.width,
                              padding: const EdgeInsets.only(
                                  top: 20, left: 10, right: 20),
                              child: viewedUpdates,
                            ),
                          ],
                        ),
                      )
                    ],
                  ),
                ),
                Positioned(
                  right: 15,
                  bottom: 20,
                  child: Column(
                    children: [
                      FloatingActionButton(
                          backgroundColor: lightBlueColor,
                          foregroundColor: greenColor,
                          onPressed: () {},
                          child: Icon(
                            Icons.create,
                            color: greenColor,
                          ),
                          tooltip: 'Create Status',
                          mini: true),
                      const SizedBox(
                        height: 10,
                      ),
                      FloatingActionButton(
                          backgroundColor: lightGreenColor,
                          onPressed: () {},
                          child: const Icon(Icons.camera_alt_rounded),
                          tooltip: 'Upload Photo'),
                    ],
                  ),
                ),
              ],
            ),
            Stack(
              children: [
                SizedBox(
                  height: size.height,
                  width: size.width,
                  child: callPage,
                ),
                Positioned(
                  right: 15,
                  bottom: 20,
                  child: FloatingActionButton(
                    backgroundColor: lightGreenColor,
                    onPressed: () {},
                    child: const Icon(
                      Icons.add_call,
                    ),
                  ),
                )
              ],
            ),
          ])),
    );
  }
}
