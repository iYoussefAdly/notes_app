import 'package:flutter/material.dart';
import 'package:notes_app/widgets/constants.dart';

class CustomTextField extends StatelessWidget {
  const CustomTextField({super.key});

  @override
  Widget build(BuildContext context) {
    return TextField(
      cursorColor: kPrimaryColor,
      decoration: InputDecoration(
        hintText: 'Title',
        focusedBorder: buildBorder(kPrimaryColor),
        enabledBorder:buildBorder()
      ),
    );
  }

  OutlineInputBorder buildBorder([Color? color]) {
    return OutlineInputBorder(
        borderRadius: BorderRadius.circular(10),
        borderSide: BorderSide(color:color??Colors.white)
      );
  }
}