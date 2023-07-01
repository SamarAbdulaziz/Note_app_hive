import 'package:flutter/material.dart';
import 'package:notes_app_tharwat_samy/constant.dart';

class CustomButton extends StatelessWidget {
  final String title;
  final Color buttonColor;
  final Color textColor;
  final double circularRadius;
  final double height;
  final double fontSize;
  final FontWeight fontWeight;
  final VoidCallback onTap;
  final bool isLoading;

  const CustomButton(
      {super.key,
      required this.title,
      required this.onTap,
      this.buttonColor = kPrimaryColor,
      this.textColor = Colors.black,
      this.circularRadius = 10.0,
      this.fontSize = 16,
      this.height = 55,
      this.fontWeight = FontWeight.bold,
      this.isLoading = false});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.symmetric(vertical: 16.0),
      width: MediaQuery.of(context).size.width,
      height: height,
      child: SizedBox(
        width: MediaQuery.of(context).size.width,
        height: height,
        child: ElevatedButton(
          onPressed: onTap,
          style: ElevatedButton.styleFrom(
            backgroundColor: buttonColor,
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(
                circularRadius,
              ),
            ),
          ),
          child: isLoading
              ? const CircularProgressIndicator(
                  color: Colors.black,
                )
              : Text(
                  title,
                  style: TextStyle(
                    fontWeight: fontWeight,
                    color: textColor,
                    fontSize: fontSize,
                  ),
                ),
        ),
      ),
    );
  }
}
