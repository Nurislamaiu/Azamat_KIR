import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';

import 'appbar.dart';

class AppBarWidget extends StatelessWidget {
  const AppBarWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return TAppBar(
      title: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text("Адрес",
              style: Theme.of(context).textTheme.labelMedium),
          Text("Казакстан, Астана", style: Theme.of(context).textTheme.titleSmall),
        ],
      ),
      actions: [
        Container(
          decoration: BoxDecoration(
            border: Border.all(
              color: Color(0xFFE0E0E0),
              width: 1.0,
            ),
            borderRadius: BorderRadius.circular(8.0),
          ),
          constraints: BoxConstraints(maxWidth: 40.0, maxHeight: 40.0),
          child: IconButton(
            onPressed: () {},
            icon: Icon(Iconsax.shopping_bag),
            iconSize: 24.0,
          ),
        ),
        SizedBox(width: 5),
        Container(
          decoration: BoxDecoration(
            border: Border.all(
              color: Color(0xFFE0E0E0),
              width: 1.0,
            ),
            borderRadius: BorderRadius.circular(8.0),
          ),
          constraints: BoxConstraints(maxWidth: 40.0, maxHeight: 40.0),
          child: IconButton(
            onPressed: () {},
            icon: Icon(Iconsax.user),
            iconSize: 24.0,
          ),
        ),

      ],
    );
  }
}

class TPrimaryHeaderContainer extends StatelessWidget {
  const TPrimaryHeaderContainer({
    super.key,
    required this.child,
  });

  final Widget child;

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.red,
      padding: const EdgeInsets.only(bottom: 0),
    );
  }
}
