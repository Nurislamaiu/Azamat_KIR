import 'package:flutter/material.dart';
import 'package:kirazamat/src/constans/color_strings.dart';

import '../../../../../constans/image_strings.dart';
import '../../../../../constans/text_strings.dart';

class LoginSign extends StatelessWidget {
  const LoginSign({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        SizedBox(
          width: double.infinity,
          child: OutlinedButton.icon(
            icon: const Image(image: AssetImage(tGoogleLogoImage), width: 24.0),
            style: ButtonStyle(
              side: MaterialStateProperty.all<BorderSide>(
                const BorderSide(color: Color(0xFFF3F4F6)),
              ),
            ),
            onPressed: () {},
            label: const Text(tSignWithGoogle,style: TextStyle(color: Color(0xff7C82A1))),
          ),
        ),
        const SizedBox(height: 16),
        SizedBox(
          width: double.infinity,
          child: OutlinedButton.icon(
            icon: const Image(image: AssetImage(tFacebookLogoImage), width: 24.0),
            style: ButtonStyle(
              side: MaterialStateProperty.all<BorderSide>(
                const BorderSide(color: Color(0xFFF3F4F6)),
              ),
            ),
            onPressed: () {},
            label: const Text(tSignWithFacebook, style: TextStyle(color: Color(0xff7C82A1)),),
          ),
        ),
        const SizedBox(height: 20),
      ],
    );
  }
}
