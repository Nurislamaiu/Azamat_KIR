import 'package:flutter/material.dart';

import '../../../../../constans/color_strings.dart';

class tCartSizeText extends StatelessWidget {
  const tCartSizeText(
      {super.key,
        required this.title,
        this.smallSize = false,
        this.maxLines = 1,
        this.textAlign = TextAlign.left});

  final String title;
  final bool smallSize;
  final int maxLines;
  final TextAlign? textAlign;

  @override
  Widget build(BuildContext context) {
    return Text(
      title,
      style: Theme.of(context).textTheme.titleSmall?.copyWith(color: tCartTextColor),
      overflow: TextOverflow.ellipsis,
      maxLines: maxLines,
      textAlign: textAlign,
    );
  }
}