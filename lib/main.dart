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
      debugShowCheckedModeBanner: false,
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
              height: 200,
              width: double.infinity,
              child: Stack(
                children: [
                  Positioned.fill(
                    top: -20,
                    left: -20,
                    right: -20,
                    bottom: -20,
                    child: ImageFiltered(
                      imageFilter: ImageFilter.blur(sigmaX: 24, sigmaY: 24, tileMode: TileMode.decal),
                      child: Image.network('https://stock-dev.emanate.live/stock_artwork/QmVezpZ6MJf1LaqkomceYAd25td5YMtcFesgXNife9Fj7m_500x500.jpg', fit: BoxFit.fitWidth, height: 500, width: 500),
                    ),
                  )
                ],
              )
            ),
            ListView.builder(
              padding: EdgeInsets.zero,
              physics: NeverScrollableScrollPhysics(),
              shrinkWrap: true,
              itemCount: data.length,
              itemBuilder: (_, int index) {
                return Container(
                  width: double.infinity,
                  height: 150,
                  child: Center(child: Text('Item # $index'))
                );
              }
            )
          ],
        ),
      )
    );
  }
}