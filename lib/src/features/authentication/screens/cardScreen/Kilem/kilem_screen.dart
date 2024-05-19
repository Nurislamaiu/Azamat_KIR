import 'package:flutter/material.dart';

import '../../widget/appbar/appbar_widgets.dart';
import '../../widget/navbar/navbar.dart';

class KilemScreen extends StatelessWidget {
  const KilemScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      floatingActionButton: floatingActionButton(),
      bottomNavigationBar: bottomNavigatorBar(),
      resizeToAvoidBottomInset: false,
      body: SingleChildScrollView(
        child: Column(
          children: [
            AppBarWidget(),
          ],
        ),
      ),
    );
  }
}
