import 'package:ecommerceapp/components/roundedTextField.dart';
import 'package:flutter/material.dart';

class roundedPasswordField extends StatelessWidget {
  final ValueChanged<String> onChanged;


  const roundedPasswordField({
    Key? key,
    required this.onChanged
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return TextFieldContainer(
      child: TextField(
        style: TextStyle(color: Colors.white),

        onChanged: onChanged,
        obscureText: true,
        decoration: InputDecoration(
          hintText: 'Password',
          hintStyle: TextStyle(fontSize: 14,color: Colors.white),
          border: InputBorder.none,
          suffixIcon: Icon(Icons.visibility,color: Colors.black,),
          icon: Icon(
            Icons.lock,
            color: Colors.black,

          ),),
      ),);
  }
}