import 'package:expense_tracker/src/expense_tracker_library.dart';

void main() {
  final kColorSchema = ColorScheme.fromSeed(
    seedColor: const Color.fromARGB(
      255,
      96,
      59,
      181,
    ),
  );
  runApp(
    MaterialApp(
      debugShowCheckedModeBanner: false,
      title: "Expense tracker",
      theme: ThemeData().copyWith(
          useMaterial3: true,
          colorScheme: kColorSchema,
          appBarTheme: AppBarTheme().copyWith(
            backgroundColor: kColorSchema.onPrimaryContainer,
            foregroundColor: kColorSchema.primaryContainer,
          )),
      home: const Expenses(),
    ),
  );
}
