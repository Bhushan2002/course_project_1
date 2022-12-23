import 'package:intl/intl.dart';

import '../models/transaction.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';

class TransactionList extends StatelessWidget {
  TransactionList({super.key, required this.transactions});
  final List<Transaction> transactions;
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 300,
      child: ListView.builder(
        itemBuilder: (context, index) {
          return Card(
            child: Row(children: [
              Container(
                margin: EdgeInsets.symmetric(vertical: 10, horizontal: 15),
                decoration: BoxDecoration(
                    border: Border.all(color: Colors.deepPurple, width: 2)),
                padding: EdgeInsets.all(10),
                child: Text(
                  '₹ ${transactions[index].amount.toString()}',
                  style: TextStyle(fontSize: 20, color: Colors.purple),
                ),
              ),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    transactions[index].title,
                    style: TextStyle(fontSize: 18, fontWeight: FontWeight.w600),
                  ),
                  Text(
                    DateFormat.yMMMd().format(transactions[index].date),
                    style: TextStyle(color: Colors.grey, fontSize: 16),
                  ),
                ],
              )
            ]),
          );
        },
        itemCount: transactions.length,
      ),
    );
  }
}
