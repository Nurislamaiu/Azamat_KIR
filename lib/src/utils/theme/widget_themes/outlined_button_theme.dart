import 'package:flutter/material.dart';

import '../../../constans/color_strings.dart';
import '../../../constans/sizes.dart';

class TOutlinedButtonTheme {
  TOutlinedButtonTheme._();

  /*-- Light Theme --*/
  static final lightOutlinedButtonTheme = OutlinedButtonThemeData(
    style: OutlinedButton.styleFrom(
        shape: const RoundedRectangleBorder(borderRadius: BorderRadius.all(Radius.circular(12.0))),
        foregroundColor: tSecondaryColor,
        side: BorderSide(color: tSecondaryColor),
        padding: const EdgeInsets.symmetric(vertical: 16.0)),
  );

  /*-- Dark Theme --*/
  static final darkOutlinedButtonTheme = OutlinedButtonThemeData(
    style: OutlinedButton.styleFrom(
        shape: RoundedRectangleBorder(),
        foregroundColor: tWhiteColor,
        side: BorderSide(color: tWhiteColor),
        padding: EdgeInsets.symmetric(vertical: tButtonHeight)),
  );
}
