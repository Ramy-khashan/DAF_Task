import 'package:flutter/material.dart';

class HeadItem extends StatelessWidget {
  final Size size;
  final String head;
  const HeadItem({Key? key, required this.head, required this.size})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(bottom: 8, top: 15),
      child: Text(
        head,
        style: TextStyle(
            fontSize: size.shortestSide * .065, fontWeight: FontWeight.w500),
      ),
    );
  }
}
