import 'package:flutter/material.dart';

class NewTransaction extends StatelessWidget {
  final Function addTxHandeler;

  final textController = TextEditingController();
  final amountController = TextEditingController();

  NewTransaction(this.addTxHandeler);

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
                        ),
                        TextField(decoration: InputDecoration(labelText: 'Amount'),
                        controller: amountController,
                        ),
                        FlatButton(
                          child: Text('Add Transaction'), 
                          textColor: Colors.purple,
                          onPressed: (){
                              print(textController.text);
                              print(amountController.toString());
                              addTxHandeler(textController.text, double.parse(amountController.text.toString()));
                            }
                          ),
                      ],
                    ),
                ),
              );
  }
}