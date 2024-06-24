import 'package:flutter/material.dart';
import '../../../../../constans/text_strings.dart';

class NewPassworHeaderdWidget extends StatelessWidget {
  const NewPassworHeaderdWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {

    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(tNewPasswordTitle, style: Theme.of(context).textTheme.headlineLarge),
        const SizedBox(height: 10),
        Text(tNewPasswordSubTitle, style: Theme.of(context).textTheme.headlineSmall),
      ],
    );
  }
}

