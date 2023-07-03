import 'package:flutter/material.dart';
import 'package:notes_app_tharwat_samy/constant.dart';

class CustomTextFormField extends StatelessWidget {
  const CustomTextFormField({
    super.key,
    required this.hint,
    this.maxLines = 1,
    this.onSaved,
    required this.controller,
    this.initialValue = '',
  });

  final String hint;
  final int maxLines;
  final void Function(String?)? onSaved;
  final TextEditingController controller;
  final String initialValue;

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      controller: controller..text = initialValue,
      validator: (value) {
        //todo
        if (value?.isEmpty ?? true) {
          return 'Field is required';
        } else {
          return null;
        }
      },
      onSaved: onSaved,
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
      borderSide: BorderSide(
        color: color ?? Colors.white,
      ),
    );
  }
}
