import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:tanzeem/constants/colors.dart';

class TanzeemButton extends StatelessWidget {
  const TanzeemButton({Key? key, required this.color, required this.text, required this.onPressed}) : super(key: key);

  final Color color;
  final String text;
  final void Function() onPressed;

  @override
  Widget build(BuildContext context) {
    double height = MediaQuery.of(context).size.height;
    double width = MediaQuery.of(context).size.width;
    return Container(
      width: width*0.85,
          height: height * 0.06,
      margin: const EdgeInsets.all(20),
      decoration: BoxDecoration(
        color:  kPrimaryColor,
        borderRadius: BorderRadius.circular(8),
      ),
      child: MaterialButton(
        onPressed: onPressed,
        child: Text(text,
            style: GoogleFonts.urbanist(
                  fontSize: 15,
                  color:  Colors.white,
                  fontWeight: FontWeight.w600
                ),),
      ),
    );
  }
}
