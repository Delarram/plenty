import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../resources/color_const.dart';
import '../../widgets/custom_text.dart';



class YogaDetailListview extends StatelessWidget {
  const YogaDetailListview({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    String text ="Hello";
    return ListView.separated(
        itemBuilder: (context, index) {
          return Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              CustomTextView(
                text: text.padLeft(2,
                    '0'),
                fontSize: 20.sp,
                fontWeight: FontWeight.bold,
                fontColor: cBackGroundThree,
              ),
              SizedBox(
                width: 10.w,
              ),
              Flexible(
                  child: CustomTextView(
                    text: "Description Description Description",
                    fontSize: 13.sp,
                    fontColor: cBackGroundTwo,
                    textAlign: TextAlign.start,
                    fontFamily: 'poppin',
                  ))
            ],
          );
        },
        separatorBuilder: (context, index) {
          return SizedBox(
            height: 10.h,
          );
        },
        itemCount: 10);
  }
}
