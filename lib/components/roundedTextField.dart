import 'package:ecommerceapp/contstants.dart';
import 'package:flutter/material.dart';
class RoundedTextField extends StatelessWidget {
  final String text;
  final Icon icon;
  final ValueChanged<String> onChanged;
  const RoundedTextField({
    Key? key,
    required this.text,
    required this.icon,
    required this.onChanged
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return TextFieldContainer(
      child: TextField(
        style: TextStyle(color: Colors.white),
        onChanged: onChanged,
        decoration: InputDecoration(
            border: InputBorder.none,
            icon: icon,
            hintText: text,
            hintStyle: TextStyle(fontSize: 14,color: Colors.white)),

      ),
    );
  }
}

class TextFieldContainer extends StatelessWidget {
  final Widget child;
  const TextFieldContainer({Key? key, required this.child}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;

    return Container(
      width: size.width * 0.8,
      padding: EdgeInsets.symmetric(horizontal: 45, vertical: 1),
      decoration: BoxDecoration(
          color: textfields, borderRadius: BorderRadius.circular(29)),
      child: child,
    );
  }
}