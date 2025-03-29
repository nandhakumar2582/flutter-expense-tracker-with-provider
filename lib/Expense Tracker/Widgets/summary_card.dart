import 'package:expense_tracker/Expense%20Tracker/Provider/transaction_provider.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:provider/provider.dart';

class SummaryCard extends StatelessWidget {
  const SummaryCard({super.key});

  @override
  Widget build(BuildContext context) {
    final transactionProvider = Provider.of<TransactionProvider>(context);
    return Card(
      margin: const EdgeInsets.all(16),
      child: Padding(
        padding: const EdgeInsets.all(16),
        child: Column(
          children: [
            const Text(
              'Monthly Summary',
              style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
            ),
            const SizedBox(height: 8),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  'Total Income: \$${transactionProvider.totalIncome.toStringAsFixed(2)}',
                  style: const TextStyle(color: Colors.green, fontSize: 16),
                ),
                Text(
                  'Total Expense: \$${transactionProvider.totalExpenses.toStringAsFixed(2)}',
                  style: const TextStyle(color: Colors.red, fontSize: 16),
                ),
              ],
            ),
            const SizedBox(height: 8),
            Text(
              "Remaining Balance: \$${transactionProvider.remainingBalance.toStringAsFixed(2)}",
              style: const TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
            ),
          ],
        ),
      ),
    );
  }
}
