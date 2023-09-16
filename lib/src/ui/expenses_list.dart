import 'package:expense_tracker/src/expense_tracker_library.dart';

class ExpensesList extends StatelessWidget {
  final List<Expense> expensesList;

  const ExpensesList({
    super.key,
    required this.expensesList,
  });

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: expensesList.length,
      itemBuilder: (ctx, index) => ExpensesItem(
        expense: expensesList[index],
      ),
    );
  }
}
