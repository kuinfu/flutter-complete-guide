import 'package:flutter/material.dart';

import 'transaction.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Personal Expenses',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatelessWidget {
  List<Transaction> _transactions = [
    Transaction(
        id: DateTime.now().toString(),
        title: 'Shoes',
        amount: 10.3,
        date: DateTime.now()),
    Transaction(
        id: DateTime.now().toString(),
        title: 'Eating',
        amount: 80,
        date: DateTime.now()),
    Transaction(
        id: DateTime.now().toString(),
        title: 'Weakly Funny',
        amount: 130.99,
        date: DateTime.now()),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,
        // Here we take the value from the MyHomePage object that was created by
        // the App.build method, and use it to set our appbar title.
        title: Text('Expenses'),
      ),
      body: Column(
        // mainAxisAlignment: MainAxisAlignment.spaceBetween,
        // crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          Container(
            width: double.infinity,
            child: Card(
              elevation: 5,
              color: Colors.blue,
              child: Text(
                'charts',
              ),
            ),
          ),
          Column(
              children: _transactions
                  .map((e) => Card(
                        child: Text(e.title),
                      ))
                  .toList()),
        ],
      ),
    );
  }
}
