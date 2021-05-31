import 'package:flutter/material.dart';

import '../contstants.dart';


class orDivider extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Container(
      padding: EdgeInsets.only(top: size.height * 0.015),
      width: size.width * 0.7,
      child: Row(
        children: <Widget>[
          Expanded(
            child: Divider(
              thickness: 1.2,
              color: Color(0xffd9d9d9),
            ),
          ),
          SizedBox(width: size.width * 0.01),
          Text(
            'OR',
            style: TextStyle(color: kPrimaryColor),
          ),
          SizedBox(width: size.width * 0.01),
          Expanded(
            child: Divider(
              thickness: 1.2,
              color: Color(0xffd9d9d9),
            ),
          ),
        ],
      ),
    );
  }
}