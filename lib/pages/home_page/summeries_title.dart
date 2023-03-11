import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:newpj/resources/color_const.dart';

import '../../widgets/custom_text.dart';

class SummariesTitle extends StatelessWidget {
  const SummariesTitle({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding:  EdgeInsets.symmetric(horizontal: 15.w,vertical: 15.h),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
         Column(children: [
           const CustomTextView(
             text: "Free Summeries",
             fontWeight: FontWeight.bold,
             fontSize: 16,
           ),
           Container(width: 120,height: 1,color: Colors.black,)
         ],),
          Container(
            padding: EdgeInsets.all(5),
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(12),
                color: cSecondaryOne
            ),
            child: CustomTextView(
              text: "All",
              fontColor:Colors.white,
              fontSize: 10.sp,
              fontWeight: FontWeight.bold,
            ),
          )
        ],
      ),
    );
  }
}
