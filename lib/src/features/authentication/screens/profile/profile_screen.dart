import 'dart:ui';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:flutter/widgets.dart';

import 'package:kirazamat/src/features/authentication/screens/profile/widgets/profile_header.dart';
import 'package:kirazamat/src/features/authentication/screens/profile/widgets/profile_menu.dart';
import '../widget/navbar/navbar.dart';

class ProfileScreen extends StatelessWidget {
  const ProfileScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      floatingActionButton: floatingActionButton(),
      bottomNavigationBar: bottomNavigatorBar(),
      resizeToAvoidBottomInset: false,
      body: Container(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            Spacer(),
            ProfileHeader(),
            ProfileMenu(),
            Spacer(),
          ],
        ),
      ),
    );
  }
}


