import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:iconsax/iconsax.dart';
import 'package:kirazamat/src/constans/text_strings.dart';
import 'package:kirazamat/src/features/authentication/screens/creditcard/widgets/creditCardMenuWidget.dart';
import 'package:kirazamat/src/features/authentication/screens/creditcard/widgets/creditCardWidget.dart';
import '../../../../constans/color_strings.dart';
import '../profile/profile_screen.dart';

class CreditCardScreen extends StatefulWidget {
  const CreditCardScreen({super.key});

  @override
  State<CreditCardScreen> createState() => _CreditCardScreenState();
}

class _CreditCardScreenState extends State<CreditCardScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      backgroundColor: tWhiteColor,
      appBar: AppBar(
        backgroundColor: tWhiteColor,
        leading: BackButton(onPressed: () => Get.to(ProfileScreen())),
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(vertical: 30),
        child: Column(
          children: [
            CreditCardWidget(),
            CreditCardMenuWidget(),
            Spacer(),
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
                  child: Text('Добавить карту', style: Theme.of(context).textTheme.displayLarge?.copyWith(color: tWhiteColor, fontSize: 18)),
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}

