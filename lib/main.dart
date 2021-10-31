import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(

        primarySwatch: Colors.blue,
      ),
      home: const JsonTest(),
    );
  }
}

class JsonTest extends StatelessWidget {
  const JsonTest({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey,
      drawer: Container(
        decoration: BoxDecoration(color: Colors.grey),
        child: Drawer(child: ListView(
          padding: EdgeInsets.all(0),
          children: const <Widget>[
            UserAccountsDrawerHeader(
              accountName: Text('Edward'),
              accountEmail: Text('qqq7ppp@gmail.com'),
              decoration: BoxDecoration(color: Colors.grey,
                  borderRadius: BorderRadius.only(
                    bottomLeft: Radius.circular(25),
                    bottomRight: Radius.circular(25),
                  )),
            ),
            ListTile(

            ),
          ],
        ),
        ),
      ),
      appBar: AppBar(
        iconTheme: IconThemeData(color: Colors.black),
        backgroundColor: Colors.transparent,
        elevation: 0,
        title: Center(child: Text('weather condition',
          style: TextStyle(color: Colors.black),
        ),
        ),

        actions: <Widget>[
          IconButton(
            icon: const Icon(Icons.settings),
            onPressed: () {},
          ),
          IconButton(
            icon: const Icon(Icons.search),
            onPressed: () {},
          ),
        ],
      ),

      body: Center(
        child: Stack(
          children: <Widget>[
            Positioned(
              top: 10,
              right: 0,
              left: 0,
              child: Container(
                height: 150,
                child: const Center(child: Text('지하철 위치 \n 2(전전역)-1(저역)-0(현재)-1(다음)-2(다다음)',)),
                decoration: BoxDecoration(
                  color: Colors.black12,
                ),
              ),
            ),
            Positioned(
              top: 200,
              right: 220,
              left: 20,
              child: Container(
                height: 150,
                child: const Center(child: Text('온도')),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.only(topLeft: Radius.circular(25)),
                  color: Colors.black12,
                ),
              ),
            ),
            Positioned(
              top: 200,
              right: 20,
              left: 220,
              child: Container(
                height: 150,
                child: const Center(child: Text('온도별 추천의상')),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.only(topRight: Radius.circular(25)),
                  color: Colors.black12,
                ),
              ),
            ),

            Positioned(top: 325,right: 150,left: 150,
                child: Container(
                  height: 100,
                  child: const Center(child: Text('QR code')),
                  decoration: BoxDecoration(
                    gradient: LinearGradient(
                      colors: [
                        Colors.white,
                        Colors.white54,
                      ],
                      begin: Alignment.topLeft,
                      end: Alignment.bottomRight,
                    ),
                    borderRadius: BorderRadius.circular(30),
                    boxShadow: [
                      BoxShadow(

                        color: Colors.black.withOpacity(0),
                        spreadRadius: 1,
                        offset: Offset(1,0),

                      ),
                    ],
                  ),
                ),
            ),

            Positioned(
              top: 400,
              right: 220,
              left: 20,
              child: Container(
                height: 150,
                child: const Center(child: Text('미세먼지농도')),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.only(bottomLeft: Radius.circular(25)),
                  color: Colors.black12,
                ),
              ),
            ),
            Positioned(
              top: 400,
              right: 20,
              left: 220,
              child: Container(
                height: 150,
                child: const Center(child: Text('외출지수')),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.only(bottomRight: Radius.circular(25)),
                  color: Colors.black12,
                ),
              ),
            ),
            Positioned(
              top: 600,
              right: 0,
              left: 0,
              child: Container(
                height: 150,
                child: const Center(child: Text('Entry D')),
                decoration: BoxDecoration(
                  color: Colors.black54,
                ),
              ),
            ),
            Positioned(
              top: 800,
              right: 0,
              left: 0,
              child: Container(
                height: 150,
                child: const Center(child: Text('Entry E' ,)),
                decoration: BoxDecoration(
                  color: Colors.black54,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}