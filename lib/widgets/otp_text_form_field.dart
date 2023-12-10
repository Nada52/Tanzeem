import 'package:flutter/material.dart';
import 'package:tanzeem/constants/colors.dart';

class OtpTextFormField extends StatelessWidget {
  const OtpTextFormField({Key? key, required this.hintText, required this.controller, required this.validator,}) : super(key: key);
  final String hintText;
  final TextEditingController controller;
  final String? Function(String?)? validator;

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      controller: controller,
      keyboardType: TextInputType.number,
      validator: validator,
      textAlign: TextAlign.center,
      style: const TextStyle(
        color: kPrimaryColor,
        fontSize: 25,
        fontWeight: FontWeight.bold,
      ),
      decoration: InputDecoration(
        hintText: hintText,
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(10),
          borderSide: const BorderSide(color: Colors.white),
        ),
        fillColor: const Color(0xffF7F8F9),
        filled: true,
        focusedBorder: const OutlineInputBorder(
          borderSide: BorderSide(color: Color(0xff35C2C1), width: 2.0),
        ),
        enabledBorder: const OutlineInputBorder(
          borderSide: BorderSide(color: Color(0xffDADADA), width: 2.0),
        ),

      ),

    );
  }
}
