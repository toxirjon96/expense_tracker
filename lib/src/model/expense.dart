import 'package:expense_tracker/src/expense_tracker_library.dart';
import 'package:intl/intl.dart';

final formatter = DateFormat.yMd();
const _uuid = Uuid();

const categoryIcons = {
  Category.food: Icons.lunch_dining,
  Category.travel: Icons.flight_takeoff,
  Category.leisure: Icons.movie,
  Category.work: Icons.work,
};

class Expense {
  final String id;
  final String title;
  final double amount;
  final DateTime date;
  final Category category;

  Expense({
    required this.title,
    required this.amount,
    required this.date,
    required this.category,
  }) : id = _uuid.v4();

  String get formattedDate {
    return formatter.format(date);
  }

  Icon get categoryIcon {
    return Icon(categoryIcons[category]);
  }
}
