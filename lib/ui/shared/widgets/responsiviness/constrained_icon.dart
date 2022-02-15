import 'package:flutter/material.dart';

class ConstrainedIcon extends StatelessWidget {
  final IconData iconData;
  final double size;
  final double? maxHeight;
  final double? maxWidth;
  final Color? color;

  const ConstrainedIcon(
      {required this.iconData,
      required this.size,
      required this.maxHeight,
      this.maxWidth,
      this.color});
  @override
  Widget build(BuildContext context) {
    return ConstrainedBox(
      constraints: BoxConstraints(
          maxHeight: maxHeight ?? double.infinity,
          maxWidth: maxWidth ?? maxHeight ?? double.infinity),
      child: FittedBox(
        fit: BoxFit.scaleDown,
        child: Icon(
          iconData,
          color: color ?? Colors.grey[600],
          size: size,
        ),
      ),
    );
  }
}
