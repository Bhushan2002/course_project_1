import 'package:expences/widgets/new_transaction.dart';
import 'package:expences/widgets/transactions_list.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';

import '../models/transaction.dart';

class UserTransaction extends StatefulWidget {
  const UserTransaction({super.key});

  @override
  State<UserTransaction> createState() => _UserTransactionState();
}

class _UserTransactionState extends State<UserTransaction> {
  final List<Transaction> _userTransaction = [
    Transaction(
      amount: 4000,
      date: DateTime.now(),
      id: 't1',
      title: 'shoes',
    ),
    Transaction(
      amount: 2000,
      date: DateTime.now(),
      id: 't2',
      title: 'Groceries',
    ),
  ];
  void _addNewTransaction(String title, double amount) {
    final newTx = Transaction(
      amount: amount,
      date: DateTime.now(),
      id: DateTime.now().toString(),
      title: title,
    );
    setState(() {
      _userTransaction.add(newTx);
    });
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        NewTransaction(newTx: _addNewTransaction),
        TransactionList(
          transactions: _userTransaction,
        ),
      ],
    );
  }
}
