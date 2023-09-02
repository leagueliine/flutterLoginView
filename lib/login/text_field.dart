import 'package:flutter/material.dart';

class TextFieldUI extends StatelessWidget {
  final controller;
  final String hintText;
  final bool obscureText;
  final String? textFieldValue;
  final ValueChanged<String>? onChange;

  const TextFieldUI({
    super.key,
    required this.controller,
    required this.hintText,
    required this.obscureText,
    this.textFieldValue,
    this.onChange,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 25.0),
      child: TextField(
        controller: controller,
        obscureText: obscureText,
        decoration: InputDecoration(
          enabledBorder: const OutlineInputBorder(
            borderSide: BorderSide(color: Colors.white),
          ),
          focusedBorder: const OutlineInputBorder(
            borderSide: BorderSide(color: Colors.blueAccent),
          ),
          fillColor: Colors.grey.shade200,
          filled: true,
          hintText: hintText,
        ),
      ),
    );
  }
}
