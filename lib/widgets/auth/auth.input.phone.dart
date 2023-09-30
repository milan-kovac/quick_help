import 'package:flutter/material.dart';
import 'package:intl_phone_number_input/intl_phone_number_input.dart';
import '../../utils/app.color.utils.dart';

class AuthInputPhone extends StatelessWidget {
  const AuthInputPhone({super.key});

  @override
  Widget build(BuildContext context) {
    final TextEditingController controller = TextEditingController();
    String initialCountry = 'RS';
    PhoneNumber number = PhoneNumber(isoCode: 'RS');
    return InternationalPhoneNumberInput(
      onInputChanged: (PhoneNumber number) {
        print(number.phoneNumber);
      },
      onInputValidated: (bool value) {
        print(value);
      },
      selectorConfig: const SelectorConfig(
        selectorType: PhoneInputSelectorType.BOTTOM_SHEET,
      ),
      ignoreBlank: false,
      autoValidateMode: AutovalidateMode.disabled,
      selectorTextStyle: const TextStyle(color: Colors.black),
      initialValue: number,
      textFieldController: controller,
      formatInput: true,
      keyboardType: const TextInputType.numberWithOptions(signed: true, decimal: true),
      inputDecoration: InputDecoration(
        fillColor: faddedWhite,
        labelText: 'Phone',
        border: InputBorder.none,
        prefixIcon: const Icon(
          Icons.phone,
          color: Colors.black,
        ),
        enabledBorder: OutlineInputBorder(
          borderSide: const BorderSide(color: darkOrange, width: 2),
          borderRadius: BorderRadius.circular(10),
        ),
        focusedBorder: OutlineInputBorder(
          borderSide: const BorderSide(color: darkOrange, width: 2),
          borderRadius: BorderRadius.circular(10.0),
        ),
        labelStyle: const TextStyle(color: Colors.black, fontSize: 15),
        hintStyle: const TextStyle(color: darkOrange, fontSize: 18),
      ),
      onSaved: (PhoneNumber number) {
        print('On Saved: $number');
      },
    );
  }
}
