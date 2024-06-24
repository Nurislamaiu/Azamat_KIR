import 'package:flutter/material.dart';
import 'package:toggle_switch/toggle_switch.dart';

import '../../../../../../constans/color_strings.dart';
import '../../../../../../constans/text_strings.dart';

class KielmButtonCustom extends StatefulWidget {
  const KielmButtonCustom({super.key});

  @override
  State<KielmButtonCustom> createState() => _ButtonCustomState();
}

class _ButtonCustomState extends State<KielmButtonCustom> {
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(5),
      decoration: BoxDecoration(
        color: tToggleSwitchColor,
        borderRadius: BorderRadius.circular(12),
        boxShadow: [
          BoxShadow(
            color: Colors.black.withOpacity(0.2), // Shadow color
            spreadRadius: 2, // Spread radius
            blurRadius: 5, // Blur radius
            offset: Offset(0, 3), // Offset in x and y direction
          ),
        ],
      ),
      child: ToggleSwitch(
        labels: const [
          tToggleSwitchText1,
          tToggleSwitchText2,
        ],
        minWidth: double.infinity,
        minHeight: 30,
        cornerRadius: 12,
        activeBgColor: const [
          tButtonColor
        ],
        inactiveBgColor: tToggleSwitchColor,
      ),
    );
  }
}