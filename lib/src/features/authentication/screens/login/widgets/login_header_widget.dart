import 'package:flutter/material.dart';
import '../../../../../constans/text_strings.dart';

class LoginHeaderWidget extends StatelessWidget {
  const LoginHeaderWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {

    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(tLoginTitle, style: Theme.of(context).textTheme.headlineLarge),
        const SizedBox(height: 10),
        Text(tLoginSubTitle, style: Theme.of(context).textTheme.headlineSmall),
      ],
    );
  }
}

