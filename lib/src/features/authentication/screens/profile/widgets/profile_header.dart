import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:line_awesome_flutter/line_awesome_flutter.dart';

import '../../../../../constans/color_strings.dart';

class ProfileHeader extends StatelessWidget {
  const ProfileHeader({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        children: [
          Stack(
            children: [
              Container(
                decoration: BoxDecoration(
                  border: Border.all(color: tButtonColor,width: 2),
                  borderRadius: BorderRadius.circular(100),
                ),
                child: SizedBox(
                  width: 120,
                  height: 120,
                  child: ClipRRect(
                    borderRadius: BorderRadius.circular(100),
                    child: Image(
                      image: AssetImage("assets/images/madi.jpg"),
                    ),
                  ),
                ),
              ),
              Positioned(
                bottom: 0,
                right: 0,
                child: Container(
                    width: 30,
                    height: 30,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(100),
                        color: tButtonColor),
                    child: Icon(
                      LineAwesomeIcons.alternate_pencil,
                      size: 16,
                      color: tWhiteColor,
                    ),),
              )
            ],
          ),
          const SizedBox(height: 19),
          Text("Madi UX UI", style: Theme.of(context).textTheme.headlineLarge),
          const SizedBox(height: 15),
          Container(
            padding: const EdgeInsets.fromLTRB(25, 7, 25, 7),
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(12),
                color: tProfileColor),
            child: Text("madiuxui@gmail.com",
                style: Theme.of(context).textTheme.titleLarge),
          ),
        ],
      ),
    );
  }
}