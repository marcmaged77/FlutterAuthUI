import 'package:ecommerceapp/components/checkAccount.dart';
import 'package:ecommerceapp/components/roundedButton.dart';
import 'package:ecommerceapp/components/roundedPasswordField.dart';
import 'package:ecommerceapp/components/roundedTextField.dart';
import 'package:ecommerceapp/contstants.dart';
import 'package:ecommerceapp/functions/functions.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'background.dart';

class Body extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return SafeArea(
      child: Scaffold(
        body: Background(
            child: SingleChildScrollView(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Text('LOGIN',
                  style: TextStyle(fontSize: 17, fontWeight: FontWeight.bold)),
              SizedBox(
                height: 10,
              ),
              SvgPicture.asset(
                'assets/icons/login.svg',
                width: size.width * 0.8,
              ),
              SizedBox(
                height: size.height * 0.05,
              ),
              RoundedTextField(
                text: 'Your Email',
                icon: Icon(Icons.person, color: Colors.black),
                onChanged: (value) {},
              ),
              SizedBox(
                height: size.height * 0.03,
              ),
              roundedPasswordField(
                onChanged: (value) {},
              ),
              RoundedButton(
                text: 'Login',
                press: () {},
                color: kPrimaryColor,
                textColor: Colors.white,
                width: 0.8,
              ),
              
              checkAccount(press: (){
                goRemoveCurrentSignUp(context) ;
                }, firstText:"Don't have an account ?", secondText:" SIGN UP !!")
            ],
          ),
        )),
      ),
    );
    ;
  }
}

