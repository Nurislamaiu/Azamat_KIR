import 'package:flutter/material.dart';

import '../../../../../constans/color_strings.dart';
import '../../../../../constans/text_strings.dart';

class NewPasswordForm extends StatelessWidget {
  const NewPasswordForm({
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
                  labelText: tNewPassword,
                  hintText: tNewPassword,
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
            TextFormField(
              decoration: InputDecoration(
                  prefixIcon: const Padding(
                    padding: EdgeInsets.only(left: 16.0, right: 16.0),
                    child: Icon(Icons.fingerprint),
                  ),
                  labelText: tAgainPassword,
                  hintText: tAgainPassword,
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
                onPressed: () {},
                child: Text(
                  tConfrim.toUpperCase(),
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
