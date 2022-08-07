import 'package:flutter/material.dart';

class ReminderIiem extends StatelessWidget {
  final Size size;
  final String img;
  final String title;
  final String subtitle;
  const ReminderIiem({
    Key? key,
    required this.img,
    required this.size,
    required this.subtitle,
    required this.title,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 0,
      margin: const EdgeInsets.symmetric(vertical: 7),
      child: ListTile(
        leading: Image.asset(img),
        title: Text(
          title,
          style: TextStyle(
              fontWeight: FontWeight.w800, fontSize: size.shortestSide * .05),
        ),
        subtitle: Text(subtitle),
      ),
    );
  }
}
