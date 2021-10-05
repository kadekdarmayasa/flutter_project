import 'dart:ui';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  // TextEditingController controller = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        body: Container(
          padding: const EdgeInsets.only(top: 15, left: 20, right: 20, bottom: 40),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Image.asset('images/login_page.png', repeat: ImageRepeat.noRepeat, width: 300),
              const Text(
                'SILAHKAN LOGIN',
                style: TextStyle(
                    fontSize: 38,
                    fontFamily: 'Poppins',
                    fontWeight: FontWeight.w700,
                    color: Color(0xff212121)),
              ),
              const SizedBox(
                height: 50,
              ),
              TextField(
                onChanged: (value) => setState(() {}),
                maxLength: 50,
                decoration: InputDecoration(
                    hintText: 'Username...',
                    hintStyle:
                        const TextStyle(fontSize: 16, fontFamily: 'Poppins'),
                    filled: true,
                    fillColor: const Color(0xffe5e9f2),
                    border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(20),
                        borderSide: BorderSide.none,
                        gapPadding: 10)),
              ),
              const SizedBox(
                height: 30,
              ),
              TextField(
                autofocus: true,
                onChanged: (value) => setState(() {}),
                maxLength: 50,
                obscureText: true,
                decoration: InputDecoration(
                  hintText: 'Password...',
                  hintStyle:
                    const TextStyle(fontSize: 16, fontFamily: 'Poppins'),
                  filled: true,
                  fillColor: const Color(0xffe5e9f2),
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(20),
                    borderSide: BorderSide.none,
                    gapPadding: 10)),
              ),
              Row(
                children: [
                  ElevatedButton(
                    onPressed: () {},
                    style: ButtonStyle(
                      // background
                      backgroundColor:
                        MaterialStateProperty.resolveWith<Color>(
                        (states) => (states.contains(MaterialState.pressed)) ?
                        const Color(0xff3D56B2) : const Color(0xff14279B),
                      ), 
                      // padding
                      padding:
                        MaterialStateProperty.resolveWith<EdgeInsetsGeometry>(
                        (states) => const EdgeInsets.only(top: 10, bottom: 10, left: 40, right: 40),
                      ),
                      elevation: MaterialStateProperty.resolveWith<double>((states) => 4),
                      enableFeedback: true,
                    ),
                    child: const Text('Login',
                        style: TextStyle(fontFamily: 'Poppins')),
                  ),
                ],
              ),
              // Text(controller.text),
            ],
          ),
        ),
      ),
    );
  }
}
