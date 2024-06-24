import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';
import 'package:kirazamat/src/constans/color_strings.dart';
import 'package:kirazamat/src/constans/text_strings.dart';
import '../../../../constans/image_strings.dart';
import '../cardScreen/kilem/widget/circle.dart';
import '../widget/appbar/appbar_widgets.dart';
import '../widget/navbar/navbar.dart';

class ShoppingScreen extends StatelessWidget {
  const ShoppingScreen({Key? key}) : super(key: key);



  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFFE4E8EB),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      floatingActionButton: floatingActionButton(),
      bottomNavigationBar: bottomNavigatorBar(),
      resizeToAvoidBottomInset: false,
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            AppBarWidget(),
            KilemCircle(),
            Padding(
              padding: const EdgeInsets.all(15.0),
              child: Container(
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(12),
                    color: tWhiteColor),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.stretch,
                  children: [
                    Container(
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(12),
                            color: tButtonColor),
                        padding: EdgeInsets.all(10.0),
                        child: Row(
                          children: [
                            Container(
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(100),
                                  color: tWhiteColor,
                                ),
                                child: Icon(
                                  Icons.accessibility,
                                  color: tButtonColor,
                                )),
                            SizedBox(width: 15),
                            Text(tCardImageTitle2,
                                style:
                                    Theme.of(context).textTheme.displayMedium)
                          ],
                        )),
                    Container(
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(12),
                            color: tWhiteColor),
                        padding: EdgeInsets.all(10.0),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Row(
                              children: [
                                Container(
                                  padding: EdgeInsets.all(15),
                                  height: 68,
                                  decoration: BoxDecoration(
                                      color: tShoppingColor,
                                      borderRadius: BorderRadius.circular(12)),
                                  child:
                                      Image(image: AssetImage(tShoppingKilem)),
                                ),
                                SizedBox(width: 20),
                                Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Text('9999',
                                        style: Theme.of(context)
                                            .textTheme
                                            .titleLarge
                                            ?.copyWith(color: tDarkColor)),
                                    Text("Kilem",
                                        style: Theme.of(context)
                                            .textTheme
                                            .titleMedium
                                            ?.copyWith(
                                                fontWeight: FontWeight.w300)),
                                    Text("Type",
                                        style: Theme.of(context)
                                            .textTheme
                                            .titleMedium
                                            ?.copyWith(
                                                fontWeight: FontWeight.w400)),
                                    Text("Type #1",
                                        style: Theme.of(context)
                                            .textTheme
                                            .titleMedium
                                            ?.copyWith(
                                                fontWeight: FontWeight.w300)),
                                    Text("Size",
                                        style: Theme.of(context)
                                            .textTheme
                                            .titleMedium
                                            ?.copyWith(
                                                fontWeight: FontWeight.w400)),
                                    Text("2.2m",
                                        style: Theme.of(context)
                                            .textTheme
                                            .titleMedium
                                            ?.copyWith(
                                                fontWeight: FontWeight.w300)),
                                  ],
                                ),
                              ],
                            ),
                            CustomSpinner()
                          ],
                        )),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class CustomSpinner extends StatefulWidget {
  @override
  _CustomSpinnerState createState() => _CustomSpinnerState();
}

class _CustomSpinnerState extends State<CustomSpinner> {
  int _currentValue = 0;

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: <Widget>[
        GestureDetector(
          onTap: () {
            setState(() {
              if (_currentValue > 0) {
                _currentValue--;
              }
            });
          },
          child: Container(
            height: 20,
            width: 20,
            alignment: Alignment.center,
            decoration: BoxDecoration(
              border: Border.all(color: tButtonColor, width: 1),
              borderRadius: BorderRadius.circular(5),
            ),
            child: Text("-",
                style: Theme.of(context)
                    .textTheme
                    .titleMedium
                    ?.copyWith(fontSize: 12, fontWeight: FontWeight.w400)),
          ),
        ),
        SizedBox(width: 10),
        Text('$_currentValue', style: TextStyle(fontSize: 10)),
        SizedBox(width: 10),
        GestureDetector(
          onTap: () {
            setState(() {
              _currentValue++;
            });
          },
          child: Container(
            height: 20,
            width: 20,
            alignment: Alignment.center,
            decoration: BoxDecoration(
              border: Border.all(color: tButtonColor, width: 1),
              borderRadius: BorderRadius.circular(5),
            ),
            child: Text("+",
                style: Theme.of(context)
                    .textTheme
                    .titleMedium
                    ?.copyWith(fontSize: 12, fontWeight: FontWeight.w400)),
          ),
        ),
      ],
    );
  }
}
