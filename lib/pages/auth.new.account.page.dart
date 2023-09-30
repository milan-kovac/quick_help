import 'package:flutter/material.dart';
import 'package:quick_help/pages/auth.login.page.dart';
import '../widgets/auth/auth.button.dart';
import '../widgets/auth/auth.input.email.dart';
import '../widgets/auth/auth.input.password.dart';
import '../widgets/auth/auth.input.phone.dart';
import '../widgets/auth/auth.bottom.text.dart';
import '../widgets/auth/auth.title.dart';

class AuthNewAccountPage extends StatelessWidget {
  const AuthNewAccountPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Container(margin: const EdgeInsets.only(top: 20), child: const AuthTitle(text: 'New account')),
              Container(
                width: 350,
                margin: const EdgeInsets.only(top: 40),
                child: Form(
                  child: Column(
                    children: [
                      Container(margin: const EdgeInsets.only(top: 20), child: AuthInputEmail()),
                      Container(margin: const EdgeInsets.only(top: 20), child: AuthInputPassword()),
                      Container(margin: const EdgeInsets.only(top: 20), child: AuthInputPhone()),
                      Container(margin: const EdgeInsets.only(top: 25), width: double.infinity, child: AuthButton(text: 'Create account')),
                      Container(
                          margin: const EdgeInsets.only(top: 60),
                          child: const AuthBottomText(
                            text: 'Already have account? Login',
                            goToPage: AuthLoginPage(),
                          )),
                    ],
                  ),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
