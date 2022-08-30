import 'package:flutter/material.dart';
import './widgets/transaction_list.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Expenses App',
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatelessWidget {
  final titleController = TextEditingController();
  final amountController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text('Flutter App'),
        ),
        body: Container(
          margin: EdgeInsets.all(5),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: <Widget>[
              Card(
                color: Colors.blue,
                child: Container(
                  width: double.infinity,
                  height: 100,
                  child: Text("Chart"),
                ),
                elevation: 5,
              ),
              Card(
                elevation: 5,
                child: Container(
                  padding: EdgeInsets.all(10),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.end,
                    children: <Widget>[
                      TextField(
                        // onChanged: ((val) => titleInput = val),
                        controller: titleController,
                        decoration: InputDecoration(
                          labelText: "Title",
                        ),
                      ),
                      TextField(
                        // onChanged: (val) => amountInput = val,
                        controller: amountController,
                        decoration: InputDecoration(
                          labelText: "Amount",
                        ),
                      ),
                      FlatButton(
                        textColor: Colors.purple,
                        onPressed: () {
                          print(titleController.text);
                          print(amountController.text);
                        },
                        child: Text("Add transaction"),
                      )
                    ],
                  ),
                ),
              ),
              TransactionList(),
            ],
          ),
        ));
  }
}
