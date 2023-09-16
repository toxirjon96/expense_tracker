import 'package:expense_tracker/src/expense_tracker_library.dart';

void main() {
  runApp(
    MaterialApp(
      debugShowCheckedModeBanner: false,
      title: "Expense tracker",
      theme: ThemeData(useMaterial3: true),
      home: const Expenses(),
    ),
  );
}
