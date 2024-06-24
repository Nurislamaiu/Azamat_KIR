import 'package:flutter/material.dart';
import 'package:kirazamat/src/constans/color_strings.dart';
import 'package:kirazamat/src/features/authentication/screens/signup/widgets/signup_footer_widget.dart';
import 'package:kirazamat/src/features/authentication/screens/signup/widgets/signup_form_widget.dart';
import 'package:kirazamat/src/features/authentication/screens/signup/widgets/signup_header_widget.dart';

class SignUpScreen extends StatelessWidget {
  const SignUpScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: tWhiteColor,
        resizeToAvoidBottomInset: false,
        body: Container(
          padding: const EdgeInsets.all(15),
          child: Column(
            children: [
              const SizedBox(height: 38.0),
              SignUpHeaderWidget(),
              SignUpForm(),
              Expanded(
                child: Container(), // This container occupies remaining space
              ),
              SignUpFooter(),
            ],
          ),
        ),
    );
  }
}
