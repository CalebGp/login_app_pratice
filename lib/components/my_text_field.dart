import 'package:flutter/material.dart';

class MyTextField extends StatelessWidget {
  final String hint;
  final bool? obscure;
  final TextInputType inputType;
  final TextEditingController controller;
  const MyTextField({
    super.key,
    required this.hint,
    required this.controller,
    this.obscure = false,
    this.inputType = TextInputType.none,
  });

  @override
  Widget build(BuildContext context) {
    return TextField(
      obscureText: obscure!,
      controller: controller,
      decoration: InputDecoration(
        hintText: hint,
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(
            15,
          ),
        ),
      ),
    );
  }
}
