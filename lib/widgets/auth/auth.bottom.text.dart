import 'package:flutter/material.dart';
import 'package:page_transition/page_transition.dart';
import 'package:quick_help/utils/navigator.utils.dart';

class AuthBottomText extends StatelessWidget {
  final String text;
  final Widget goToPage;
  const AuthBottomText({super.key, required this.text, required this.goToPage});

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        goTo(context, goToPage, PageTransitionType.fade, 100);
      },
      child: Text(
        text,
        style: const TextStyle(fontSize: 15, fontWeight: FontWeight.w700),
      ),
    );
  }
}
