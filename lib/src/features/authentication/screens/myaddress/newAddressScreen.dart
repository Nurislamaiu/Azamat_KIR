import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:get/get.dart';
import 'package:kirazamat/src/constans/color_strings.dart';
import 'package:kirazamat/src/features/authentication/screens/myaddress/widgets/myAddressCityInput.dart';
import 'package:kirazamat/src/features/authentication/screens/myaddress/widgets/myAddressPhoneInput.dart';
import 'package:kirazamat/src/features/authentication/screens/myaddress/widgets/typeAddressMenu.dart';
import 'package:kirazamat/src/features/authentication/screens/profile/profile_screen.dart';

import '../../../../constans/text_strings.dart';
import '../widget/navbar/navbar.dart';

class NewAdressScreen extends StatelessWidget {
  const NewAdressScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      floatingActionButton: floatingActionButton(),
      bottomNavigationBar: bottomNavigatorBar(),
      resizeToAvoidBottomInset: false,
      backgroundColor: tDefaultColor,
      appBar: AppBar(
        backgroundColor: tWhiteColor,
        leading: BackButton(onPressed: () => Get.to(ProfileScreen())),
      ),
      body: Column(
        children: [
          Container(
              color: tWhiteColor,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 15),
                    child: Text(tAddNewAddress,
                        style: Theme.of(context).textTheme.displayLarge,
                        textAlign: TextAlign.start),
                  ),
                  CityInput(),
                ],
              )),
          PhoneInput(),
          TypeAddressMenu(),
        ],
      ),
    );
  }
}

