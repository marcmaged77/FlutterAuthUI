import 'package:ecommerceapp/components/OrDivider.dart';
import 'package:ecommerceapp/components/SocialMediaLoginIcon.dart';
import 'package:ecommerceapp/components/checkAccount.dart';
import 'package:ecommerceapp/components/roundedButton.dart';
import 'package:ecommerceapp/components/roundedPasswordField.dart';
import 'package:ecommerceapp/components/roundedTextField.dart';
import 'package:ecommerceapp/functions/functions.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import '../../../contstants.dart';
import 'background.dart';

class Body extends StatelessWidget {
  const Body({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;

    return SafeArea(
        child: Scaffold(
      body: background(
        child: SingleChildScrollView(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Text(
                'Sign Up',
                style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
              ),
              SizedBox(
                height: size.height * 0.02,
              ),
              SvgPicture.asset(
                "assets/icons/signup.svg",
                width: size.width * 0.7,
              ),
              SizedBox(
                height: size.height * 0.04,
              ),
              RoundedTextField(
                  text: 'Enter your email',
                  icon: Icon(
                    Icons.email,
                    color: CupertinoColors.black,
                  ),
                  onChanged: (value) {}),
              SizedBox(
                height: size.height * 0.03,
              ),
              roundedPasswordField(onChanged: (value) {}),
              RoundedButton(
                text: "Sign Up",
                press: () {},
                color: kPrimaryColor,
                textColor: Colors.white,
                width: 0.8,
              ),
              SizedBox(
                height: size.height * 0.005,
              ),
              checkAccount(
                  press: () {
                    goRemoveCurrentLogin(context);
                  },
                  firstText: 'already have an account ?',
                  secondText: ' SIGN IN !!'),
              orDivider(),
              SizedBox(
                height: size.height * 0.009,
              ),
              Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                    socialSignup(iconSrc: "assets/icons/facebook.svg",onTap: (){}),


                    SizedBox(width: size.width *0.04,),
                    socialSignup(iconSrc: "assets/icons/twitter.svg",onTap: (){},),

                    SizedBox(width: size.width *0.04,),

                    socialSignup(iconSrc: "assets/icons/google-plus.svg",onTap: (){},)
                  ])
            ],
          ),
        ),
      ),
    ));
  }
}




