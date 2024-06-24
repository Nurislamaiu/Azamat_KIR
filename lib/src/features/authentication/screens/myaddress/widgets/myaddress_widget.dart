import 'package:flutter/material.dart';

import '../../../../../constans/color_strings.dart';

class MyAddress extends StatelessWidget {
  const MyAddress({
    super.key, required this.selectedAddress,
  });

  final bool selectedAddress;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 5),
      child: Row(
        children: [
          Container(
              decoration: BoxDecoration(
                  color: tButtonColor,
                  borderRadius: BorderRadius.circular(10)
              ),
              height: 40,
              width: 40,
              child: Icon(selectedAddress? Icons.location_on: Icons.location_off_sharp, color: tWhiteColor,)),
          const SizedBox(width: 10),
          Text("Kabanbai 42, Astana", style: Theme.of(context).textTheme.titleLarge)
        ],
      ),
    );
  }
}