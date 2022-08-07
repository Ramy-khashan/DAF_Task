import 'package:flutter/material.dart';

class TextFieldItem extends StatelessWidget {
  final String lable;
  final Size size;
  final bool isNeedInfo;
  final bool isForgetPassword;
  final bool isPassword;
  
  final VoidCallback? onShowInfo;
  final VoidCallback? onForgetPassword;

  const TextFieldItem({
    Key? key,
    this.isForgetPassword = false,
    this.onForgetPassword,
    this.onShowInfo,
    this.isNeedInfo = false,
    this.isPassword = false,
    required this.lable,
    required this.size,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric( vertical: 5),
      child: TextField(
        obscureText: isPassword,
        decoration: InputDecoration(
            labelText: lable.toUpperCase(),
            labelStyle: const TextStyle(color: Colors.grey),
            border: const UnderlineInputBorder(
              borderSide: BorderSide(color: Colors.grey),
            ),
            focusedBorder: const UnderlineInputBorder(
              borderSide: BorderSide(color: Colors.grey),
            ),
            suffixIcon: isForgetPassword
                ? TextButton(
                    onPressed: onForgetPassword,
                    child: const Text(
                      "Forget Password",
                      style: TextStyle(
                        color: Colors.grey,
                      ),
                    ))
                : isNeedInfo
                    ? IconButton(
                        padding: EdgeInsets.zero,
                        icon: const Icon(Icons.edit_note_outlined),
                        onPressed: onShowInfo,
                      )
                    : const SizedBox.shrink()),
      ),
    );
  }
}
