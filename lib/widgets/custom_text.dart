import 'package:flutter/material.dart';

class CustomTextView extends StatelessWidget {
  const CustomTextView(
      {Key? key,
        required this.text,
        this.fontSize,
        this.fontWeight,
        this.fontColor,
        this.maxLine,
        this.overflow,
        this.isUnderLine = false,
        this.textAlign, this.fontFamily= "philosopher"})
      : super(key: key);

  final String text;
  final double? fontSize;
  final FontWeight? fontWeight;
  final Color? fontColor;
  final int? maxLine;
  final TextOverflow? overflow;
  final bool? isUnderLine;
  final TextAlign? textAlign;
  final String? fontFamily;

  @override
  Widget build(BuildContext context) {
    return Text(text,
        maxLines: maxLine,
        textAlign: textAlign,
        overflow: overflow,
        style: TextStyle(
            fontSize: fontSize,
            fontFamily: fontFamily,
            fontWeight: fontWeight,
            color: fontColor,
            decoration: isUnderLine == true
                ?
            TextDecoration.underline : TextDecoration.none
        )
    );
  }
}
