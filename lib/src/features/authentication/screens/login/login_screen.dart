import 'package:flutter/material.dart';
import 'package:kirazamat/src/features/authentication/screens/login/widgets/login_footer_widget.dart';
import 'package:kirazamat/src/features/authentication/screens/login/widgets/login_form_widget.dart';
import 'package:kirazamat/src/features/authentication/screens/login/widgets/login_header_widget.dart';
import 'package:kirazamat/src/features/authentication/screens/login/widgets/logn_sign_widget.dart';


class LoginScreen extends StatelessWidget {
  const LoginScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    //Get the size in LoginHeaderWidget()
    return SafeArea(
      child: Scaffold(
        resizeToAvoidBottomInset: false,
        body: Container(
            padding: const EdgeInsets.all(15),
            child: const Column(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                SizedBox(height: 38),
                LoginHeaderWidget(),
                LoginForm(),
                LoginSign(),
                LoginFooter(),
              ],
            ),
          ),
        ),
    );
  }
}