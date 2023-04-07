import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../resources/color_const.dart';
import '../../widgets/custom_text.dart';

class SummeriesDetail extends StatelessWidget {
  const SummeriesDetail({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: Icon(Icons.arrow_back_ios),
      ),
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SizedBox(
              height: 0.4.sh,
              width: double.infinity,
              child: CachedNetworkImage(
                height: double.infinity,
                fit: BoxFit.fill,
                imageUrl: "",
                progressIndicatorBuilder:
                    (context, url, downloadProgress) => Center(
                  child: CircularProgressIndicator(
                      value: downloadProgress.progress),
                ),
                errorWidget: (context, url, error) =>
                const Icon(Icons.error),
              ),
            ),

            Padding(
              padding:
              EdgeInsets.only(top: 20.r, bottom: 8.r, left: 15.r),
              child: CustomTextView(
                text: "12.3.123",
                //"${dateFormat(tipScreenVO.createdAt!)}",
                fontSize: 13.sp,
                fontColor: cBackGroundThree,
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 10),
              child: Row(
                children: [
                  const CustomTextView(
                    text: "4.9",
                    fontSize: 13,
                    fontWeight: FontWeight.w600,
                  ),
                  const SizedBox(
                    width: 8,
                  ),
                  RatingBar.builder(
                    initialRating:5.0,
                    minRating: 1,
                    direction: Axis.horizontal,
                    allowHalfRating: true,
                    itemCount: 5,
                    itemBuilder: (context, _) => const Icon(
                      Icons.star,
                      color: Colors.white,
                    ),
                    itemSize: 12,
                    onRatingUpdate: (rating) {
                      print(rating);
                    },
                  )
                ],
              ),
            ),
            Padding(
              padding: EdgeInsets.only(left: 15.r, bottom: 15.r),
              child: CustomTextView(
                text: "12.3.123",
                fontSize: 13.sp,
                fontColor: cBackGroundThree,
              ),
            ),

            // Padding(
            //     padding: EdgeInsets.only(left: 15.r,right: 15.r),
            //     child: HtmlWidget("${tipScreenVO.content}"))
          ],
        ),
      ) ,
    );
  }
}
