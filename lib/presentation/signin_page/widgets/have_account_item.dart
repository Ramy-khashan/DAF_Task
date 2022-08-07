import 'package:flutter/material.dart';

class HaveAccountItem extends StatelessWidget {
  final VoidCallback onTapSignUp;
  const HaveAccountItem({Key? key,required this.onTapSignUp}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(
        top: 30,
        bottom: 30,
      ),
      child: Center(
        child: Text.rich(
          TextSpan(
            children: [
              const TextSpan(text: "Don't have an account ? "),
              WidgetSpan(
                child: InkWell(
                  onTap: onTapSignUp,
                  child: const Text(
                    "Sign Up",
                    style: TextStyle(
                        fontWeight: FontWeight.w700, color: Colors.blue),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
