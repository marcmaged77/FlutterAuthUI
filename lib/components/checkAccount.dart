import 'package:flutter/material.dart';

import '../contstants.dart';
class checkAccount extends StatelessWidget {
  final VoidCallback press;
  final String firstText;
  final String secondText;



  const checkAccount({
    Key? key,
    required this.press,
    required this.firstText,
    required this.secondText

  }) : super(key: key);


  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;

    return Container(
      padding: EdgeInsets.only(top: size.height *0.01),
      child: Row(

        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[

          Text(firstText, style: TextStyle(color: kPrimaryColor),),
          GestureDetector(
              onTap: press,
              child: Text(secondText, style: TextStyle(color: kPrimaryColor),))
        ],
      ),
    );
  }
}
