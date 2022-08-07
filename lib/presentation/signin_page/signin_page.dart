import 'package:daf_task/presentation/signin_page/widgets/have_account_item.dart';
import 'package:daf_task/presentation/signin_page/widgets/social_auth_item.dart';
import 'package:daf_task/shared_widget/head_auth_page.dart';
import 'package:flutter/material.dart';

import '../../shared_widget/button.dart';
import '../../shared_widget/textfield.dart';
import '../home_page/home_page.dart';
import '../signup_page/signup_page.dart';

class SigninScreen extends StatelessWidget {
  const SigninScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return SafeArea(
      child: Scaffold(
        backgroundColor: Colors.white,
        body: Column(
          children: [
            Expanded(
              flex: 3,
              child: HeadAuthItem(size: size),
            ),
            Expanded(
              flex: 9,
              child: SingleChildScrollView(
                padding:
                    const EdgeInsets.symmetric(horizontal: 15, vertical: 5),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.stretch,
                  children: [
                    TextFieldItem(
                      lable: "email address",
                      size: size,
                    ),
                    TextFieldItem(
                      onForgetPassword: () {},
                      isForgetPassword: true,
                      isPassword: true,
                      lable: "password",
                      size: size,
                    ),
                    const SizedBox(height: 10),
                    HaveAccountItem(onTapSignUp: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => const SignUpScreen()));
                    }),
                    SocialAuthItem(onTapFaceBook: () {}, onTapGoogle: () {}),
                    const SizedBox(
                      height: 30,
                    ),
                    ButtonItem(
                      head: "Sign In",
                      onTap: () {
                        Navigator.pushAndRemoveUntil(
                            context,
                            MaterialPageRoute(
                                builder: (context) => const HomePageScreen()),
                            (route) => false);
                      },
                      size: size,
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
