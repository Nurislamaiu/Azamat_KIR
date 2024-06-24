import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';

import '../../../../../../constans/color_strings.dart';
import '../../../../../../constans/text_strings.dart';
import '../../../widget/navbar/navbar.dart';
import '../../newAddressScreen.dart';
import '../../widgets/myAddressCityInput.dart';

class HouseScreen extends StatelessWidget {
  const HouseScreen({super.key});

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
        leading: BackButton(onPressed: () => Get.to(NewAdressScreen())),
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
          const SizedBox(height: 20),
          Padding(
          padding: const EdgeInsets.all(15.0),
          child: Container(
            decoration: BoxDecoration(
                color: tWhiteColor, borderRadius: BorderRadius.circular(12)),
            child: Column(
              children: [
                Container(
                  width: double.infinity,
                  decoration: BoxDecoration(
                    color: tButtonColor,
                    borderRadius: BorderRadius.circular(12),
                  ),
                  padding: const EdgeInsets.all(10),
                  child: Text(
                    tHouseAddress,
                    style: Theme.of(context)
                        .textTheme
                        .titleLarge
                        ?.copyWith(color: tWhiteColor),
                  ),
                ),
                Container(
                  decoration: BoxDecoration(
                      color: tWhiteColor,
                      borderRadius: BorderRadius.circular(12)),
                  child: Column(
                    children: [
                      Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 15),
                        child: Row(
                          children: [
                            Expanded(
                              flex: 4,
                              child: TextField(
                                style: TextStyle(
                                    fontFamily: 'inter', fontSize: 12),
                                maxLines: 1,
                                decoration: InputDecoration(
                                  labelText: tAddress,
                                  labelStyle: TextStyle(fontSize: 10),
                                ),
                              ),
                            ),
                            SizedBox(width: 15),
                            Expanded(
                              flex: 1,
                              child: TextField(
                                style: TextStyle(
                                    fontFamily: 'inter', fontSize: 12),
                                maxLines: 1,
                                keyboardType: TextInputType.number,
                                decoration: InputDecoration(
                                  labelText: tEntrance,
                                  labelStyle: TextStyle(fontSize: 10),
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 15),
                        child: Row(
                          children: [
                            Expanded(
                              flex: 1,
                              child: TextField(
                                style: TextStyle(
                                    fontFamily: 'inter', fontSize: 12),
                                maxLines: 1,
                                keyboardType: TextInputType.number,
                                decoration: InputDecoration(
                                  labelText: tApartment,
                                  labelStyle: TextStyle(fontSize: 10),
                                ),
                              ),
                            ),
                            Spacer()
                          ],
                        ),
                      ),
                      Padding(
                        padding: EdgeInsets.symmetric(horizontal: 15, vertical: 30),
                        child: Container(
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(12),
                            border: Border.all(color: tButtonColor),
                          ),
                          padding: EdgeInsets.symmetric(horizontal: 5),
                          child: TextField(
                            style:
                            TextStyle(fontFamily: 'inter', fontSize: 12),
                            maxLines: 1,
                            decoration: InputDecoration(
                                labelText: 'Дополнительные инструкции',
                                labelStyle: TextStyle(fontSize: 10),
                                floatingLabelBehavior:
                                FloatingLabelBehavior.never),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ),
          const SizedBox(height: 50),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 30),
            child: SizedBox(
              width: double.infinity,
              child: ElevatedButton(
                onPressed: (){},
                style: ElevatedButton.styleFrom(
                  backgroundColor: tButtonColor,
                  padding: const EdgeInsets.symmetric(vertical: 20),
                ),
                child: Text(tAddNewAddress, style: Theme.of(context).textTheme.displayLarge?.copyWith(color: tWhiteColor, fontSize: 18)),
              ),
            ),
          )
        ],
      ),
    );
  }
}
