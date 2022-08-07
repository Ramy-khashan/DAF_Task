import 'dart:math' as math;

import 'package:daf_task/constant/colors.dart';
import 'package:flutter/material.dart';

class HeadAuthItem extends StatelessWidget {
  final Size size;
  const HeadAuthItem({Key? key, required this.size}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: size.height * .21,
      decoration: BoxDecoration(
        gradient: RadialGradient(
            radius: math.pi / 3.8,
            focal: Alignment.center,
            stops: const [
              .65,
              1,
              0,
            ],
            colors: [
              const Color(0xff5192bf).withOpacity(.5),
              const Color(0xff327fb4),
              OwnColor.mainColor,
            ]),
      ),
    );
  }
}
