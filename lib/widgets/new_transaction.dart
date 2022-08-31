import 'package:flutter/material.dart';

class NewTransaction extends StatelessWidget {
  final titleController = TextEditingController();
  final amountController = TextEditingController();
  final Function addTx;

  NewTransaction(this.addTx);

  void submitData() {
    final enteredTitle = titleController.text;
    final enteredAmount = double.parse(amountController.text);

    if (enteredTitle.isEmpty || enteredAmount <= 0) {
      return;
    }

    addTx(
      enteredTitle,
      enteredAmount,
    );
  }

  @override
  Widget build(BuildContext context) {
    return Card(
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

              onSubmitted: (_) => submitData(),
            ),
            TextField(
              // onChanged: (val) => amountInput = val,
              controller: amountController,
              decoration: InputDecoration(
                labelText: "Amount",
              ),
              keyboardType: TextInputType.number,
              onSubmitted: (_) => submitData(),
            ),
            FlatButton(
              textColor: Colors.purple,
              onPressed: submitData,
              child: Text("Add transaction"),
            )
          ],
        ),
      ),
    );
  }
}
