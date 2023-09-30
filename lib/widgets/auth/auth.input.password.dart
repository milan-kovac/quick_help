import 'package:flutter/material.dart';
import '../../utils/app.color.utils.dart';

class AuthInputPassword extends StatelessWidget {
  const AuthInputPassword({super.key});

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      decoration: InputDecoration(
        labelText: 'Password',
        hintText: '',
        prefixIcon: const Icon(
          Icons.lock,
          color: Colors.black,
        ),
        enabledBorder: OutlineInputBorder(
          borderSide: const BorderSide(color: darkOrange, width: 2),
          borderRadius: BorderRadius.circular(10.0),
        ),
        focusedBorder: OutlineInputBorder(
          borderSide: BorderSide(color: darkOrange, width: 2),
          borderRadius: BorderRadius.circular(10.0),
        ),
        labelStyle: TextStyle(color: Colors.black, fontSize: 15),
        hintStyle: TextStyle(color: darkOrange),
      ),
      style: TextStyle(fontSize: 16.0, color: Colors.black),
    );
  }
}
