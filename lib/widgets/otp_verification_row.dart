import 'package:flutter/material.dart';
import 'package:tanzeem/widgets/otp_text_form_field.dart';

class OtpVerificationRow extends StatelessWidget {
  const OtpVerificationRow({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: [
        Container(
          width: 60,
          height: 100,
          child: OtpTextFormField(
            hintText: '5',
            controller: TextEditingController(),
            validator: (value) {

            },
          ),
        ),
        Container(
          width: 60,
          height: 100,
          child: OtpTextFormField(
            hintText: '1',
            controller: TextEditingController(),
            validator: (value) {

            },
          ),
        ),
        Container(
          width: 60,
          height: 100,
          child: OtpTextFormField(
            hintText: '0',
            controller: TextEditingController(),
            validator: (value) {

            },
          ),
        ),
        Container(
          width: 60,
          height: 100,
          child: OtpTextFormField(
            hintText: '',
            controller: TextEditingController(),
            validator: (value) {

            },
          ),
        ),
      ],
    );
  }
}
