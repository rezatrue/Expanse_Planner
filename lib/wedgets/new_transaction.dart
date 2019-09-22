import 'package:flutter/material.dart';

class NewTransaction extends StatelessWidget {
  final Function addTxHandeler;

  final textController = TextEditingController();
  final amountController = TextEditingController();

  NewTransaction(this.addTxHandeler);

  void submitData(){
    final titleText = textController.text;
    final amount = double.parse(amountController.text.toString());

    if(titleText.isEmpty || amount <= 0) return;

      addTxHandeler(
          titleText,
          amount,
        );

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
                        onSubmitted: (_)  => submitData(),
                        ),
                        TextField(decoration: InputDecoration(labelText: 'Amount'),
                        controller: amountController,
                        keyboardType: TextInputType.number,
                        onSubmitted: (_) => submitData(),
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