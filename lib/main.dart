import 'package:flutter/material.dart';
import './transaction.dart';

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
  final List<Transaction> transactions = [
    Transaction(
      id: "a1",
      title: "New Shoes",
      amount: 45.99,
      purchaseDate: DateTime.now(),
    ),
    Transaction(
      id: "a2",
      title: "New Shirt",
      amount: 24.99,
      purchaseDate: DateTime.now(),
    ),
  ];

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
                  margin: EdgeInsets.all(10),
                  width: double.infinity,
                  height: 100,
                  child: Text("Chart"),
                ),
                elevation: 5,
              ),
              Column(
                children: transactions.map((tx) {
                  return Card(
                    child: Container(
                      margin: EdgeInsets.all(10),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(tx.amount.toString()),
                          Column(
                            children: [
                              Text(tx.title),
                              Text(tx.purchaseDate.toString()),
                            ],
                          )
                        ],
                      ),
                    ),
                  );
                }).toList(),
              ),
            ],
          ),
        ));
  }
}
