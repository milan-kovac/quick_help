import 'package:flutter/material.dart';
import 'package:quick_help/pages/auth.new.account.page.dart';
import '../widgets/auth/auth.button.dart';
import '../widgets/auth/auth.forgot.password.dart';
import '../widgets/auth/auth.input.email.dart';
import '../widgets/auth/auth.input.password.dart';
import '../widgets/auth/auth.bottom.text.dart';
import '../widgets/auth/auth.title.dart';

class AuthLoginPage extends StatelessWidget {
  const AuthLoginPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Container(margin: const EdgeInsets.only(top: 20), child: const AuthTitle(text: 'Wellcome')),
              Container(
                width: 350,
                margin: const EdgeInsets.only(top: 40),
                child: Form(
                  child: Column(
                    children: [
                      Container(margin: const EdgeInsets.only(top: 20), child: AuthInputEmail()),
                      Container(margin: const EdgeInsets.only(top: 20), child: AuthInputPassword()),
                      Container(alignment: Alignment.centerLeft, margin: const EdgeInsets.only(top: 12), child: AuthForgotPassword()),
                      Container(margin: const EdgeInsets.only(top: 25), width: double.infinity, child: AuthButton(text: 'LOGIN')),
                      Container(
                          margin: const EdgeInsets.only(top: 60),
                          child: const AuthBottomText(
                            text: 'New User? Create Account',
                            goToPage: AuthNewAccountPage(),
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
