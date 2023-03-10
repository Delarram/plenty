import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:newpj/resources/color_const.dart';

import '../../widgets/custom_text.dart';

class PopularBookTitle extends StatelessWidget {
  const PopularBookTitle({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding:  EdgeInsets.symmetric(horizontal: 15.w,vertical: 15.h),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          const CustomTextView(
            text: "Popular Books",
            fontWeight: FontWeight.bold,
            fontSize: 16,
            isUnderLine: true,
          ),
          CustomTextView(
            text: "All",
            fontColor:cSecondaryOne,
            fontSize: 14.sp,
            fontWeight: FontWeight.bold,
          )
        ],
      ),
    );
  }
}
