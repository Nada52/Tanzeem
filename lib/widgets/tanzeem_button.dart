import 'package:flutter/material.dart';
import 'package:tanzeem/constants/colors.dart';

class TanzeemButton extends StatelessWidget {
  const TanzeemButton({Key? key, required this.color, required this.text, this.width = 300, required this.onPressed}) : super(key: key);

  final Color color;
  final String text;
  final double width;
  final void Function() onPressed;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 300,
      height: 60,
      margin: const EdgeInsets.all(20),
      decoration: BoxDecoration(
        color:  kPrimaryColor,
        borderRadius: BorderRadius.circular(10),
      ),
      child: MaterialButton(
        onPressed: onPressed,
        child: Text(text,
            style: const TextStyle(
          color: Colors.white,
          fontWeight: FontWeight.bold,
              fontSize: 18,
        )),
      ),
    );
  }
}
