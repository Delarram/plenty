import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:newpj/resources/color_const.dart';

import '../../widgets/custom_text.dart';

class BestSellerTitle extends StatelessWidget {
  const BestSellerTitle({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding:  EdgeInsets.symmetric(horizontal: 15.w,vertical: 15.h),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          const CustomTextView(
            text: "BestSeller Books",
            fontWeight: FontWeight.bold,
            fontSize: 16,
            isUnderLine: true,
          ),
          Container(
            padding: EdgeInsets.all(10),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(12),
              color: cSecondaryOne
            ),
            child: CustomTextView(
              text: "All",
              fontColor:Colors.white,
              fontSize: 14.sp,
              fontWeight: FontWeight.bold,
            ),
          )
        ],
      ),
    );
  }
}
