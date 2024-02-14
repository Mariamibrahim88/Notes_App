import 'package:flutter/material.dart';
import 'package:notes_app/constants.dart';

class CustomTextField extends StatelessWidget {
  const CustomTextField({super.key});

  @override
  Widget build(BuildContext context) {
    return TextField(
        cursorColor: kprimarycolor,
        decoration: InputDecoration(
          hintText: 'Title',
          hoverColor: Colors.cyan,
          border: buildBorder(),
          focusedBorder: buildBorder(kprimarycolor),
          enabledBorder: buildBorder(),
          //contentPadding: const EdgeInsets.symmetric(horizontal: 20),
        ));
  }
}

OutlineInputBorder buildBorder([color]) {
  return OutlineInputBorder(
    borderRadius: BorderRadius.circular(12),
    borderSide: BorderSide(
      color: color ?? Colors.white,
    ),
  );
}
