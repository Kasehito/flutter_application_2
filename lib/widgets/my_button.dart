import 'package:flutter/material.dart';

class MyButton extends StatelessWidget {
  final String textbutton;
  final double borderRadius;
  final Color backgroundColor;
  final Color foregroundColor;
  final TextStyle textStyle;
  final double elevation;
  final VoidCallback onpressed;

  const MyButton(
      {super.key,
      required this.textbutton,
      required this.textStyle,
      required this.borderRadius,
      required this.backgroundColor,
      required this.foregroundColor,
      required this.elevation, required this.onpressed});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.all(10),
      child: ElevatedButton(
          style: ElevatedButton.styleFrom(
              backgroundColor: backgroundColor,
              foregroundColor: foregroundColor,
              elevation: elevation,
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(borderRadius))),
          onPressed: onpressed,
          child: Text(textbutton, style: textStyle)),
    );
  }
}
