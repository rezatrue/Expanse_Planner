import 'package:flutter/material.dart';

class NewTransaction extends StatelessWidget {

  final textController = TextEditingController();
  final amountController = TextEditingController();

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
              );
  }
}