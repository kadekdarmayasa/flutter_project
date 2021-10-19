import 'package:flutter/material.dart';
import 'assets/asset_app.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        debugShowCheckedModeBanner: false,
        home: Scaffold(
          appBar: AppBar(
            titleTextStyle: headingTextStyle,
            toolbarHeight: 80,
            centerTitle: true,
            title: Container(
                margin: const EdgeInsets.only(top: 40),
                child: const Text('FOOD')),
            backgroundColor: Colors.transparent,
            elevation: 0,
          ),
          body: Container(
            width: 400,
            height: 800,
            margin:
                const EdgeInsets.only(top: 70, bottom: 50, left: 20, right: 20),
            child: ListView(
              scrollDirection: Axis.horizontal,
              children: [
                Row(
                  children: [
                    buildListFood(
                        'https://images.unsplash.com/photo-1512621776951-a57141f2eefd?ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&ixlib=rb-1.2.1&auto=format&fit=crop&w=1170&q=80',
                        'Bowl of vegetable salads', '30.000', 'Healty', 'Vegan', 'Nutrion'),
                    buildListFood(
                        'https://images.unsplash.com/photo-1504674900247-0877df9cc836?ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&ixlib=rb-1.2.1&auto=format&fit=crop&w=1170&q=80',
                        'Cookied dish on gray bowl', '40.000', 'Food', 'Singapure', 'Feast'),
                    buildListFood('https://images.unsplash.com/photo-1543573852-1a71a6ce19bc?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=1170&q=80', 'Strawberry Shake', '15.000', 'Strawberry', 'Drink', 'Dessert')
                  ],
                )
              ],
            ),
          ),
        ));
  }

  Container buildListFood(String assetImage, String nameFoodOrDrink,
   String price, String tagImage1, String tagImage2, String tagImage3) {
    return Container(
      padding: const EdgeInsets.all(5),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Image.network(
            assetImage,
            width: 310,
            repeat: ImageRepeat.noRepeat,
            color: Colors.black12,
            colorBlendMode: BlendMode.colorDodge,
          ),
          const SizedBox(
            height: 10,
          ),
          Text(nameFoodOrDrink, style: subHeadingStyle, textAlign: TextAlign.left,),
          Row(
            children: [
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const SizedBox(height: 15,),
                  Text('PRICE', style: paragraphTextStyle,),
                  Text('Rp. ' + price, style: paragraphTextStyle,),
                  const SizedBox(height: 25,),
                  ElevatedButton(
                    onPressed: () {
                      setState(() {});
                    },
                    child: Text('Buy Now', style: buttonTextStytle,),
                    style: styleButton,
                  )
                ],
              ),
              const SizedBox(width: 78,),
              Column(
                children: [
                  const SizedBox(height: 64),
                  Row(children: <Widget>[
                    buildIconStars(),
                    buildIconStars(),
                    buildIconStars(),
                    buildIconStars(),
                    buildIconStars(),
                  ]),
                  Text(5.0.toString()),
                ],
              ),
            ],
          ),
          const SizedBox(height: 20,),
          Row(
            children: [
              ElevatedButton(
                onPressed: () {
                  setState(() {});
                },
                style: buttonTagStyle,
                child: Text(tagImage1, style: textTagStyle,),
              ),
              const SizedBox(width: 20,),
              ElevatedButton(
                onPressed: () {
                  setState(() {});
                },
                style: buttonTagStyle,
                child: Text(tagImage2, style: textTagStyle,),
              ),
              const SizedBox(width: 20,),
              ElevatedButton(
                onPressed: () {
                  setState(() {});
                },
                style: buttonTagStyle,
                child: Text(tagImage3, style: textTagStyle,),
              ),
            ],
          )
        ],
      ),
    );
  }

  Icon buildIconStars() => const Icon(
        IconData(0xe5f9, fontFamily: 'MaterialIcons'),
        color: Colors.orange,
      );
}
