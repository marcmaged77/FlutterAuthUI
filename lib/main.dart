import 'package:ecommerceapp/Screens/LoginPage/loginPage.dart';
import 'package:ecommerceapp/Screens/SplashScreen/splashPage.dart';
import 'package:ecommerceapp/contstants.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        debugShowCheckedModeBanner: false,
   theme: ThemeData(
     primaryColor: kPrimaryColor,
         scaffoldBackgroundColor: Colors.white,
       fontFamily: 'Primary'
   ),
   home: Scaffold(
     body: splashPage()
   ),
    );
  }
}
