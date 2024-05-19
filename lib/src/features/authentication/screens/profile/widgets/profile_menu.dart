import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:kirazamat/src/features/authentication/screens/profile/widgets/profile_menu_widget.dart';
import 'package:line_awesome_flutter/line_awesome_flutter.dart';

import '../../../../../constans/color_strings.dart';
import '../../../../../constans/text_strings.dart';
import '../update_profile_screen.dart';

class ProfileMenu extends StatelessWidget {
  const ProfileMenu({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(15),
      child: Container(
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(12),
            border: Border.all(color: tButtonColor)),
        child: Column(
          children: [
            SizedBox(height: 20),
            ProfileMenuWidget(
                title: tMenu1,
                icon: LineAwesomeIcons.user_edit,
                onPress: () => Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) => UpdateProfileScreen()))),
            Divider(
              indent: 30,
              endIndent: 30,
            ),
            ProfileMenuWidget(
              title: tMenu2,
              icon: LineAwesomeIcons.credit_card,
              onPress: () {},
            ),
            Divider(
              indent: 30,
              endIndent: 30,
            ),
            ProfileMenuWidget(
              title: tMenu3,
              icon: LineAwesomeIcons.location_arrow,
              onPress: () {},
            ),
            Divider(
              indent: 30,
              endIndent: 30,
            ),
            ProfileMenuWidget(
              title: tMenu4,
              icon: LineAwesomeIcons.door_open,
              endIcon: false,
              onPress: () {},
            ),
            SizedBox(height: 20),
          ],
        ),
      ),
    );
  }
}
