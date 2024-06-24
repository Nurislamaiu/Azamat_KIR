import 'package:flutter/material.dart';
import '../../../../../constans/text_strings.dart';

class ForgotHeader extends StatelessWidget {
  const ForgotHeader({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {

    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(tForgetPasswordTitle, style: Theme.of(context).textTheme.headlineLarge),
        const SizedBox(height: 10),
        Text(tForgetPasswordSubTitle, style: Theme.of(context).textTheme.headlineSmall),
      ],
    );
  }
}

