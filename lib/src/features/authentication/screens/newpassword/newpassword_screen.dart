import 'package:flutter/material.dart';
import 'package:kirazamat/src/constans/color_strings.dart';
import 'package:kirazamat/src/features/authentication/screens/otp/widgets/newpassword_footer_widget.dart';
import 'package:kirazamat/src/features/authentication/screens/newpassword/widgets/newpassword_form_widget.dart';
import 'package:kirazamat/src/features/authentication/screens/newpassword/widgets/newpassword_header_widget.dart';

class NewPasswordScreen extends StatelessWidget {
  const NewPasswordScreen({Key? key}) : super(key: key);

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
              NewPassworHeaderdWidget(),
              NewPasswordForm(),
              Expanded(
                child: Container(), // This container occupies remaining space
              )
            ],
          ),
        ),
    );
  }
}
