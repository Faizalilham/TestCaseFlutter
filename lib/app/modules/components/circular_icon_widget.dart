import 'package:flutter/material.dart';

class CircularIconWidget extends StatelessWidget {
  final IconData iconData;
  final double iconSize;
  final Color iconColor;
  final double size;
  final Color backgroundColor;

  CircularIconWidget({
    required this.iconData,
    this.iconSize = 24,
    this.iconColor = Colors.white,
    this.size = 60,
    this.backgroundColor = Colors.blue,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      width: size,
      height: size,
      decoration: BoxDecoration(
        shape: BoxShape.circle,
        color: backgroundColor,
      ),
      child: Center(
        child: Icon(
          iconData,
          size: iconSize,
          color: iconColor,
        ),
      ),
    );
  }
}
