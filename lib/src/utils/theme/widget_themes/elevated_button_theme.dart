import 'package:flutter/material.dart';

import '../../../constans/color_strings.dart';
import '../../../constans/sizes.dart';

class TElevatedButtonTheme{
  TElevatedButtonTheme._();

  /*-- Light Theme --*/
  static final lightElevatedButtonTheme = ElevatedButtonThemeData(
    style: ElevatedButton.styleFrom(
        shape: const RoundedRectangleBorder(borderRadius: BorderRadius.all(Radius.circular(12.0))),
        foregroundColor: tWhiteColor,
        backgroundColor:tButtonColor,),
  );

  /*-- Dark Theme --*/
  static final darkElevatedButtonTheme = ElevatedButtonThemeData(
    style: ElevatedButton.styleFrom(
        shape: RoundedRectangleBorder(),
        foregroundColor: tSecondaryColor,
        backgroundColor: tWhiteColor,
        side: BorderSide(color: tWhiteColor),
        padding:
        EdgeInsets.symmetric(vertical: tButtonHeight)),
  );
}