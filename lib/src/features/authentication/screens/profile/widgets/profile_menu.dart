import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:kirazamat/src/features/authentication/screens/login/login_screen.dart';
import 'package:kirazamat/src/features/authentication/screens/profile/widgets/profile_menu_widget.dart';
import 'package:line_awesome_flutter/line_awesome_flutter.dart';

import '../../../../../constans/color_strings.dart';
import '../../../../../constans/text_strings.dart';
import '../../creditcard/creditCard.dart';
import '../../myaddress/newAddressScreen.dart';
import '../../myaddress/widgets/myaddress_widget.dart';
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
              onPress: ()=> Get.to(CreditCardScreen()),
            ),
            Divider(
              indent: 30,
              endIndent: 30,
            ),
            ProfileMenuWidget(
              title: tMenu3,
              icon: LineAwesomeIcons.location_arrow,
              onPress: () {
                showModalBottomSheet(
                    context: context,
                    backgroundColor: tWhiteColor,
                    isScrollControlled: true,
                    builder: (BuildContext context) {
                      return Padding(
                        padding: const EdgeInsets.symmetric(
                            horizontal: 10, vertical: 50),
                        child: SizedBox(
                          width: double.infinity,
                          height: 300,
                          child: Column(
                            children: [
                              Text(tMenu3,
                                  style:
                                      Theme.of(context).textTheme.displayLarge),
                              Column(
                                children: [
                                  MyAddress(selectedAddress: false),
                                  MyAddress(selectedAddress: true)
                                ],
                              ),
                              Spacer(),
                              Divider(),
                              SizedBox(height: 10),
                              GestureDetector(
                                onTap: () => Get.to(const NewAdressScreen()),
                                child: Container(
                                  color: tWhiteColor,
                                  width: double.infinity,
                                  child: Row(
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceBetween,
                                    children: [
                                      Container(
                                        decoration: BoxDecoration(
                                            color: tWhiteColor,
                                            borderRadius:
                                                BorderRadius.circular(10),
                                            border: Border.all(
                                                color: tButtonColor, width: 1)),
                                        height: 40,
                                        width: 40,
                                        child: Icon(
                                          Icons.add,
                                          color: tButtonColor,
                                        ),
                                      ),
                                      const SizedBox(width: 10),
                                      Text(tAddAddress,
                                          style: Theme.of(context)
                                              .textTheme
                                              .titleLarge),
                                      Spacer()
                                    ],
                                  ),
                                ),
                              )
                            ],
                          ),
                        ),
                      );
                    });
              },
            ),
            Divider(
              indent: 30,
              endIndent: 30,
            ),
            ProfileMenuWidget(
              title: tMenu4,
              icon: LineAwesomeIcons.door_open,
              endIcon: false,
              onPress: () => Get.to(LoginScreen()),
            ),
            SizedBox(height: 20),
          ],
        ),
      ),
    );
  }
}
