import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_otp_text_field/flutter_otp_text_field.dart';
import 'package:kirazamat/src/features/authentication/screens/otp/widgets/newpassword_footer_widget.dart';
import 'package:kirazamat/src/features/authentication/screens/otp/widgets/otp_header_widget.dart';

import '../../../../constans/color_strings.dart';
import '../../../../constans/text_strings.dart';

class OTPScreen extends StatelessWidget {
  const OTPScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        resizeToAvoidBottomInset: false,
        body: Container(
          padding: const EdgeInsets.all(15),
          child: Column(
            children: [
              const SizedBox(height: 38.0),
              OtpHeaderWidget(),
              SizedBox(height: 30),
              Column(
                children: [
                  OtpTextField(
                    numberOfFields: 4,
                  ),
                  const SizedBox(height: 16.0),
                  SizedBox(
                      width: double.infinity,
                      child: ElevatedButton(
                          onPressed: () {}, child: Text(tConfrim)))
                ],
              ),
              Expanded(
                child: Container(), // This container occupies remaining space
              ),
              OtpFooter(),
            ],
          ),
        ),
      ),
    );
  }
}
