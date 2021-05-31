import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

import '../contstants.dart';


class socialSignup extends StatelessWidget {
  final String iconSrc;
  final VoidCallback onTap;
  const socialSignup({
    Key? key,
    required this.onTap,

    required this.iconSrc
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        padding: EdgeInsets.all(15),
        decoration: BoxDecoration(
          border: Border.all(color: kPrimaryColor),
          shape: BoxShape.circle,
        ),
        child: SvgPicture.asset(
          iconSrc,
          height: 15,
          width: 15,
        ),
      ),
    );
  }
}