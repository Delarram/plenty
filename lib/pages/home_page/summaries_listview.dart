import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import '../../widgets/custom_text.dart';


class SummariesListview extends StatelessWidget {
  const SummariesListview({Key? key,})
      : super(key: key);
  @override
  Widget build(BuildContext context) {
    return ListView.separated(
      shrinkWrap: true,
      padding: EdgeInsets.only(left: 15.w,right: 15.w),
      scrollDirection: Axis.horizontal,
      itemCount: 10,
      //businessList.length,
      separatorBuilder: (BuildContext context, int index) {
        return SizedBox(
          width: 7.w,
        );
      },
      itemBuilder: (BuildContext context, int index) {
        return BusinessCategoryItemView();
      },
    );
  }
}

class BusinessCategoryItemView extends StatelessWidget {
  const BusinessCategoryItemView({
    Key? key,
  }) : super(key: key);



  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.grey,

      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          ClipRRect(
            borderRadius: BorderRadius.circular(13.r),
            child: CachedNetworkImage(
              height: 250,
              width: 250,
              fit: BoxFit.cover,
              imageUrl:
               "https://media.istockphoto.com/photos/work-for-us-were-hiring-picture-id1298224647?s=612x612",
              progressIndicatorBuilder: (context, url, downloadProgress) =>
                  Center(
                    child: CircularProgressIndicator(
                        value: downloadProgress.progress),
                  ),
              errorWidget: (context, url, error) => const Icon(Icons.error),
            ),
          ),
          SizedBox(
            height: 12,
          ),
          Flexible(
            child: CustomTextView(
              text:"Katwal",
              fontSize: 12.sp,
              fontWeight: FontWeight.w600,
            ),
          )
        ],
      ),
    );
  }
}
