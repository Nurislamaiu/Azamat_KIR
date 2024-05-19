import 'package:flutter/material.dart';
import 'package:line_awesome_flutter/line_awesome_flutter.dart';

import '../../../../constans/color_strings.dart';
import '../../../../constans/text_strings.dart';

class UpdateProfileScreen extends StatelessWidget {
  const UpdateProfileScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
          padding: EdgeInsets.all(25),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Stack(
                children: [
                  Container(
                    decoration: BoxDecoration(
                      border: Border.all(color: tButtonColor, width: 2),
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
                        LineAwesomeIcons.camera,
                        size: 16,
                        color: tWhiteColor,
                      ),
                    ),
                  )
                ],
              ),
              const SizedBox(height: 19),
              Form(
                child: Column(
                  children: [
                    TextFormField(
                      decoration: InputDecoration(
                          prefixIcon: const Padding(
                            padding: EdgeInsets.only(left: 16.0, right: 16.0),
                            child: Icon(Icons.fingerprint),
                          ),
                          labelText: tName,
                          hintText: tName,
                          filled: true,
                          fillColor: tTextFieldColor,
                          enabledBorder: UnderlineInputBorder(
                            borderSide: const BorderSide(
                              color: tTextFieldColor,
                              width: 1,
                            ),
                            borderRadius: BorderRadius.circular(12),
                          ),
                          contentPadding:
                              const EdgeInsets.symmetric(vertical: 10.0)),
                    ),
                    SizedBox(height: 15),
                    TextFormField(
                      keyboardType: TextInputType.number,
                      decoration: InputDecoration(
                          prefixIcon: const Padding(
                            padding: EdgeInsets.only(left: 16.0, right: 16.0),
                            child: Icon(Icons.fingerprint),
                          ),
                          labelText: tPhone,
                          hintText: tPhone,
                          filled: true,
                          fillColor: tTextFieldColor,
                          enabledBorder: UnderlineInputBorder(
                            borderSide: const BorderSide(
                              color: tTextFieldColor,
                              width: 1,
                            ),
                            borderRadius: BorderRadius.circular(12),
                          ),
                          contentPadding:
                              const EdgeInsets.symmetric(vertical: 10.0)),
                    ),
                    SizedBox(height: 15),
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
                          contentPadding:
                              const EdgeInsets.symmetric(vertical: 10.0)),
                    ),
                    SizedBox(height: 15),
                    TextFormField(
                      decoration: InputDecoration(
                          prefixIcon: const Padding(
                            padding: EdgeInsets.only(left: 16.0, right: 16.0),
                            child: Icon(Icons.fingerprint),
                          ),
                          labelText: tPassword,
                          hintText: tPassword,
                          filled: true,
                          fillColor: tTextFieldColor,
                          enabledBorder: UnderlineInputBorder(
                            borderSide: const BorderSide(
                              color: tTextFieldColor,
                              width: 1,
                            ),
                            borderRadius: BorderRadius.circular(12),
                          ),
                          contentPadding:
                              const EdgeInsets.symmetric(vertical: 10.0)),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
    );
  }
}
