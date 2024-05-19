import 'package:flutter/material.dart';
import 'package:kirazamat/src/constans/color_strings.dart';
import 'package:kirazamat/src/features/authentication/screens/forgotPassword/forgotPassword.dart';

import '../../../../../constans/image_strings.dart';
import '../../../../../constans/text_strings.dart';

class OtpFooter extends StatelessWidget {
  const OtpFooter({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Text(tDoNotLetter),
        TextButton(
          onPressed: () {
            Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => ForgotScreen()),
            );

          },
          child: Text(
            tSendAgain,
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
