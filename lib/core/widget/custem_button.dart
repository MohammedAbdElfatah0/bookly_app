import 'package:bookly_app/core/utils/styles.dart';
import 'package:flutter/material.dart';

class CustemButton extends StatelessWidget {
  const CustemButton({
    super.key,
    required this.backGroundColor,
    required this.textColor,
    this.borderRadius,
    required this.text, this.onPressed,
  });
  final Color backGroundColor;
  final Color textColor;
  final String text;
  final BorderRadius? borderRadius;
  final void Function()? onPressed ; //TODO
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 48,
      child: TextButton(
        onPressed: onPressed,//TODO
        style: TextButton.styleFrom(
          shape: RoundedRectangleBorder(
            borderRadius: borderRadius ?? BorderRadius.circular(12),
          ),
          backgroundColor: backGroundColor,
        ),
        child: Text(
          text,
          style: Styles.titleStyle18.copyWith(
            color: textColor,
            fontWeight: FontWeight.bold,
          ),
        ),
      ),
    );
  }
}
