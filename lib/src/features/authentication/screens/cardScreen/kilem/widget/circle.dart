import 'package:flutter/material.dart';

import '../../../../../../constans/color_strings.dart';
import '../../../../../../constans/image_strings.dart';

class KilemCircle extends StatelessWidget {
  const KilemCircle({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
      builder: (context, constraints) {
        double circleRadius = constraints.maxWidth * 0.06; // Большие круги
        double smallCircleRadius =
            constraints.maxWidth * 0.008; // Маленькие круги
        double spacing =
            constraints.maxWidth * 0.02; // Промежуток между большими кругами
        double iconsize = constraints.maxWidth * 0.08;

        return Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Flexible(
              child: CircleAvatar(
                radius: circleRadius,
                backgroundColor: tButtonColor,
                child: Image.asset(tCircleIconImage1, height: iconsize)
              ),
            ),
            SmallCircle(spacing: spacing, smallCircleRadius: smallCircleRadius),
            LargeCircle(circleRadius: circleRadius, iconData: Icons.shopping_cart_outlined),
            SmallCircle(spacing: spacing, smallCircleRadius: smallCircleRadius),
            LargeCircle(circleRadius: circleRadius, iconData: Icons.calendar_today_outlined),
            SmallCircle(spacing: spacing, smallCircleRadius: smallCircleRadius),
            LargeCircle(circleRadius: circleRadius, iconData: Icons.account_balance_wallet_outlined),
          ],
        );
      },
    );
  }
}

class LargeCircle extends StatelessWidget {
  const LargeCircle({
    super.key,
    required this.circleRadius,
    required this.iconData,
  });

  final double circleRadius;
  final IconData iconData;

  @override
  Widget build(BuildContext context) {
    return Flexible(
      child: CircleAvatar(
        radius: circleRadius,
        backgroundColor: tButtonColor,
        child: Icon(
          iconData,
          color: tWhiteColor.withOpacity(0.7),
        ),
      ),
    );
  }
}

class SmallCircle extends StatelessWidget {
  const SmallCircle({
    super.key,
    required this.spacing,
    required this.smallCircleRadius,
  });

  final double spacing;
  final double smallCircleRadius;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: spacing),
      child: Row(
        children: List.generate(
          3,
          (index) => Padding(
            padding: EdgeInsets.symmetric(horizontal: spacing / 4),
            child: CircleAvatar(
              radius: smallCircleRadius,
              backgroundColor: tButtonColor,
            ),
          ),
        ),
      ),
    );
  }
}
