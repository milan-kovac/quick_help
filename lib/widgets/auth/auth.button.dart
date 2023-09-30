import 'package:flutter/material.dart';
import '../../utils/app.color.utils.dart';

class AuthButton extends StatelessWidget {
  final String text;
  const AuthButton({super.key, required this.text});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 55,
      decoration: BoxDecoration(
        gradient: const LinearGradient(
          begin: Alignment.centerLeft,
          end: Alignment.centerRight,
          colors: [darkOrange, classicOrange, faddedOrange],
        ),
        borderRadius: BorderRadius.circular(10),
      ),
      child: Center(
        child: Text(
          text,
          style: const TextStyle(color: winterColor, fontSize: 20, fontWeight: FontWeight.bold),
        ),
      ),
    );
  }
}
