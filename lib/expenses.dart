import 'package:flutter/material.dart';
import 'package:flutter_application_3/expenses_list.dart';
import 'package:flutter_application_3/models/expense.dart';

class Expenses extends StatefulWidget {
  const Expenses({super.key});

  @override
  State<Expenses> createState() => _ExpensesState();
}

class _ExpensesState extends State<Expenses> {
  final List<Expense> _registeredExpenses = [
    Expense(
        title: 'Flutter Course',
        amount: 19.99,
        date: DateTime.now(),
        category: Category.leisure)
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          children: [
            Text('The chart'),
            ExpenseList(expenses: _registeredExpenses)
          ],
        ),
      ),
    );
  }
}
