import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';

class NewTransaction extends StatelessWidget {
  NewTransaction({super.key, required this.newTx});
  final Function newTx;
  final titleController = TextEditingController();
  final amountController = TextEditingController();

  void submitData() {
    final enteredTitle = titleController.text;
    final enteredAmount = double.parse(amountController.text);
    if (enteredTitle.isEmpty || enteredAmount <= 0) {
      return;
    }
    newTx(titleController.text, double.parse(amountController.text));
  }

  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 3,
      child: Container(
        padding: EdgeInsets.all(10),
        child: Column(crossAxisAlignment: CrossAxisAlignment.end, children: [
          TextField(
            decoration: InputDecoration(labelText: 'Tile'),
            // onChanged: (value) {
            //   titleInput = value;
            // },
            controller: titleController,
          ),
          TextField(
            decoration: InputDecoration(labelText: 'Amount'),
            // onChanged: (value) => amountInput = value,
            controller: amountController,
            keyboardType: TextInputType.number,
            onSubmitted: (_) => submitData(),
          ),
          ElevatedButton(
              onPressed: () {
                submitData();
              },
              clipBehavior: Clip.antiAlias,
              child: Text(
                'Add Transactions',
                style: TextStyle(color: Colors.deepPurple),
              )),
        ]),
      ),
    );
  }
}
