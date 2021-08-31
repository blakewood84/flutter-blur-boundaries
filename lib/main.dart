import 'dart:ui';

import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData.dark(),
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({ Key? key }) : super(key: key);

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {

  final data  = [1,2,3,4,5,6,7];

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;

    return Scaffold(
      backgroundColor: Colors.black,
      body: SingleChildScrollView(
        child: Column(
          children: [
            Container(
              color: Colors.transparent,
              height: size.height * .2,
              width: double.infinity,
              child: Stack(
                children: [
                  Positioned.fill(
                    top: -20,
                    left: -30,
                    right: -30,
                    bottom: -30,
                    child: ImageFiltered(
                      imageFilter: ImageFilter.blur(sigmaX: 24, sigmaY: 24, tileMode: TileMode.decal),
                      child: Image.network('https://stock-dev.emanate.live/stock_artwork/QmVezpZ6MJf1LaqkomceYAd25td5YMtcFesgXNife9Fj7m_500x500.jpg', fit: BoxFit.fitWidth, height: 500, width: 500),
                    ),
                  )
                ],
              )
            ),
            Container(
              color: Colors.red,
              height: 300,
              width: double.infinity,
              child: Container(
                child: Image.network('https://stock-dev.emanate.live/stock_artwork/QmVezpZ6MJf1LaqkomceYAd25td5YMtcFesgXNife9Fj7m_500x500.jpg', scale: 4, fit: BoxFit.cover,)),
            ),
            ListView.builder(
              padding: EdgeInsets.zero,
              physics: NeverScrollableScrollPhysics(),
              shrinkWrap: true,
              itemCount: data.length,
              itemBuilder: (_, int index) {
                return Container(
                  decoration: BoxDecoration(
                    color: Colors.yellow,
                    border: Border.all(
                      color: Colors.black, 
                        width: 1
                    ),
                  ),
                  width: double.infinity,
                  height: 200,
                );
              }
            )
          ],
        ),
      )
    );
  }
}