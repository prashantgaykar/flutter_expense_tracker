import 'package:flutter/material.dart';
import 'package:expense_tracker_app/widgets/expenses.dart';

var colorScheme =
    ColorScheme.fromSeed(seedColor: const Color.fromARGB(255, 100, 49, 105));

var darkColorScheme = ColorScheme.fromSeed(
    brightness: Brightness.dark,
    seedColor: const Color.fromARGB(255, 47, 14, 50));

void main() {
  runApp(MaterialApp(
    title: 'Expense Tracker',
    darkTheme: ThemeData.dark().copyWith(
      useMaterial3: true,
      colorScheme: darkColorScheme,
      cardTheme: const CardTheme().copyWith(
          color: darkColorScheme.secondaryContainer,
          margin: const EdgeInsets.symmetric(horizontal: 16, vertical: 8)),
      elevatedButtonTheme: ElevatedButtonThemeData(
          style: ElevatedButton.styleFrom(
              foregroundColor: darkColorScheme.onPrimaryContainer,
              backgroundColor: darkColorScheme.primaryContainer)),
    ),
    theme: ThemeData().copyWith(
        useMaterial3: true,
        colorScheme: colorScheme,
        appBarTheme: const AppBarTheme().copyWith(
            backgroundColor: colorScheme.onPrimaryContainer,
            foregroundColor: colorScheme.primaryContainer),
        cardTheme: const CardTheme().copyWith(
            color: colorScheme.secondaryContainer,
            margin: const EdgeInsets.symmetric(horizontal: 16, vertical: 8)),
        elevatedButtonTheme: ElevatedButtonThemeData(
            style: ElevatedButton.styleFrom(
                backgroundColor: colorScheme.primaryContainer)),
        textTheme: ThemeData().textTheme.copyWith(
            titleLarge: TextStyle(
                fontWeight: FontWeight.bold,
                color: colorScheme.onSecondaryContainer,
                fontSize: 16))),
    home: const ExpensesScreen(),
  ));
}
