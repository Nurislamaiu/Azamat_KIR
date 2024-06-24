import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:iconsax/iconsax.dart';
import 'package:kirazamat/src/constans/color_strings.dart';
import 'package:kirazamat/src/utils/device/device_utility.dart';

class TAppBar extends StatelessWidget implements PreferredSizeWidget {
  const TAppBar(
      {super.key,
      this.title,
      this.leadingIcon,
      this.actions,
      this.leadingOnPressed,
      this.showBackArrow = true});

  final Widget? title;
  final bool showBackArrow;
  final IconData? leadingIcon;
  final List<Widget>? actions;
  final VoidCallback? leadingOnPressed;

  @override
  Widget build(BuildContext context) {
    return AppBar(
        surfaceTintColor: Colors.transparent,
        backgroundColor: tWhiteColor,
        automaticallyImplyLeading: false,
        leading: IconButton(
          onPressed: () {},
          icon: Icon(
            Icons.location_on,
            color: tButtonColor,
            size: 24,
          ),
          highlightColor: Colors.transparent,
          splashColor: Colors.transparent,
        ),
        title: title,
        titleSpacing: 0,
        actions: actions);
  }

  @override
  // TODO: implement preferredSize
  Size get preferredSize => Size.fromHeight(TDeviceUtils.getAppBarHeight());
}
