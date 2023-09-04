import 'package:flutter/material.dart';
import 'models/expense.dart';

class Expenses extends StatefulWidget {
  const Expenses({super.key});

  @override
  State<Expenses> createState() {
    return _ExpensesState();
  }
}

class _ExpensesState extends State<Expenses> {
  final List<Expense> _registeredExpenses = [
    Expense(
      title: 'Flutter Course',
      amout: 19.99,
      date: DateTime.now(),
      category: Catergory.work,
    ),
    Expense(
      title: 'Cinema',
      amout: 19.99,
      date: DateTime.now(),
      category: Catergory.leisure,
    ),
  ];

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: Column(
        children: [
          Text('The chart'),
          Text('Expenses List'),
        ],
      ),
    );
  }
}
