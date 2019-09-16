import 'package:flutter/material.dart';
import './new_transaction.dart';
import './transaction_list.dart';
import '../models/transaction.dart';

class Usertransactions extends StatefulWidget {
  @override
  _UsertransactionsState createState() => _UsertransactionsState();
}

class _UsertransactionsState extends State<Usertransactions> {
  final List<Transaction> _userTransactions = 
  [
    Transaction(id: 't1', title: 'New Show', amount: 69.59, date: DateTime.now()),
    Transaction(id: 't2', title: 'Daily Groceries', amount: 25.85, date: DateTime.now()),
  ];

  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[
        NewTransaction(), 
        TransactionList(_userTransactions),
      ],
    );
  }
}