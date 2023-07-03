import 'package:flutter/material.dart';

class CustomIcon extends StatelessWidget {
  const CustomIcon({
    super.key,
    required this.icon,
    required this.onPress,
  });

  final IconData icon;
  final void Function()? onPress;

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.all(5.0),
      decoration: BoxDecoration(
        color: Colors.grey[800],
        borderRadius: BorderRadius.circular(16.0),
      ),
      child: IconButton(
        onPressed: onPress,
        icon: Icon(
          icon,
        ),
      ),
    );
  }
}
