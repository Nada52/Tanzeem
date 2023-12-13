import 'package:flutter/material.dart';
import 'package:tanzeem/widgets/otp_text_form_field.dart';

class OtpVerificationRow extends StatelessWidget {
  const OtpVerificationRow({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: List.generate(4, (index) => OtpTextFormField(
          controller: TextEditingController(),
          validator: (value) {
            return null;
          },
        ),),
    );
  }
}
