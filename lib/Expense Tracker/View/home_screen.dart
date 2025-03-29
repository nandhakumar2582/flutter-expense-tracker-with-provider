import 'package:expense_tracker/Expense%20Tracker/Widgets/add_transaction.dart';
import 'package:expense_tracker/Expense%20Tracker/Widgets/summary_card.dart';
import 'package:expense_tracker/Expense%20Tracker/Widgets/transaction_list.dart';
import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text("Expenses Tracker")),
      body: Column(
        children: [SummaryCard(), Expanded(child: TransactionList())],
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          showModalBottomSheet(
            context: context,
            builder: (_) => AddTransaction(),
          );
        },
        child: Icon(Icons.add),
      ),
    );
  }
}
