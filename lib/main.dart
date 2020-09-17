import 'package:flutter/material.dart';
import 'package:navigator/first_page.dart';
import 'package:navigator/second_page.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: HomePage(),
      theme: ThemeData(
        primarySwatch: Colors.green,
      ),
      routes: {
        'secondScreen': (context) => SecondPage(),
      },
    );
  }
}

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Navigator"),
        centerTitle: true,
      ),
      body: Container(
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              RaisedButton(
                color: Colors.black,
                child: Text(
                  'First Page',
                  style: TextStyle(
                    color: Colors.orange,
                  ),
                ),
                onPressed: () => Navigator.push(context,
                    MaterialPageRoute(builder: (context) => FirstPage())),
              ),
              RaisedButton(
                  color: Colors.orange,
                  child: Text(
                    'Second Page',
                    style: TextStyle(
                      color: Colors.black,
                    ),
                  ),
                  onPressed: () {
                    Navigator.pushNamed(context, "secondScreen");
                  }),
            ],
          ),
        ),
      ),
    );
  }
}
