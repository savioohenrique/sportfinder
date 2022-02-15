import 'package:flutter/material.dart';

class ConstrainedText extends StatelessWidget {
  final String text;
  final double? maxHeight;
  final double? maxWidth;
  final Color? color;
  final BoxFit? boxFit;
  final Alignment? alignment;
  final TextStyle? textStyle;

  const ConstrainedText(
      {required this.text,
      required this.maxHeight,
      this.textStyle,
      this.alignment,
      this.boxFit,
      this.maxWidth,
      this.color});
  @override
  Widget build(BuildContext context) {
    return ConstrainedBox(
      constraints: BoxConstraints(
          maxHeight: maxHeight ?? double.infinity,
          maxWidth: maxWidth ?? double.infinity),
      child: FittedBox(
        alignment: alignment ?? Alignment.center,
        fit: boxFit ?? BoxFit.scaleDown,
        child: Text(
          text,
          style: textStyle ?? TextStyle(),
        ),
      ),
    );
  }
}
