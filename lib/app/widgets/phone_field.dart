import 'package:flutter/material.dart';
import 'package:intl_phone_field/intl_phone_field.dart';

class PhoneField extends StatelessWidget {
  const PhoneField({super.key});

  @override
  Widget build(BuildContext context) {
    return IntlPhoneField(
      decoration: const InputDecoration(
        labelText: 'Phone Number',
        border: OutlineInputBorder(
          borderSide: BorderSide(),
        ),
      ),
      languageCode: "en",
      onChanged: (phone) {
        print(phone.completeNumber);
      },
      onCountryChanged: (country) {
        print('Country changed to: ' + country.name);
      },
    );
  }
}
