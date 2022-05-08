import 'package:flutter/material.dart';
import 'package:tesla/page1.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: MyHome(),
      title: "Tesla",
    );
  }
}

class MyHome extends StatefulWidget {
  const MyHome({Key? key}) : super(key: key);

  @override
  State<MyHome> createState() => _MyHomeState();
}

class _MyHomeState extends State<MyHome> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: PreferredSize(
        preferredSize: Size.fromHeight(90.0), // here the desired height
        child: AppBar(
          title: Text(
            "TESLA",
            style: TextStyle(
                color: Colors.black,
                fontWeight: FontWeight.w800,
                letterSpacing: 5),
          ),
          centerTitle: true,
          leading: IconButton(
            onPressed: () {},
            icon: Icon(
              Icons.arrow_back,
              color: Colors.black,
            ),
          ),
          flexibleSpace: FlexibleSpaceBar(),
          backgroundColor: Colors.white,
          elevation: 0.0,
        ),
      ),
      backgroundColor: Colors.white,
      body: page1(),
    );
  }
}
