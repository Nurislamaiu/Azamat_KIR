import 'package:flutter/material.dart';
import 'package:kirazamat/src/constans/text_strings.dart';
import 'package:kirazamat/src/features/authentication/screens/login/login_screen.dart';

class ForgotFooter extends StatelessWidget {
  const ForgotFooter({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(15.0),
      child: Column(
        children: [
          const Opacity(
            opacity: 0.6,
            child: Text(
              tRememberPassword,
              style: TextStyle(
                fontFamily: 'Readex Pro',
                letterSpacing: 0,
              ),
            ),
          ),
          TextButton(
            onPressed: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => LoginScreen()),
              );
            },
            child: Text(
              tTryAgain,
              style: TextStyle(
                color: Color(0xFF000000),
                fontFamily: 'Readex Pro',
                letterSpacing: 0,
                fontWeight: FontWeight.bold,
              ),
            ),
            style: ButtonStyle(
              overlayColor: MaterialStateProperty.all(Colors.transparent),
            ),
          ),
        ],
      ),
    );
  }
}