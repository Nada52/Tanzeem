import 'package:flutter/material.dart';
import 'package:tanzeem/constants/colors.dart';
import 'package:tanzeem/widgets/otp_text_form_field.dart';
import 'package:tanzeem/widgets/otp_verification_row.dart';
import 'package:tanzeem/widgets/tanzeem_button.dart';
import 'package:tanzeem/widgets/tanzeem_text_form_field.dart';

class HomeView extends StatelessWidget {
  const HomeView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(10.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            TanzeemButton(
              color: kPrimaryColor,
              text: 'Register',
              onPressed: (){
                print('Registered Successfully');
              },
            ),
             TanzeemTextFormField(
              hintText: 'Input',
              keyboardType: TextInputType.emailAddress,
              controller: TextEditingController(),
              isPassword: false,
              validator: (value) {

              },
            ),
            const SizedBox(height: 20),
            const OtpVerificationRow(),
            TanzeemTextFormField(
              hintText: 'Password',
              keyboardType: TextInputType.emailAddress,
              controller: TextEditingController(),
              suffixIcon: const Icon(Icons.visibility),
              isPassword: true,
              validator: (value) {

              },
            ),

          ],
        ),
      ),
    );
  }
}
