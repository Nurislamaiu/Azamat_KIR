import 'package:flutter/material.dart';
import 'package:kirazamat/src/constans/color_strings.dart';
import 'package:kirazamat/src/features/authentication/screens/forgotPassword/widgets/forgot_footer_widget.dart';
import 'package:kirazamat/src/features/authentication/screens/forgotPassword/widgets/forgot_form_widget.dart';
import 'package:kirazamat/src/features/authentication/screens/forgotPassword/widgets/forgot_header_widget.dart';

class ForgotScreen extends StatelessWidget {
  const ForgotScreen({Key? key}) : super(key: key);

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
              ForgotHeader(),
              ForgotForm(),
              Expanded(
                child: Container(),
              ),
              ForgotFooter(),
            ],
          ),
        ),
      );
  }
}
