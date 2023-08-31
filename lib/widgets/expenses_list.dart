import 'package:expense_tracker_app/widgets/expense_item.dart';
import 'package:flutter/material.dart';
import 'package:expense_tracker_app/models/expense.dart';

class ExpensesList extends StatelessWidget {
  const ExpensesList(
      {super.key, required this.expenses, required this.onExpenseRemoved});

  final List<Expense> expenses;
  final void Function(Expense expense) onExpenseRemoved;

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
        itemCount: expenses.length,
        itemBuilder: (ctx, index) => Dismissible(
              key: Key(expenses[index].id),
              background: Container(
                color: Theme.of(context).colorScheme.error.withOpacity(0.75),
                margin: EdgeInsets.symmetric(
                    horizontal: Theme.of(context).cardTheme.margin!.horizontal),
              ),
              child: ExpenseItem(expenses[index]),
              onDismissed: (direction) {
                onExpenseRemoved(expenses[index]);
              },
            ));
  }
}
