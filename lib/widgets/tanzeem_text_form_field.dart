import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import '../constants/colors.dart';

class TanzeemTextFormField extends StatelessWidget {
  final String hint;
  final TextEditingController? controller;
  final Widget? widget;
  final TextInputType inputType;
  final String? Function(String?)? validator;
  final bool obscureText ;

   const TanzeemTextFormField(
      {
      required this.hint,
      this.controller,
      this.widget,
      required this.inputType,
      this.validator,
       required this.obscureText,
      super.key,
      });

  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width;
    double height = MediaQuery.of(context).size.height;
    return Container(
          margin: const EdgeInsets.only(top: 6),
          width: width*0.85,
          height: height * 0.06,
          decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(8),
              border: Border.all(color: const Color.fromRGBO(218, 218, 218, 1))
              ),
          child: Padding(
            padding: const EdgeInsets.only(left: 8.0),
            child: TextFormField(
              obscureText: obscureText,
              validator: validator,
              controller: controller,
              autofocus: false,
              keyboardType: inputType,
              style: GoogleFonts.cairo(
                  fontSize: 14,
                  color: Colors.black,
                  fontWeight: FontWeight.w400
                ),
              cursorColor: kPrimaryColor,
              decoration:InputDecoration(
                suffixIcon: widget,
                hintText: hint,
                hintStyle: GoogleFonts.urbanist(
                  fontSize: 15,
                  color: const Color.fromRGBO(131, 145, 161, 1),
                  fontWeight: FontWeight.w500
                ),
                enabledBorder: const OutlineInputBorder(
                  borderSide: BorderSide(
                    color: Colors.white,
                    width: 0,
                  
                  )
                ),
                focusedBorder: const OutlineInputBorder(
                  borderSide: BorderSide(
                      color: Colors.white,
                    width: 0
                  )
                )
              ),
            ),
          ),
    );
  }
}

