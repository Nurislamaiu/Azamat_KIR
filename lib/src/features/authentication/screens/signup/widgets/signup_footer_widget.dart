import 'package:flutter/material.dart';
import 'package:kirazamat/src/constans/color_strings.dart';
import 'package:kirazamat/src/features/authentication/screens/login/login_screen.dart';
import '../../../../../constans/text_strings.dart';

class SignUpFooter extends StatelessWidget {
  const SignUpFooter({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Text(tAlreadyHaveAnAccountSign),
        TextButton(
          onPressed: () {
            Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => LoginScreen()),
            );
          },
          child: Text(
            tSignup,
            style: TextStyle(color: tDarkColor),
          ),
          style: ButtonStyle(
            overlayColor: MaterialStateProperty.all(Colors.transparent),
          ),
        ),
      ],
    );
  }
}
