import 'package:flutter/material.dart';
import '../models/transaction.dart';
import 'package:intl/intl.dart';

class Chart extends StatelessWidget {
  final List<Transaction> recentTransactions;

  Chart(this.recentTransactions);

  List<Map<String, Object>> get groupedTransactionValues {
    return List.generate(7, (index) {
      final weekDay = DateTime.now().subtract(Duration(days: index));
      double totalSum;

      for (var i = 0; i < recentTransactions.length; i++) {
        if (recentTransactions[i].purchaseDate.day == weekDay.day &&
            recentTransactions[i].purchaseDate.month == weekDay.month &&
            recentTransactions[i].purchaseDate.year == weekDay.year) {
          totalSum += recentTransactions[i].amount;
        }
      }

      return {"day": DateFormat.E(weekDay), "amount": 9.99};
    });
  }

  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 6,
      margin: EdgeInsets.all(10),
      child: Row(children: <Widget>[]),
    );
  }
}
