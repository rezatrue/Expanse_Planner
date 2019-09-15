import 'package:flutter/material.dart';
import './transaction.dart';

void main() => runApp(MyApp());


class MyApp extends StatefulWidget {
  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  final List<Transaction> transactions =
  [
    Transaction(id: 't1', title: 'New Show', amount: 69.59, date: DateTime.now()),
    Transaction(id: 't2', title: 'Daily Groceries', amount: 25.80, date: DateTime.now()),
  ];

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
              Column(children: transactions.map((tx) {
                return Row(children: <Widget>[
                  Container( 
                    child: Text(tx.amount.toString()),),
                  Column(children: <Widget>[
                    Text(tx.title),
                    Text(tx.date.toString()),
                  ],)
                ],);
                
              }).toList(),)
            ],
          ),
        ),     
    );
  }
}