import 'package:flutter/material.dart';
import '../../../../../constans/text_strings.dart';

class SignUpHeaderWidget extends StatelessWidget {
  const SignUpHeaderWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {

    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(tSignUpTitle, style: Theme.of(context).textTheme.headlineLarge),
        const SizedBox(height: 10),
        Text(tSignUpSubTitle, style: Theme.of(context).textTheme.headlineSmall),
      ],
    );
  }
}

