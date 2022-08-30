import 'package:flutter/material.dart';

class NewTransaction extends StatelessWidget {
  final titleController = TextEditingController();
  final amountController = TextEditingController();

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
    );
  }
}
