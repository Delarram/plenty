import 'package:flutter/material.dart';
import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import '../../resources/color_const.dart';
import '../../widgets/custom_text.dart';


class TipScreenDetail extends StatelessWidget {
  const TipScreenDetail({Key? key, })
      : super(key: key);


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SizedBox(
          height: double.infinity,
          width: double.infinity,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(
                height: 0.3.sh,
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
          )),
    );
  }
}
