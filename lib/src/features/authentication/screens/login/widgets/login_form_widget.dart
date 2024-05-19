import 'package:flutter/material.dart';
import 'package:kirazamat/src/features/authentication/screens/forgotPassword/forgotPassword.dart';

import '../../../../../constans/color_strings.dart';
import '../../../../../constans/text_strings.dart';

class LoginForm extends StatelessWidget {
  const LoginForm({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Form(
      child: Container(
        padding: EdgeInsets.symmetric(vertical: 20.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            TextFormField(
              decoration: InputDecoration(
                  prefixIcon: const Padding(
                    padding: EdgeInsets.only(left: 16.0, right: 16.0),
                    child: Icon(Icons.person_outline_outlined),
                  ),
                  filled: true,
                  fillColor: tTextFieldColor,
                  labelText: tEmail,
                  enabledBorder: UnderlineInputBorder(
                    borderSide: const BorderSide(
                      color: tTextFieldColor,
                      width: 1,
                    ),
                    borderRadius: BorderRadius.circular(12),
                  ),
                  contentPadding: const EdgeInsets.symmetric(vertical: 10.0)),
            ),
            const SizedBox(height: 16.0),
            TextFormField(
              decoration: InputDecoration(
                  prefixIcon: const Padding(
                    padding: EdgeInsets.only(left: 16.0, right: 16.0),
                    child: Icon(Icons.fingerprint),
                  ),
                  labelText: tPassword,
                  filled: true,
                  fillColor: tTextFieldColor,
                  enabledBorder: UnderlineInputBorder(
                    borderSide: const BorderSide(
                      color: tTextFieldColor,
                      width: 1,
                    ),
                    borderRadius: BorderRadius.circular(12),
                  ),
                  contentPadding: const EdgeInsets.symmetric(vertical: 10.0)),
            ),
            Align(
              alignment: Alignment.centerRight,
              child: TextButton(
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => ForgotScreen()),
                  );

                },
                child: Text(
                  tForgetPassword,
                  style: TextStyle(color: tGrayColor),
                ),
                style: ButtonStyle(
                  overlayColor: MaterialStateProperty.all(Colors.transparent),
                ),
              ),
            ),
            const SizedBox(height: 16.0),
            SizedBox(
              width: double.infinity,
              child: ElevatedButton(
                onPressed: () {
                },
                child: Text(
                  tLogin.toUpperCase(),
                  style: TextStyle(color: tWhiteColor),
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
