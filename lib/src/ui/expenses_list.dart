import 'package:expense_tracker/src/expense_tracker_library.dart';

class ExpensesList extends StatelessWidget {
  const ExpensesList({
    super.key,
    required this.expensesList,
    required this.onRemoveExpense,
  });

  final List<Expense> expensesList;
  final Function(Expense expense) onRemoveExpense;

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: expensesList.length,
      itemBuilder: (ctx, index) => Dismissible(
        key: ValueKey(expensesList[index]),
        onDismissed: (direction) =>{
          onRemoveExpense(expensesList[index]),
        },
        child: ExpensesItem(
          expense: expensesList[index],
        ),
      ),
    );
  }
}
