import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:kirazamat/src/features/authentication/screens/menu/menu_screen.dart';
import '../../../../../constans/color_strings.dart';
import '../../deliveryDate/deliveryDateScreen.dart';


class floatingActionButton extends StatelessWidget {
  const floatingActionButton({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 82.0,
      height: 82.0,
      child: FloatingActionButton(
        onPressed: ()=> Get.to(MenuScreen()),
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Image(
            height: 52,
            image: AssetImage('assets/icons/carpet.png'),
          ),
        ),
        backgroundColor: tButtonColor,
        elevation: 10.0,
      ),
    );
  }
}

class bottomNavigatorBar extends StatelessWidget {
  const bottomNavigatorBar({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    ScreenUtil.init(context, designSize: Size(360, 690));
    return BottomAppBar(
      color: Colors.white,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
          IconButton(
            onPressed: () {},
            icon: Image(
              image: AssetImage('assets/icons/homeicon.png'),
              width: ScreenUtil().setWidth(24),
              height: ScreenUtil().setHeight(24),
            ),
          ),
          SizedBox(height: double.infinity),
          IconButton(
            onPressed: ()=> Get.to(DeliveryDateScreen()),
            icon: Image(
              image: AssetImage('assets/icons/shopicon.png'),
              width: ScreenUtil().setWidth(24),
              height: ScreenUtil().setHeight(24),
            ),
          ),
        ],
      ),
    );
  }
}