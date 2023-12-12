import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:tanzeem/constants/colors.dart';
import 'package:tanzeem/widgets/otp_text_form_field.dart';
import 'package:tanzeem/widgets/otp_verification_row.dart';
import 'package:tanzeem/widgets/tanzeem_button.dart';
import 'package:tanzeem/widgets/tanzeem_text_form_field.dart';

class HomeView extends StatefulWidget {
  const HomeView({Key? key}) : super(key: key);

  @override
  State<HomeView> createState() => _HomeViewState();
}

class _HomeViewState extends State<HomeView> {
  bool isSecure = false;
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
              onPressed: () {
                print('Registered Successfully');
              },
            ),
            TanzeemTextFormField(
              hint: 'Input',
              inputType: TextInputType.emailAddress,
              controller: TextEditingController(),
              validator: (value) {}, obscureText: false,
            ),
            const SizedBox(height: 20),
            const OtpVerificationRow(),
            TanzeemTextFormField(
              hint: 'Password',
              inputType: TextInputType.visiblePassword,
                  obscureText: isSecure,
              controller: TextEditingController(),
              widget: IconButton(
                icon: isSecure?const Icon(Icons.visibility_off,size: 20,):  SvgPicture.asset(
                    "assets/icons/eye.svg",
                    height: 20,
                    colorFilter: const ColorFilter.mode(
                        Color.fromRGBO(106, 112, 124, 1),
                        BlendMode.srcIn),
                  ),
                onPressed: () {
                  setState(() {
                    isSecure = !isSecure;
                  });
                },
              ),
              validator: (value) {},
            ),
          ],
        ),
      ),
    );
  }
}
