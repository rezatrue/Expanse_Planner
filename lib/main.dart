import 'package:flutter/material.dart';
import './transaction.dart';
import 'package:intl/intl.dart';

void main() => runApp(MyApp());


class MyApp extends StatefulWidget {
  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  final List<Transaction> transactions =
  [
    Transaction(id: 't1', title: 'New Show', amount: 69.59, date: DateTime.now()),
    Transaction(id: 't2', title: 'Daily Groceries', amount: 25.85, date: DateTime.now()),
  ];

  // String titleInput;
  // String amountInput;
  // altenative way to get value of TextFeild
  final textController = TextEditingController();
  final amountController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        home: Scaffold(
          appBar: AppBar(
            title: Text('Expanse Planner'),
          ) ,
          body: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: <Widget>[
              Container(
                margin: EdgeInsets.all(5),
                width: double.infinity,
                color: Colors.blue,
                child: Card(
                    child: Text('Card!!',),
                  ),
              ),
              Card(
                elevation: 5,
                child: Container(
                    padding: EdgeInsets.all(5),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.end,
                      children: <Widget>[
                        TextField(decoration: InputDecoration(labelText: 'Title'),
                        //onChanged: (val) => titleInput = val,
                        controller: textController,
                        ),
                        TextField(decoration: InputDecoration(labelText: 'Amount'),
                        //onChanged: (val) => amountInput = val,
                        controller: amountController,
                        ),
                        FlatButton(
                          child: Text('Add Transaction'), 
                          textColor: Colors.purple,
                          onPressed: (){
                              // print(titleInput);
                              // print(amountInput);
                              print(textController.text);
                              print(amountController.text);
                            }
                          ),
                      ],
                    ),
                ),
              ), 
              Column(children: transactions.map((tx) {
                return Row(children: <Widget>[
                  Container(
                    margin: EdgeInsets.symmetric(vertical: 10, horizontal: 15),
                    decoration: BoxDecoration(border: Border.all(color: Colors.purple, style: BorderStyle.solid, width: 2)), 
                    padding: EdgeInsets.all(10),
                    child: Text('\$${tx.amount}' ,
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 25,
                        color: Colors.purple,
                      ),
                      ),
                    ),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: <Widget>[
                    Text(tx.title, style: TextStyle(
                        color: Colors.black,
                        fontWeight: FontWeight.bold,
                        fontSize: 20,
                      ),
                    ),
                    Text(
                      DateFormat.yMMMd().format(tx.date), 
                      style: TextStyle(
                        color: Colors.grey,
                        fontSize: 15,
                      ),
                      ),
                  ],)
                ],);
                
              }).toList(),)
            ],
          ),
        ),     
    );
  }
}