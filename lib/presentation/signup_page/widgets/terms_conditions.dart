import 'package:flutter/material.dart';

class TermsConditionsItem extends StatelessWidget {
  final Function(dynamic val)? onChange;
  final VoidCallback onTapTerms;
  final bool isAgree;
  const TermsConditionsItem(
      {Key? key,
      required this.isAgree,
      required this.onChange,
      required this.onTapTerms})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Checkbox(
          value: isAgree,
          onChanged: (val) {
            onChange!(val);
          },
        ),
        Text.rich(
          TextSpan(
            children: [
              const TextSpan(text: "I have read and agree to the "),
              WidgetSpan(
                child: InkWell(
                  onTap: onTapTerms,
                  child: const Text(
                    "Terms and conditions",
                    style: TextStyle(
                        fontWeight: FontWeight.w700,
                        decoration: TextDecoration.underline,
                        decorationColor: Colors.blue,
                        decorationThickness: 1.5,
                        color: Colors.blue),
                  ),
                ),
              ),
            ],
          ),
        ),
      ],
    );
  }
}
