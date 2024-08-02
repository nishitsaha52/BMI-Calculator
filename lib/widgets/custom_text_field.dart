import 'package:flutter/material.dart';

class CustomTextField extends StatelessWidget {
  final TextEditingController controller;
  final String label;
  final TextInputType keyboardType;
  final IconData icon;

  CustomTextField({
    required this.controller,
    required this.label,
    this.keyboardType = TextInputType.text,
    required this.icon,
  });

  @override
  Widget build(BuildContext context) {
    return TextField(
      controller: controller,
      keyboardType: keyboardType,
      decoration: InputDecoration(
        labelText: label,
        prefixIcon: Icon(icon),
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(25.0), // Rounded corners
        ),
        filled: true,
        fillColor: Colors.white, // Background color for text field
        contentPadding: EdgeInsets.symmetric(vertical: 10.0, horizontal: 15.0), // Padding
      ),
    );
  }
}
