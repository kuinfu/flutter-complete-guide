import 'package:flutter/material.dart';

class NewTransaction extends StatelessWidget {
  Function addTx;

  NewTransaction(this.addTx);

  final titleController = TextEditingController();
  final amountController = TextEditingController();

  void submitData() {
    String enteredTitle = titleController.text;
    double enteredAmount = double.parse(amountController.text);
    if (enteredTitle.isEmpty) {
      return;
    }
    addTx(enteredTitle, enteredAmount);
  }

  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 5,
      child: Container(
        padding: EdgeInsets.all(10),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.end,
          children: [
            TextField(
              decoration: InputDecoration(labelText: 'Title'),
              controller: titleController,
              // onChanged: (val) => this.inputTitle = val,
              onSubmitted: (_) => submitData(),
            ),
            TextField(
              decoration: InputDecoration(labelText: 'Amount'),
              controller: amountController,
              keyboardType: TextInputType.number,
              // onChanged: (val) => this.inputAmount = val,
              onSubmitted: (_) => submitData(),
            ),
            TextButton(
                onPressed: submitData,
                child: Text(
                  'Add Transaction',
                  style: TextStyle(color: Colors.purple),
                )),
          ],
        ),
      ),
    );
  }
}
