import 'package:flutter/material.dart';

class NewTransaction extends StatefulWidget {
  final Function addTxHandeler;


  NewTransaction(this.addTxHandeler);

  @override
  _NewTransactionState createState() => _NewTransactionState();
}

class _NewTransactionState extends State<NewTransaction> {
  final textController = TextEditingController();

  final amountController = TextEditingController();

  void submitData(){
    final titleText = textController.text;
    final amount = double.parse(amountController.text.toString());

    if(titleText.isEmpty || amount <= 0) return;

      widget.addTxHandeler(
          titleText,
          amount,
        );

    Navigator.of(context).pop();

  }

  @override
  Widget build(BuildContext context) {
    return Card(
                elevation: 5,
                child: Container(
                    padding: EdgeInsets.all(5),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.end,
                      children: <Widget>[
                        TextField(decoration: InputDecoration(labelText: 'Title'),
                        controller: textController,
                        //onSubmitted: (_)  => submitData(),
                        ),
                        TextField(decoration: InputDecoration(labelText: 'Amount'),
                        controller: amountController,
                        keyboardType: TextInputType.number,
                        //onSubmitted: (_) => submitData(),
                        ),
                        FlatButton(
                          child: Text('Add Transaction'), 
                          textColor: Colors.purple,
                          onPressed: submitData,
                          ),
                      ],
                    ),
                ),
              );
  }
}