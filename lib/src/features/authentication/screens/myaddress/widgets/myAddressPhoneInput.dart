import 'package:flutter/services.dart';
import 'package:mask_text_input_formatter/mask_text_input_formatter.dart';
import 'package:flutter/material.dart';

import '../../../../../constans/color_strings.dart';
import '../../../../../constans/text_strings.dart';

class PhoneInput extends StatelessWidget {
  final maskFormatter = MaskTextInputFormatter(
      mask: '+7 (###) ###-##-##',
      filter: {"#": RegExp(r'[0-9]')},
      type: MaskAutoCompletionType.lazy);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(15.0),
      child: TextFormField(
        keyboardType: TextInputType.phone,
        style: TextStyle(
          color: tDarkColor,
          fontSize: 14,
          fontFamily: 'Inter',
          fontWeight: FontWeight.w400,
        ),
        inputFormatters: [
          maskFormatter,
          LengthLimitingTextInputFormatter(18), // +7 (777) 777-77-77
        ],
        decoration: InputDecoration(
          labelText: tPhone,
          labelStyle: TextStyle(
            color: tDarkColor,
            fontSize: 11,
            fontFamily: 'Inter',
          ),
          filled: true,
          hintStyle: TextStyle(
            fontSize: 12,
            fontFamily: 'Inter',
          ),
          fillColor: tWhiteColor,
          enabledBorder: OutlineInputBorder(
            borderSide: const BorderSide(
              color: tButtonColor,
              width: 1,
            ),
            borderRadius: BorderRadius.circular(12),
          ),
          focusedBorder: OutlineInputBorder(
            borderSide: const BorderSide(
              color: tButtonColor,
              width: 1,
            ),
            borderRadius: BorderRadius.circular(12),
          ),
          hoverColor: tWhiteColor,
          contentPadding:
          const EdgeInsets.symmetric(vertical: 10.0).copyWith(left: 10.0),
        ),
      ),
    );
  }
}
