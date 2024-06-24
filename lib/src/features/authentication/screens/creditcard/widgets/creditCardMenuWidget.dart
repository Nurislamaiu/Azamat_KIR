import 'package:flutter/material.dart';

import '../../../../../constans/color_strings.dart';
import '../../../../../constans/text_strings.dart';

class CreditCardMenuWidget extends StatelessWidget {
  const CreditCardMenuWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(15.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(tOptionCard,
              style: Theme.of(context).textTheme.displayLarge),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(tUseByDefault,
                  style: Theme.of(context).textTheme.titleLarge),
              DefaultCardSwitch()
            ],
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(tCardName,
                  style: Theme.of(context).textTheme.titleLarge),
              GestureDetector(
                onTap: () {
                  showModalBottomSheet(
                    context: context,
                    builder: (BuildContext context) {
                      return Container(
                        color: tWhiteColor,
                        height: 400,
                        padding: EdgeInsets.all(20),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text("Имя карты", style: Theme.of(context).textTheme.titleLarge?.copyWith(fontWeight: FontWeight.w900, color: tDarkColor)),
                            const SizedBox(height: 10),
                            Text("Назовите вашу карту, для того, чтобы ее \nбыло легче идентифицировать", style: Theme.of(context).textTheme.titleSmall),
                            const SizedBox(height: 10),
                            TextFormField(
                              style: TextStyle(
                                  color: tDarkColor,
                                  fontWeight: FontWeight.w900,
                                  fontSize: 12,
                                  fontFamily: 'italic'
                              ),
                              decoration: InputDecoration(
                                labelText: 'Название карты',
                                border: OutlineInputBorder(
                                  borderRadius: BorderRadius.circular(12),
                                ),
                              ),
                            ),
                            SizedBox(height: 20),
                            Row(
                              mainAxisAlignment:
                              MainAxisAlignment.spaceAround,
                              children: [
                                ElevatedButton(
                                  onPressed: (){
                                    Navigator.of(context).pop();
                                  },
                                  child: Text('Отмена'),
                                ),
                                ElevatedButton(
                                  onPressed: () {
                                    Navigator.of(context).pop();
                                  },
                                  child: Text('Готово'),
                                ),
                              ],
                            ),
                          ],
                        ),
                      );
                    },
                  );
                },
                child: Icon(Icons.keyboard_arrow_right,
                    color: tButtonColor, size: 30),
              ),
            ],
          ),
        ],
      ),
    );
  }
}

class DefaultCardSwitch extends StatefulWidget {
  @override
  _DefaultCardSwitchState createState() => _DefaultCardSwitchState();
}

class _DefaultCardSwitchState extends State<DefaultCardSwitch> {
  bool _isDefaultCard = false;

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Switch(
          inactiveThumbColor: tButtonColor,
          activeColor: tButtonColor,
          value: _isDefaultCard,
          onChanged: (value) {
            setState(() {
              _isDefaultCard = value;
            });
          },
        ),
      ],
    );
  }
}
