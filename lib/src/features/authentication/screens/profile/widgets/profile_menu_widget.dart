import 'package:flutter/material.dart';
import 'package:line_awesome_flutter/line_awesome_flutter.dart';

import '../../../../../constans/color_strings.dart';

class ProfileMenuWidget extends StatelessWidget {
  const ProfileMenuWidget({
    super.key,
    required this.title,
    required this.icon,
    required this.onPress,
    this.endIcon = true,
    this.textColor,
  });

  final String title;
  final IconData icon;
  final VoidCallback onPress;
  final bool endIcon;
  final Color? textColor;

  @override
  Widget build(BuildContext context) {
    return Container(
      child: ListTile(
        onTap: onPress,
        leading: Container(
            width: 30,
            height: 30,
            decoration: BoxDecoration(borderRadius: BorderRadius.circular(100)),
            child: Icon(
              icon,
              color: tButtonColor,
            )),
        title: Text(title,
            style:
                Theme.of(context).textTheme.titleLarge?.apply(color: textColor)),
        trailing: endIcon
            ? Container(
                width: 30,
                height: 30,
                child: Icon(
                  LineAwesomeIcons.angle_right,
                  color: Colors.black87.withOpacity(0.3),
                ))
            : null,
      ),
    );
  }
}
