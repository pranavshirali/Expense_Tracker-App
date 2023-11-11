import 'package:expense_tracker/models/expense.dart';
import 'package:expense_tracker/widgets/expenses_item.dart';
import 'package:flutter/material.dart';

class ExpensesList extends StatelessWidget {
  const ExpensesList({
    super.key,
    required this.expenses,
    required this.onRemoveExpense,
  });

  final List<Expense> expenses;
  final void Function(Expense expense) onRemoveExpense;
  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: expenses.length,
      itemBuilder: (ctx, index) => Dismissible(
        direction: DismissDirection.endToStart,
        key: ValueKey(
          expenses[index],
        ),
        background: Container(
          color: Theme.of(context).colorScheme.error,
          margin: EdgeInsets.symmetric(
            horizontal: Theme.of(context).cardTheme.margin!.horizontal,
          ),
        ),
        secondaryBackground: Container(
        color: Theme.of(context).colorScheme.error,
        padding: const EdgeInsets.symmetric(horizontal: 20),
        alignment: Alignment.centerRight,
        child: const Text(
          'Delete',
          style: TextStyle(
            color: Colors.white,
            fontWeight: FontWeight.normal,
            fontSize: 30,
          ),
        ),
      ),
        onDismissed: (direction) {
          onRemoveExpense(expenses[index]);
        },
        child: ExpensesItem(
          expenses[index],
        ),
      ),
    );
  }
}
