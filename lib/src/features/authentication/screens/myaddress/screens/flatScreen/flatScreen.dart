import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';

import '../../../../../../constans/color_strings.dart';
import '../../../../../../constans/text_strings.dart';
import '../../../widget/navbar/navbar.dart';
import '../../newAddressScreen.dart';
import '../../widgets/inputInformation.dart';
import '../../widgets/myAddressCityInput.dart';

class FlatScreen extends StatelessWidget {
  const FlatScreen({super.key});

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
          InputInformation(titleTypeName: tFlatAddress,),
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

