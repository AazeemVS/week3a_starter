//JP's App for day 3A

//Test anohter

import 'package:flutter/material.dart';

void main() {
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    final myScheme = ColorScheme.fromSeed(seedColor: Colors.orange);

    return MaterialApp(
      theme: ThemeData(
          colorScheme: myScheme,
          textTheme: TextTheme(
              displayLarge: TextStyle(
                  //fontSize: ,
                  fontWeight: FontWeight.bold),
              bodyMedium: TextStyle(
                  //fontSize: ,
                  fontWeight: FontWeight.bold))),
      //elevatedButtonTheme: ElevatedButtonThemeData(
      //style: ElevatedButton.StyleFrom(color: Colors.red)),
      darkTheme: ThemeData(
        colorScheme: ColorScheme.fromSeed(
            seedColor: Colors.teal, brightness: Brightness.dark),
        scaffoldBackgroundColor: Colors.blueGrey[300],
      ),
      home: Week3App(),
    );
  }
}

class Week3App extends StatefulWidget {
  const Week3App({super.key});

  @override
  State<Week3App> createState() => _Week3AppState();
}

class _Week3AppState extends State<Week3App> {
  void _doSomething() {
    debugPrint("Method Called");
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,
        title: Text("Week 3A App"),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Container(
              width: 200,
              height: 250,
              color: Colors.green,
              child: Text("Hello Week 1"),
            ),
            //SizedBox(height: 30),
            ElevatedButton(
                onPressed: () {},
                child: Text("Elevated Button"),
                style: ElevatedButton.styleFrom(
                  backgroundColor: Colors.red,
                  foregroundColor: Colors.white,
                  textStyle:
                      TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                )),
            OutlinedButton(
                onPressed: () => _doSomething(), child: Text("Outline Button")),
            ElevatedButton.icon(
              onPressed: () {},
              icon: Icon(Icons.add),
              label: Text("Elevated Button with Icon"),
            ),
            TextButton(
                onPressed: () {
                  debugPrint("Text Button pressed");
                },
                child: Text("Text Button")),
            SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child: Row(children: [
                Container(width: 150, height: 150, color: Colors.brown),
                Container(width: 150, height: 150, color: Colors.red),
                Container(width: 150, height: 150, color: Colors.black),
                Container(width: 150, height: 150, color: Colors.brown),
                Container(width: 150, height: 150, color: Colors.red),
                Container(width: 150, height: 150, color: Colors.black),
              ]),
            ),
            Container(
              width: 150,
              height: 250,
              color: Colors.yellow,
              child: Text("Hello Week 2"),
            ),
            Container(
              width: 200,
              height: 250,
              color: Colors.pink,
              child: Text("Hello Week 2"),
            ),
          ],
        ),
      ),
    );
  }
}
