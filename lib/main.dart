import 'package:flutter/material.dart';

void main() => runApp(MyApp());


class MyApp extends StatefulWidget {
  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        home: Scaffold(
          appBar: AppBar(
            title: Text('Expanse Planner'),
          ) ,
          body: Column(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: <Widget>[
              Container(
                margin: EdgeInsets.all(5),
                width: double.infinity,
                color: Colors.blue,
                child: Card(
                    child: Text('Card!!',),
                    color: Colors.brown,
                  ),
              ),
              Card(
                color: Colors.red,
                child: Text('Hello'),),
            ],
          ),
        ),     
    );
  }
}