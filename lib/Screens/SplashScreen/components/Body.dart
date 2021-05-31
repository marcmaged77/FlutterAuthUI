import 'package:ecommerceapp/Screens/LoginPage/loginPage.dart';
import 'package:ecommerceapp/components/roundedButton.dart';
import 'package:ecommerceapp/functions/functions.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'background.dart';

class Body extends StatelessWidget {
  @override
  Widget build(BuildContext context) {



    Size size = MediaQuery.of(context).size;




    return SafeArea(
      child: background(
        child: SingleChildScrollView(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Text(
                "Welcome to EDU",
                style: TextStyle(fontSize: 27),
              ),
              SvgPicture.asset(
                'assets/icons/chat.svg',
                height: size.height * 0.45,
              ),
              RoundedButton(
                text: 'LOGIN',
                color: Color(0xff511281),
                press: () {
                  print('login');
                  openLoginPage(context);



                },
                textColor: Colors.white,
                width: 0.8,
              ),
              RoundedButton(
                text: 'SIGN UP',
                color: Color(0xFFF1E6FF),
                press: () {
                  print('Signup');
                  openSignUpPage(context);
                },
                textColor: Colors.black,
                width: 0.8,
              ),
            ],
          ),
        ),
      ),
    );
  }



}


