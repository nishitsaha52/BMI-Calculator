import 'package:flutter/material.dart';
import 'screens/input_screen.dart';
import 'screens/result_screen.dart';

void main() {
  runApp(BMICalculatorApp());
}

class BMICalculatorApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'BMI Calculator',
      theme: ThemeData(
        primarySwatch: Colors.teal, // Primary color for the app
        buttonTheme: ButtonThemeData(
          buttonColor: Colors.teal, // Default button color
          textTheme: ButtonTextTheme.primary, // Text color for buttons
        ),
        textTheme: TextTheme(
          bodyLarge: TextStyle(fontSize: 18.0, color: Colors.black87), // Updated text style for large body text
          bodyMedium: TextStyle(fontSize: 16.0, color: Colors.black54), // Updated text style for medium body text
        ),
        inputDecorationTheme: InputDecorationTheme(
          border: OutlineInputBorder(), // Border style for input fields
          contentPadding: EdgeInsets.symmetric(vertical: 10.0, horizontal: 15.0), // Padding for input fields
        ),
        elevatedButtonTheme: ElevatedButtonThemeData(
          style: ElevatedButton.styleFrom(
            backgroundColor: Colors.teal, // Button background color
            foregroundColor: Colors.white, // Button text color
            padding: EdgeInsets.symmetric(vertical: 15.0, horizontal: 30.0), // Button padding
            textStyle: TextStyle(fontSize: 18), // Button text style
          ),
        ),
      ),
      home: InputScreen(), // Setting the initial screen to InputScreen
    );
  }
}
