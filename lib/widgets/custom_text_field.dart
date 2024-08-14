import 'package:flutter/material.dart';
import 'package:notes_app/constants.dart';

class CustomTextField extends StatelessWidget {
  const CustomTextField(
      {super.key,
      required this.texthint,
      this.maxLines = 1,
      this.onSaved,
      this.onChanged});

  final String texthint;
  final int maxLines;
  final Function(String?)? onSaved;
  final Function(String)? onChanged;

  @override
  Widget build(BuildContext context) {
    return TextFormField(
        onSaved: onSaved,
        onChanged: onChanged,
        validator: (value) {
          if (value?.isEmpty ?? true) {
            return 'Field is required';
          } else {
            return null;
          }
        },
        cursorColor: kprimarycolor,
        maxLines: maxLines,
        decoration: InputDecoration(
          hintText: texthint,
          hoverColor: Colors.cyan,
          border: buildBorder(),
          focusedBorder: buildBorder(kprimarycolor),
          enabledBorder: buildBorder(),
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
