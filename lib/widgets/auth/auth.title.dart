import 'package:flutter/material.dart';
import '../../utils/app.color.utils.dart';

class AuthTitle extends StatelessWidget {
  final String text;
  const AuthTitle({super.key, required this.text});

  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      style: const TextStyle(fontSize: 40, fontWeight: FontWeight.bold, color: Colors.black),
    );
  }
}
