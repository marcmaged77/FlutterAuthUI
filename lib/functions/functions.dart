
import 'package:ecommerceapp/Screens/LoginPage/loginPage.dart';
import 'package:ecommerceapp/Screens/SplashScreen/splashPage.dart';
import 'package:ecommerceapp/Screens/signUpPage/signUp.dart';
import 'package:flutter/material.dart';



//navigate to login screen
openLoginPage(BuildContext context){
  Navigator.push(context, MaterialPageRoute(builder:(context){
    return LoginPage();
  }));
}

//navigate to sign up  screen
openSignUpPage(BuildContext context){
  Navigator.push(context, MaterialPageRoute(builder:(context){
    return SignUpPage();
  }));

}


//navigate back to signup from sign in and remove previous screen
goRemoveCurrentSignUp(BuildContext context){
  
  Navigator.pushReplacement(context, MaterialPageRoute(builder: (context) {
    return SignUpPage();
  }));
  
  
  
}


goRemoveCurrentLogin(BuildContext context){

  Navigator.pushReplacement(context, MaterialPageRoute(builder: (context) {
    return LoginPage();
  }));



}

