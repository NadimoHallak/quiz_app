import 'package:flutter/material.dart';

class MyTextField extends StatelessWidget {
  MyTextField({super.key, required this.icon, required this.hint});

  IconData icon;
  String hint;

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      decoration: InputDecoration(
        prefixIconColor: const Color(0xFF914576),
        prefixIcon: Icon(icon),
        hintStyle: const TextStyle(
          color: Color(0xFF914576),
        ),
        hintText: hint,
        focusedBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(30),
          borderSide: const BorderSide(width: 2, color: Color(0xFF914576)),
        ),
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(30),
          borderSide: const BorderSide(width: 2, color: Color(0xFF914576)),
        ),
      ),
    );
  }
}
