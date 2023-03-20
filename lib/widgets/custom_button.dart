import 'package:flutter/material.dart';

import 'custom_text.dart';


class CustomButtonView extends StatelessWidget {
  const CustomButtonView(
      {Key? key,
        this.width,
        required this.height,
        required this.borderRadius,
        required this.text,
        this.fontColor,
        this.fontSize,
        required this.onPressed,
        this.buttonColor, this.icon, this.iconColor, this.iconSize, this.fontFamily='poppin',})
      : super(key: key);

  final double? width;
  final double height;
  final double borderRadius;
  final String text;
  final Color? fontColor;
  final double? fontSize;
  final Function onPressed;
  final Color? buttonColor;
  final IconData? icon;
  final Color? iconColor;
  final double? iconSize;
  final String? fontFamily;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: width,
      height: height,
      child: MaterialButton(
        color: buttonColor,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(borderRadius),),
        onPressed: () {
          onPressed();
        },
        child: GestureDetector(
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              CustomTextView(
                text: text,
                fontColor: fontColor,
                fontSize: fontSize,
                fontWeight: FontWeight.w700,
                fontFamily: fontFamily,
              ),const SizedBox(width: 3,),
              Container(
                // decoration: BoxDecoration(
                //   shape: BoxShape.circle,
                //   border: Border.all(color: const Color(0xffFFFFFF),width: 2),
                // ),
                child:icon==null? null : Icon(icon,color:iconColor,size: 14,),)

            ],
          ),
        ),
      ),
    );
  }
}
