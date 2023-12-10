import 'package:flutter/material.dart';
import 'package:tanzeem/constants/colors.dart';

class TanzeemTextFormField extends StatelessWidget {
  const TanzeemTextFormField({Key? key, required this.hintText, required this.isPassword, required this.controller, required this.validator, required this.keyboardType, this.suffixIcon,}) : super(key: key);
  final String hintText;
  final bool isPassword;
  final TextEditingController controller;
  final String? Function(String?)? validator;
  final TextInputType keyboardType;
  final Widget? suffixIcon;

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      controller: controller,
      keyboardType: keyboardType,
      validator: validator,
      obscureText: isPassword,
      style: const TextStyle(
        color: kPrimaryColor,

      ),
      decoration: InputDecoration(
        hintText: hintText,
        suffixIcon: suffixIcon,
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(10),
          borderSide: const BorderSide(color: Colors.white),
        ),
        fillColor: const Color(0xffF7F8F9),
        filled: true,
        focusedBorder: const OutlineInputBorder(
          borderSide: BorderSide(color: Color(0xffDADADA), width: 2.0),
        ),
        enabledBorder: const OutlineInputBorder(
          borderSide: BorderSide(color: Color(0xffDADADA), width: 2.0),
        ),

      ),

    );
  }
}
