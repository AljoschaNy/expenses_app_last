import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import '../models/transaction.dart';

class TransactionList extends StatelessWidget {
  final List<Transaction> userTransactions;

  TransactionList(this.userTransactions);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 250,
      child: userTransactions.isEmpty
          ? Column(
              children: <Widget>[
                Text(
                  "No Transaction added yet",
                  style: Theme.of(context).textTheme.headline6,
                ),
                SizedBox(
                  height: 20,
                ),
                Container(
                  height: 200,
                  child: Image.asset(
                    "assets/images/waiting.png",
                    fit: BoxFit.cover,
                  ),
                ),
              ],
            )
          : ListView.builder(
              itemCount: userTransactions.length,
              itemBuilder: (ctx, index) {
                return Card(
                  child: Container(
                    child: Row(
                      children: [
                        Container(
                          margin: EdgeInsets.symmetric(
                            vertical: 10,
                            horizontal: 15,
                          ),
                          padding: EdgeInsets.symmetric(
                            vertical: 5,
                            horizontal: 10,
                          ),
                          decoration: BoxDecoration(
                            border: Border.all(
                              color: Theme.of(context).primaryColor,
                              width: 2,
                            ),
                          ),
                          child: Text(
                            "\$${userTransactions[index].amount.toStringAsFixed(2)}",
                            style: TextStyle(
                              fontWeight: FontWeight.bold,
                              fontSize: 20,
                              color: Theme.of(context).primaryColor,
                            ),
                          ),
                        ),
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              userTransactions[index].title,
                              style: Theme.of(context).textTheme.headline6,
                            ),
                            Text(
                              DateFormat.yMMMd()
                                  .format(userTransactions[index].purchaseDate),
                              style: TextStyle(
                                fontSize: 15,
                                color: Colors.grey,
                              ),
                            ),
                          ],
                        )
                      ],
                    ),
                  ),
                );
              },
            ),
    );
  }
}
