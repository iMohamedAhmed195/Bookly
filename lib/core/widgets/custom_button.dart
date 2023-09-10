import 'package:booklyy/core/utils/styles.dart';
import 'package:flutter/material.dart';

class CustomButton extends StatelessWidget {
  const CustomButton({super.key, required this.backgroundColor, required this.textColor, this.borderRadius, required this.text, this.fontSize, required this.fontWeight});

  final Color backgroundColor;
  final Color textColor;
  final BorderRadius? borderRadius;
  final String text;
  final double? fontSize ;
  final FontWeight fontWeight;
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 48,
      child: TextButton(
          onPressed: (){},

          style: TextButton.styleFrom(
            backgroundColor: backgroundColor,
            shape: RoundedRectangleBorder(
              borderRadius:borderRadius ?? BorderRadius.circular(16.0)
            )
          ),
          child: Text(
            text,style: Styles.textStyle18.copyWith(color : textColor, fontWeight: fontWeight , fontSize: fontSize),
          )
      ),
    );
  }
}