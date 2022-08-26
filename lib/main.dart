import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter App',
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text('Flutter App'),
        ),
        body: Column(
          children: <Widget>[
            Card(
              color: Colors.blue,
              child: Container(
                margin: EdgeInsets.all(10),
                width: double.infinity,
                height: 100,
                child: Text("Chart"),
              ),
              elevation: 5,
            ),
            Card(
              child: Text("List of tx"),
            ),
          ],
        ));
  }
}
