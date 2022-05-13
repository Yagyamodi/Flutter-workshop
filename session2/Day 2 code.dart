import 'package:flutter/material.dart';

void main() {
  runApp(const Something());
}

class Something extends StatelessWidget {
  const Something({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
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
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Container(
                width: 190.0,
                height: 190.0,
                decoration: new BoxDecoration(
                    shape: BoxShape.circle,
                    image: new DecorationImage(
                        fit: BoxFit.fill,
                        image: new NetworkImage(
                            "https://i.imgur.com/BoN9kdC.png")))),
            Container(
              height: 60,
            ),
            Container(
              margin: EdgeInsets.all(5),
              padding: EdgeInsets.all(15),
              color: Colors.lightBlue,
              // width: 40,
              // height: 40,
              child: Text(
                'Girlscript',
                style: TextStyle(
                  fontSize: 40,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
            Container(
              height: 40,
            ),
            Container(
              margin: EdgeInsets.all(5),
              // width: 40,
              // height: 40,
              // color: Colors.green,
              child: Text(
                'girsclipt@gmail.com',
                style: TextStyle(
                  fontSize: 22,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
            Container(
              height: 40,
            ),
            Container(
              margin: EdgeInsets.all(5),
              // width: 40,
              // height: 40,
              // color: Colors.green,
              child: Text(
                '1111111111',
                style: TextStyle(
                  fontSize: 15,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

//-------------------------------------My Code
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
      title: 'Flutter Demo',
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
  int _counter = 0;

  void _incrementCounter() {
    setState(() {
      _counter++;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment:  MainAxisAlignment.center,
          children: [
            Container(
              width: 150,
              height: 150,
              // decoration - propoerty
              decoration: new BoxDecoration(
                shape: BoxShape.circle,
                image: new DecorationImage(
                  fit: BoxFit.fill,
                  image: new NetworkImage(
                    'https://avatars.githubusercontent.com/u/44470067?v=4')
                )
              )
            ),
            Container(
              margin: EdgeInsets.all(50),
              padding: EdgeInsets.all(5),
              color: Colors.lightBlue,
              //width: 40,
              //height: 40,
              child: Text(
                'Girlscript',
                style: TextStyle(
                  fontSize:  40,
                  fontWeight: FontWeight.bold,
                ),
                ), 
            ),
            Container(
              margin: EdgeInsets.all(5),
              //width: 40,
              //height: 40,
              //color: Colors.green, 
              child: Text('yagya@gmail.com') 
            ),
            Container(
              margin: EdgeInsets.all(5),
              //width: 40,
              //height: 40,
              child: Text('8769599453') 
            )
        ],)
      ),
    );
  }
}
