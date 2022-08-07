import 'package:flutter/material.dart';

class SocialAuthItem extends StatelessWidget {
  final VoidCallback onTapGoogle;
  final VoidCallback onTapFaceBook;
  const SocialAuthItem(
      {Key? key, required this.onTapFaceBook, required this.onTapGoogle})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        InkWell(
          onTap: onTapFaceBook,
          child: Image.asset(
            "assets/images/fb.png",
            width: 55,
            height: 52,
            fit: BoxFit.fill,
          ),
        ),
        const SizedBox(
          width: 15,
        ),
        InkWell(
          onTap: onTapGoogle,
          child: Image.asset(
            "assets/images/google.png",
            fit: BoxFit.fill,
            height: 52,
            width: 70,
          ),
        )
      ],
    );
  }
}
