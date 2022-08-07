import 'package:flutter/material.dart';

class ViewPriceItem extends StatelessWidget {
  final Size size;
  final String price;
  final Color color;
  final double fontSize;
  const ViewPriceItem({
    Key? key,
    required this.price,
    required this.size,
    required this.color,
    required this.fontSize,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Text.rich(TextSpan(
        children: [
          TextSpan(text: "$price "),
          TextSpan(
              text: "EGP",
              style: TextStyle(
                  fontSize: size.shortestSide * fontSize - .01,
                  fontWeight: FontWeight.w700))
        ],
        style: TextStyle(
            overflow: TextOverflow.ellipsis,
            color: color,
            fontSize: size.shortestSide * fontSize,
            fontWeight: FontWeight.w700)));
  }
}
