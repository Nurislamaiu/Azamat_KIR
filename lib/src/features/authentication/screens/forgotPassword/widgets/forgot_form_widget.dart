import 'package:flutter/material.dart';
import 'package:kirazamat/src/features/authentication/screens/newpassword/newpassword_screen.dart';

import '../../../../../constans/color_strings.dart';
import '../../../../../constans/text_strings.dart';

class ForgotForm extends StatelessWidget {
  const ForgotForm({
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
                    child: Icon(Icons.fingerprint),
                  ),
                  labelText: tEmail,
                  hintText: tEmail,
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
            const SizedBox(height: 16.0),
            SizedBox(
              width: double.infinity,
              child: ElevatedButton(
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => NewPasswordScreen()),
                  );
                },
                child: Text(
                  tNext.toUpperCase(),
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
