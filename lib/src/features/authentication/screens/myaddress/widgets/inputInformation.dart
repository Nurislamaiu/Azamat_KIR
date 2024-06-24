import 'package:flutter/material.dart';

import '../../../../../constans/color_strings.dart';
import '../../../../../constans/text_strings.dart';

class InputInformation extends StatelessWidget {
  const InputInformation({
    super.key, required this.titleTypeName,
  });

  final String titleTypeName;
  @override
  Widget build(BuildContext context) {
    return Padding(
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
                titleTypeName,
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
                        SizedBox(width: 30),
                        Expanded(
                          flex: 1,
                          child: TextField(
                            style: TextStyle(
                                fontFamily: 'inter', fontSize: 12),
                            maxLines: 1,
                            keyboardType: TextInputType.number,
                            decoration: InputDecoration(
                              labelText: tFloor,
                              labelStyle: TextStyle(fontSize: 10),
                            ),
                          ),
                        ),
                        SizedBox(width: 30),
                        Expanded(
                          flex: 1,
                          child: TextField(
                            style: TextStyle(
                                fontFamily: 'inter', fontSize: 12),
                            maxLines: 1,
                            keyboardType: TextInputType.number,
                            decoration: InputDecoration(
                              labelText: tIntercom,
                              labelStyle: TextStyle(fontSize: 10),
                            ),
                          ),
                        ),
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
    );
  }
}