import 'package:daf_task/constant/colors.dart';
import 'package:flutter/material.dart';

class ButtonItem extends StatelessWidget {
  final Size size;
  final String head;
  final VoidCallback onTap;
  const ButtonItem(
      {Key? key, required this.head, required this.onTap, required this.size})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ClipRRect(
      borderRadius: BorderRadius.circular(10),
      child: ElevatedButton(
        onPressed: onTap,
        child: Text(
          head,
          style: TextStyle(fontSize: size.shortestSide * .045),
        ),
        style: ButtonStyle(
          padding: MaterialStateProperty.all(
              EdgeInsets.symmetric(vertical: size.longestSide * .023)),
          backgroundColor: MaterialStateProperty.all(OwnColor.mainColor),
        ),
      ),
    );
  }
}
