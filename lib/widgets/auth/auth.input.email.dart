import 'package:flutter/material.dart';
import '../../utils/app.color.utils.dart';

class AuthInputEmail extends StatelessWidget {
  const AuthInputEmail({super.key});

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      decoration: InputDecoration(
        fillColor: faddedWhite,
        labelText: 'Email',
        hintText: '',
        border: InputBorder.none,
        prefixIcon: const Icon(
          Icons.person,
          color: Colors.black,
        ),
        enabledBorder: OutlineInputBorder(
          borderSide: const BorderSide(color: darkOrange, width: 2),
          borderRadius: BorderRadius.circular(10),
        ),
        focusedBorder: OutlineInputBorder(
          borderSide: BorderSide(color: darkOrange, width: 2),
          borderRadius: BorderRadius.circular(10.0),
        ),
        labelStyle: TextStyle(color: Colors.black, fontSize: 15),
        hintStyle: TextStyle(color: darkOrange, fontSize: 18),
      ),
      style: TextStyle(fontSize: 16.0, color: Colors.black, decoration: TextDecoration.none, decorationThickness: 0),
    );
  }
}
