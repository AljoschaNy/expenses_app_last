import 'package:flutter/cupertino.dart';

class Transaction {
  final String id;
  final String title;
  final double amount;
  final DateTime purchaseDate;

  Transaction({
    @required this.id,
    @required this.title,
    @required this.amount,
    @required this.purchaseDate,
  });
}
