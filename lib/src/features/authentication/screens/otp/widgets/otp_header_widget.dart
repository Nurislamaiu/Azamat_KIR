import 'package:flutter/material.dart';
import '../../../../../constans/text_strings.dart';

class OtpHeaderWidget extends StatelessWidget {
  const OtpHeaderWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {

    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(tOtpTitle, style: Theme.of(context).textTheme.titleSmall),
        const SizedBox(height: 10),
        Text(tOtpSubTitle, style: Theme.of(context).textTheme.titleMedium),
      ],
    );
  }
}

