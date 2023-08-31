import 'package:flutter/material.dart';

class NewTransaction extends StatelessWidget {
  Function addTx;

  NewTransaction(this.addTx);

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
          children: [
            TextField(
              decoration: InputDecoration(labelText: 'Title'),
              controller: titleController,
              // onChanged: (val) => this.inputTitle = val,
            ),
            TextField(
              decoration: InputDecoration(labelText: 'Amount'),
              controller: amountController,
              // onChanged: (val) => this.inputAmount = val,
            ),
            TextButton(
                onPressed: () => {
                      // print(titleController.text),
                      // print(amountController.text),
                      addTx(titleController.text,
                          double.parse(amountController.text)),
                    },
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
