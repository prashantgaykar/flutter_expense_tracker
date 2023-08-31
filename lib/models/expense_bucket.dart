import 'package:expense_tracker_app/models/expense.dart';

class ExpenseBucket {
  const ExpenseBucket(this.category, this.expenses);

  final Category category;
  final List<Expense> expenses;

  ExpenseBucket.forCategory(List<Expense> allExpenses, this.category)
      : expenses = allExpenses
            .where((expense) => expense.category == category)
            .toList();

  double get totalExpenses {
    double sum = 0;
    sum = expenses.fold(
        0.0, (prevAmount, expense) => expense.amount + prevAmount);
    return sum;
  }
}
