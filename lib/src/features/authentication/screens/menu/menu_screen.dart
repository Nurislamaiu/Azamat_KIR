import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:kirazamat/src/constans/color_strings.dart';
import '../../../../constans/image_strings.dart';
import '../../../../constans/text_strings.dart';
import '../cardScreen/kilem/kilem_screen.dart';
import '../widget/appbar/appbar_widgets.dart';
import '../widget/image/rounded_image.dart';
import '../widget/navbar/navbar.dart';

class MenuScreen extends StatelessWidget {
  const MenuScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      floatingActionButton: floatingActionButton(),
      bottomNavigationBar: bottomNavigatorBar(),
      resizeToAvoidBottomInset: false,
      backgroundColor: tWhiteColor,
      body: SingleChildScrollView(
        child: Column(
          children: [
            AppBarWidget(),
            Column(
              crossAxisAlignment: CrossAxisAlignment.end,
              children: [
                TRoundedImage(imageUrl: tCardImage1, title: tCardImageTitle1),
                TRoundedImage(imageUrl: tCardImage2, title: tCardImageTitle2, onPressed: ()=> Get.to(KilemScreen()),),
                TRoundedImage(imageUrl: tCardImage3, title: tCardImageTitle3),
                TRoundedImage(imageUrl: tCardImage4, title: tCardImageTitle4),
                TRoundedImage(imageUrl: tCardImage5, title: tCardImageTitle5),
                TRoundedImage(imageUrl: tCardImage6, title: tCardImageTitle6),
              ],
            )
          ],
        ),
      ),
    );
  }
}
