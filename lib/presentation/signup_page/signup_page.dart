import 'package:daf_task/presentation/signin_page/signin_page.dart';
import 'package:daf_task/presentation/signup_page/widgets/terms_conditions.dart';
import 'package:daf_task/shared_widget/button.dart';
import 'package:daf_task/shared_widget/head_auth_page.dart';
import 'package:daf_task/shared_widget/textfield.dart';
import 'package:flutter/material.dart';

class SignUpScreen extends StatelessWidget {
  const SignUpScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return SafeArea(
      child: Scaffold(
        backgroundColor: Colors.white,
        extendBodyBehindAppBar: true,
        appBar: AppBar(
          backgroundColor: Colors.transparent,
          elevation: 0,
        ),
        body: Column(
          children: [
            Expanded(flex: 3, child: HeadAuthItem(size: size)),
            Expanded(
              flex: 9,
              child: SingleChildScrollView(
                padding:
                    const EdgeInsets.symmetric(horizontal: 15, vertical: 5),
                child: Column(
                    crossAxisAlignment: CrossAxisAlignment.stretch,
                    children: [
                      TextFieldItem(
                        lable: "name",
                        size: size,
                      ),
                      TextFieldItem(
                        onShowInfo: () {},
                        isNeedInfo: true,
                        lable: "phone number",
                        size: size,
                      ),
                      TextFieldItem(
                        onShowInfo: () {},
                        isNeedInfo: true,
                        lable: "email address",
                        size: size,
                      ),
                      TextFieldItem(
                        onShowInfo: () {},
                        isNeedInfo: true,
                        isPassword: true,
                        lable: "password",
                        size: size,
                      ),
                      TextFieldItem(
                        lable: "address",
                        size: size,
                      ),
                      const SizedBox(
                        height: 25,
                      ),
                      TermsConditionsItem(
                        isAgree: false,
                        onChange: (val) {},
                        onTapTerms: () {},
                      ),
                      const SizedBox(
                        height: 80,
                      ),
                      ButtonItem(
                        head: "Sign Up",
                        onTap: () {
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => const SigninScreen()));
                        },
                        size: size,
                      ),
                    ]),
              ),
            )
          ],
        ),
      ),
    );
  }
}
