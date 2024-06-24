import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:kirazamat/src/features/authentication/models/cart_model.dart';
import 'package:kirazamat/src/features/authentication/screens/cardScreen/kilem/kilem_screen.dart';
import 'package:kirazamat/src/utils/theme/theme.dart';
import 'package:provider/provider.dart';

void main() async {
  runApp(const KIR());
}

class KIR extends StatelessWidget {
  const KIR({super.key});

  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(create: (context)=>CartModel(),
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        theme: TAppTheme.lightTheme,
        darkTheme: TAppTheme.darkTheme,
        themeMode: ThemeMode.dark,
        home: AppHome(),
      ),
    );
  }
}

class AppHome extends StatelessWidget {
  const AppHome({super.key});

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      theme: TAppTheme.lightTheme,
      darkTheme: TAppTheme.darkTheme,
      themeMode: ThemeMode.light,
      debugShowCheckedModeBanner: false,
      home: KilemScreen(),
    );
  }
}
