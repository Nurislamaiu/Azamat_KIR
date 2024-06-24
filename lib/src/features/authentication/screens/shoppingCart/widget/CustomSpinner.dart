import 'package:flutter/material.dart';

import '../../../../../constans/color_strings.dart';

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