import 'package:flutter/material.dart';
import 'package:todo_app/constants.dart';

class CustomTextField extends StatelessWidget {
  const CustomTextField({super.key, required this.hint, this.maxLines = 1, this.onSaved});

  final String hint;
  final int maxLines;
  final void Function(String?)? onSaved;
  @override
  Widget build(BuildContext context) {
    return TextFormField(
      onSaved: onSaved,
      validator: (value)
      {
        if(value?.isEmpty ?? true)
        {
          return 'Field is required';
        }else
        {
          return null;
        }
      },
      cursorColor: kPrimaryColor,
      maxLines: maxLines,
      decoration: InputDecoration(
        hintText: hint,
        border: buildInputBorder(),
        enabledBorder: buildInputBorder(),
        focusedBorder: buildInputBorder(kPrimaryColor),
      ),
    );
  }

  OutlineInputBorder buildInputBorder([color]) {
    return OutlineInputBorder(
        borderRadius: BorderRadius.circular(8),
        borderSide: BorderSide(
          color: color ?? Colors.white,
        ),
      );
  }
}
