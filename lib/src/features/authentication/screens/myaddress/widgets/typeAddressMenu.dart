import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:iconsax/iconsax.dart';
import 'package:kirazamat/src/features/authentication/screens/myaddress/screens/flatScreen/flatScreen.dart';
import 'package:kirazamat/src/features/authentication/screens/myaddress/screens/houseScreen/houseScreen.dart';
import 'package:kirazamat/src/features/authentication/screens/myaddress/screens/officeScreen/officeScreen.dart';

import '../../../../../constans/color_strings.dart';
import '../../../../../constans/text_strings.dart';

class TypeAddressMenu extends StatelessWidget {
  const TypeAddressMenu({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 15),
      child: Container(
        padding: EdgeInsets.symmetric(vertical: 10),
        decoration: BoxDecoration(
          color: tWhiteColor,
          borderRadius: BorderRadius.circular(12),
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 10.0),
              child: Text(tTypeOfLocation,
                  style: Theme.of(context).textTheme.titleLarge),
            ),
            Padding(
              padding: const EdgeInsets.all(10.0),
              child: Container(
                decoration: BoxDecoration(
                    border: Border.all(color: tButtonColor, width: 1),
                    borderRadius: BorderRadius.circular(12)),
                child: Padding(
                  padding: const EdgeInsets.symmetric(vertical: 10),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      GestureDetector(
                        onTap: ()=> Get.to(FlatScreen()),
                        child: Padding(
                          padding:
                          const EdgeInsets.symmetric(horizontal: 10),
                          child: Container(
                            width: double.infinity,
                            color: tWhiteColor,
                            child: Row(
                              children: [
                                Icon(
                                  Iconsax.copy,
                                  color: tButtonColor,
                                ),
                                const SizedBox(width: 15),
                                Text(tFlat,
                                    style: Theme.of(context)
                                        .textTheme
                                        .titleLarge),
                              ],
                            ),
                          ),
                        ),
                      ),
                      Divider(
                        indent: 30,
                        endIndent: 30,
                      ),
                      GestureDetector(
                        onTap: ()=>Get.to(HouseScreen()),
                        child: Padding(
                          padding:
                          const EdgeInsets.symmetric(horizontal: 10),
                          child: Container(
                            width: double.infinity,
                            color: tWhiteColor,
                            child: Row(
                              children: [
                                Icon(
                                  Iconsax.copy,
                                  color: tButtonColor,
                                ),
                                const SizedBox(width: 15),
                                Text(tHouse,
                                    style: Theme.of(context)
                                        .textTheme
                                        .titleLarge),
                              ],
                            ),
                          ),
                        ),
                      ),
                      Divider(
                        indent: 30,
                        endIndent: 30,
                      ),
                      GestureDetector(
                        onTap: ()=> Get.to(OfficeScreen()),
                        child: Padding(
                          padding:
                          const EdgeInsets.symmetric(horizontal: 10),
                          child: Container(
                            width: double.infinity,
                            color: tWhiteColor,
                            child: Row(
                              children: [
                                Icon(
                                  Iconsax.copy,
                                  color: tButtonColor,
                                ),
                                const SizedBox(width: 15),
                                Text(tOffice,
                                    style: Theme.of(context)
                                        .textTheme
                                        .titleLarge),
                              ],
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
