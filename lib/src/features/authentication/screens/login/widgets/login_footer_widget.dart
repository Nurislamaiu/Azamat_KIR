import 'package:flutter/material.dart';
import 'package:kirazamat/src/constans/color_strings.dart';
import 'package:kirazamat/src/features/authentication/screens/signup/signup_screen.dart';

import '../../../../../constans/image_strings.dart';
import '../../../../../constans/text_strings.dart';

class LoginFooter extends StatelessWidget {
  const LoginFooter({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      children: [
        Text(tAlreadyHaveAnAccount),
        TextButton(
          onPressed: () {
            Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => SignUpScreen()),
            );

          },
          child: Text(
            tAlreadyAnAccount,
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
