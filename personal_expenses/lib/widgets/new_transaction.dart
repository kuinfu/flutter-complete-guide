import 'package:flutter/material.dart';

class NewTransaction extends StatefulWidget {
  Function addTx;

  NewTransaction(this.addTx);

  @override
  State<NewTransaction> createState() => _NewTransactionState();
}

class _NewTransactionState extends State<NewTransaction> {
  final titleController = TextEditingController();

  final amountController = TextEditingController();

  void submitData() {
    String enteredTitle = titleController.text;
    double enteredAmount = double.parse(amountController.text);
    if (enteredTitle.isEmpty) {
      return;
    }
    widget.addTx(enteredTitle, enteredAmount);
    //解决提交后,新的输入框不会自动消失问题
    Navigator.of(context).pop();
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
