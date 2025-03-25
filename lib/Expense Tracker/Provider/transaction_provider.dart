import 'package:expense_tracker/Expense%20Tracker/Model/transaction.dart';
import 'package:flutter/widgets.dart';

class TransactionProvider with ChangeNotifier {
  final List<Transaction> _transactions = [];
  List<Transaction> get transaction => _transactions;
  double get totalIncome => _transactions
      .where((tx) => tx.isIncome)
      .fold(0, (sum, tx) => sum + tx.amount);
  double get totalExpenses => _transactions
      .where((tx) => !tx.isIncome)
      .fold(0, (sum, tx) => sum + tx.amount);
  double get remainingBalance => totalIncome - totalExpenses;

  void addTransaction(String title, double amount, bool isIncome) {
    final newTransaction = Transaction(
      id: DateTime.now().toString(),
      title: title,
      amount: amount,
      date: DateTime.now(),
      isIncome: isIncome,
    );
    _transactions.insert(0, newTransaction);
    notifyListeners();
  }

  void removeTransaction(String id) {
    _transactions.removeWhere((tx) => tx.id == id);
    notifyListeners();
  }
}
