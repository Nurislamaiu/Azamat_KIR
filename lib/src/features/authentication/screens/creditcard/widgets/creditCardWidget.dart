import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

import '../../../../../constans/color_strings.dart';
import '../../../../../constans/text_strings.dart';

class CreditCardWidget extends StatelessWidget {
  const CreditCardWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(15.0),
      child: Container(
        decoration: BoxDecoration(
            color: tButtonColor, borderRadius: BorderRadius.circular(12)),
        child: Padding(
          padding: const EdgeInsets.all(10.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.end,
            children: [
              Text(tCard, style: Theme.of(context).textTheme.labelMedium),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Padding(
                    padding: const EdgeInsets.all(5),
                    child: Text(tCardNumber,
                        style: Theme.of(context).textTheme.labelSmall),
                  ),
                  SizedBox(width: double.infinity, child: BankCardForm())
                ],
              ),
              Row(
                children: [
                  Expanded(
                    flex: 1,
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Padding(
                          padding: const EdgeInsets.all(5),
                          child: Text(tValidityPeriod,
                              style:
                              Theme.of(context).textTheme.labelSmall),
                        ),
                        ExpiryDateForm()
                      ],
                    ),
                  ),
                  const SizedBox(width: 20),
                  Expanded(
                    flex: 1,
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Padding(
                          padding: const EdgeInsets.all(5),
                          child: Text(tCVV,
                              style:
                              Theme.of(context).textTheme.labelSmall),
                        ),
                        CVVForm()
                      ],
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class CVVForm extends StatefulWidget {
  @override
  _CVVFormState createState() => _CVVFormState();
}

class _CVVFormState extends State<CVVForm> {
  final _formKey = GlobalKey<FormState>();
  final _cvvController = TextEditingController();
  bool _isObscured = true;

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
          color: tWhiteColor, borderRadius: BorderRadius.circular(5)),
      child: Form(
        key: _formKey,
        child: Padding(
          padding: const EdgeInsets.only(left: 10),
          child: TextFormField(
            style: TextStyle(
                fontSize: 12, color: tDarkColor, fontWeight: FontWeight.w900),
            controller: _cvvController,
            decoration: InputDecoration(
                hintText: 'XXX',
                hintStyle: TextStyle(fontSize: 12, fontWeight: FontWeight.w300),
                suffixIcon: IconButton(
                  icon: _isObscured ? Icon(Icons.visibility_off) : Icon(Icons.visibility),
                  onPressed: () {
                    setState(() {
                      _isObscured = !_isObscured;
                    });
                  },
                ),
                contentPadding: EdgeInsets.symmetric(vertical: 15.0)),
            keyboardType: TextInputType.number,
            inputFormatters: [
              FilteringTextInputFormatter.digitsOnly,
              LengthLimitingTextInputFormatter(3),
            ],
            obscureText: _isObscured,
            validator: (value) {
              if (value == null || value.isEmpty) {
                return 'Please enter CVV';
              } else if (value.length != 3) {
                return 'CVV must be 3 digits';
              }
              return null;
            },
          ),
        ),
      ),
    );
  }
}

class ExpiryDateForm extends StatefulWidget {
  @override
  _ExpiryDateFormState createState() => _ExpiryDateFormState();
}

class _ExpiryDateFormState extends State<ExpiryDateForm> {
  final _formKey = GlobalKey<FormState>();
  final _expiryDateController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
          color: tWhiteColor, borderRadius: BorderRadius.circular(5)),
      child: Form(
        key: _formKey,
        child: Padding(
          padding: const EdgeInsets.only(left: 10),
          child: TextFormField(
            style: TextStyle(
                fontSize: 12, color: tDarkColor, fontWeight: FontWeight.w900),
            controller: _expiryDateController,
            decoration: InputDecoration(
                hintText: 'MM/YY',
                hintStyle:
                TextStyle(fontSize: 12, fontWeight: FontWeight.w300)),
            keyboardType: TextInputType.number,
            inputFormatters: [
              FilteringTextInputFormatter.digitsOnly,
              LengthLimitingTextInputFormatter(4),
              ExpiryDateInputFormatter(),
            ],
            validator: (value) {
              if (value == null || value.isEmpty) {
                return 'Please enter expiry date';
              } else if (!RegExp(r'^(0[1-9]|1[0-2])\/?([0-9]{2})$')
                  .hasMatch(value)) {
                return 'Invalid expiry date';
              }
              return null;
            },
          ),
        ),
      ),
    );
  }
}

class ExpiryDateInputFormatter extends TextInputFormatter {
  @override
  TextEditingValue formatEditUpdate(
      TextEditingValue oldValue, TextEditingValue newValue) {
    var text = newValue.text;
    if (text.length == 2 && !text.contains('/')) {
      text += '/';
    } else if (text.length > 2 && text[2] != '/') {
      text = text.substring(0, 2) + '/' + text.substring(2);
    } else if (text.length == 2 && oldValue.text.endsWith('/')) {
      text = text.substring(0, 1); // Prevents adding '/' again if deleted
    }

    return newValue.copyWith(
      text: text,
      selection: TextSelection.collapsed(offset: text.length),
    );
  }
}

class BankCardForm extends StatefulWidget {
  @override
  _BankCardFormState createState() => _BankCardFormState();
}

class _BankCardFormState extends State<BankCardForm> {
  final _formKey = GlobalKey<FormState>();
  final _cardNumberController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
          color: tWhiteColor, borderRadius: BorderRadius.circular(5)),
      child: Form(
        key: _formKey,
        child: Padding(
          padding: const EdgeInsets.only(left: 10),
          child: TextFormField(
            style: TextStyle(
                fontSize: 12, color: tDarkColor, fontWeight: FontWeight.w900),
            controller: _cardNumberController,
            decoration: InputDecoration(
                hintText: '0000 0000 0000 0000',
                hintStyle:
                TextStyle(fontSize: 12, fontWeight: FontWeight.w300)),
            keyboardType: TextInputType.number,
            inputFormatters: [
              FilteringTextInputFormatter.digitsOnly,
              LengthLimitingTextInputFormatter(16),
              CardNumberInputFormatter(),
            ],
            validator: (value) {
              if (value == null || value.isEmpty) {
                return 'Please enter your card number';
              } else if (value.replaceAll(' ', '').length != 16) {
                return 'Card number must be 16 digits';
              }
              return null;
            },
          ),
        ),
      ),
    );
  }
}

class CardNumberInputFormatter extends TextInputFormatter {
  @override
  TextEditingValue formatEditUpdate(
      TextEditingValue oldValue, TextEditingValue newValue) {
    final newText = newValue.text;
    final buffer = StringBuffer();
    for (int i = 0; i < newText.length; i++) {
      if (i % 4 == 0 && i != 0) {
        buffer.write(' ');
      }
      buffer.write(newText[i]);
    }

    final string = buffer.toString();
    return newValue.copyWith(
      text: string,
      selection: TextSelection.collapsed(offset: string.length),
    );
  }
}