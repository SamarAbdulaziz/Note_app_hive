import 'package:flutter/material.dart';
import 'package:notes_app_tharwat_samy/constant.dart';

class CustomTextField extends StatelessWidget {
  const CustomTextField({super.key, required this.hint, this.maxLines = 1});

  final String hint;
  final int maxLines;

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      decoration: InputDecoration(
        border: buildBorder(),
        focusedBorder: buildBorder(color: kPrimaryColor),
        enabledBorder: buildBorder(),
        hintText: hint,
      ),
      maxLines: maxLines,
    );
  }

  OutlineInputBorder buildBorder({Color? color}) {
    return OutlineInputBorder(
        borderRadius: BorderRadius.circular(10),
        borderSide: BorderSide(color: color ?? Colors.white));
  }
}
