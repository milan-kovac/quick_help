import 'package:flutter/material.dart';
import 'package:page_transition/page_transition.dart';

goTo(BuildContext context, Widget page, PageTransitionType type, [int duration = 200]) {
  Navigator.push(
    context,
    PageTransition(type: type, child: page, duration: Duration(microseconds: duration)),
  );
}
