import 'dart:math';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Home Page',
      theme: ThemeData(
        // This is the theme of your application.
        //
        // Try running your application with "flutter run". You'll see the
        // application has a blue toolbar. Then, without quitting the app, try
        // changing the primarySwatch below to Colors.green and then invoke
        // "hot reload" (press "r" in the console where you ran "flutter run",
        // or simply save your changes to "hot reload" in a Flutter IDE).
        // Notice that the counter didn't reset back to zero; the application
        // is not restarted.
        primarySwatch: Colors.blue,
      ),
      home: const MyHomePage(title: 'Flutter Demo Home Page'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({Key? key, required this.title}) : super(key: key);

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  var random = Random();

  set sum(int sum) {}

  @override
  Widget build(BuildContext context) {
    var num1 = random.nextInt(6)+1;
    var num2 = random.nextInt(6)+1;
    var sum = num1 + num2;

    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text('Dice')
      ), 
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              'Total = $sum',
              style: TextStyle(fontSize: 30, fontWeight: FontWeight.bold),
            ),
            Container(
              margin: const EdgeInsets.all(15),
              height: 150,
              width: 150,
              decoration: new BoxDecoration(
                color: Colors.grey[300],
                image: new DecorationImage(
                  fit: BoxFit.fill,
                  image: new AssetImage("assets/$num1.png"),
                ),
              ),
            ),
            Container(
              margin: const EdgeInsets.all(15),
              height: 150,
              width: 150,
              decoration: new BoxDecoration(
                color: Colors.grey[300],
                image: new DecorationImage(
                  fit: BoxFit.fill,
                  image: new AssetImage("assets/$num2.png"),
                ),
              ),
            ),
            CupertinoButton(
              color: Colors.blueAccent,
              child: const Text('Shuffle'), 
              onPressed: () {
                setState(() {
                  num1 = random.nextInt(6)+1;
                  num2 = random.nextInt(6)+1;
                });
                print('i am clicked');
              },
              ),
             ],
            )  
            )
        );
  }
}
