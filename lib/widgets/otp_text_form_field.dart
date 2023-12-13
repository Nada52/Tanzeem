import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:tanzeem/constants/colors.dart';

class OtpTextFormField extends StatelessWidget {
  const OtpTextFormField({Key? key, required this.controller, required this.validator,}) : super(key: key);

  final TextEditingController controller;
  final String? Function(String?)? validator;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 69,
      height: 60,

      decoration: BoxDecoration(borderRadius: BorderRadius.circular(8),
          border: Border.all(color: const Color.fromRGBO(218, 218, 218, 1))),
      child: Center(
        child: TextFormField(

          controller: controller,
          keyboardType: TextInputType.number,
          validator: validator,
          textAlign: TextAlign.center,
           style: GoogleFonts.urbanist(
                    fontSize: 22,
                    color: const Color.fromRGBO(30, 35, 44, 1),
                    fontWeight: FontWeight.w700
                  ),
          decoration: InputDecoration(
            border: OutlineInputBorder(
              borderRadius: BorderRadius.circular(10),
              borderSide: const BorderSide(color: Colors.white),
            ),
            focusedBorder: const OutlineInputBorder(
              borderSide: BorderSide(color: Color(0xff35C2C1), width: 0),
            ),
            enabledBorder: const OutlineInputBorder(
                    borderSide: BorderSide(
                      color: Color(0xffDADADA),
                      width: 0,

                    )
                  ),


          ),

        ),
      ),
    );
  }
}
