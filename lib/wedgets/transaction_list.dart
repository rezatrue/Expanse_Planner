import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import '../models/transaction.dart';

class TransactionList extends StatelessWidget {

 final List<Transaction> _userTransactions;
 
 TransactionList(this._userTransactions);
  
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 300,
      child: ListView.builder(
        itemBuilder: (ctx, index) {
            return Card(
              child: Row(children: <Widget>[
                      Container(
                        margin: EdgeInsets.symmetric(vertical: 10, horizontal: 15),
                        decoration: BoxDecoration(border: Border.all(color: Colors.purple, style: BorderStyle.solid, width: 2)), 
                        padding: EdgeInsets.all(10),
                        child: Text('\$${_userTransactions[index].amount}' ,
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
                        Text(_userTransactions[index].title, style: TextStyle(
                            color: Colors.black,
                            fontWeight: FontWeight.bold,
                            fontSize: 20,
                          ),
                        ),
                        Text(
                          DateFormat.yMMMd().format(_userTransactions[index].date), 
                          style: TextStyle(
                            color: Colors.grey,
                            fontSize: 15,
                          ),
                          ),
                      ],)
                    ],),
                    );
        },
        itemCount: _userTransactions.length,
     
      ),
    );
  }
}