import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:newpj/resources/color_const.dart';
import 'package:newpj/widgets/custom_button.dart';
import '../../widgets/custom_text.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';
class BestSellerListView extends StatelessWidget {
  const BestSellerListView({
    Key? key,
  }) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return ListView.separated(
      shrinkWrap: true,
      padding: EdgeInsets.only(left: 15.w, right: 15.w, bottom: 15),
      scrollDirection: Axis.horizontal,
      itemCount: 10,
      //businessList.length,
      separatorBuilder: (BuildContext context, int index) {
        return SizedBox(
          width: 12.w,
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
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(12),
          color: Colors.white,
          boxShadow: [
            BoxShadow(
              color: Colors.grey.withOpacity(0.3),
              blurRadius: 5,
              offset: Offset(-2, 3), // Shadow position
            ),
            BoxShadow(
              color: Colors.grey.withOpacity(0.3),
              blurRadius: 5,
              offset: Offset(-2, 3), // Shadow position
            ),
          ]),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          ClipRRect(
            borderRadius: BorderRadius.only(topLeft: Radius.circular(13.r),topRight: Radius.circular(13.r)),
            child: CachedNetworkImage(
              height: 130,
              width: 200,
              fit: BoxFit.cover,
              imageUrl:
              "https://thumbs.dreamstime.com/z/stack-books-isolated-white-background-34637153.jpg",
              progressIndicatorBuilder: (context, url, downloadProgress) =>
                  Center(
                    child: CircularProgressIndicator(
                        value: downloadProgress.progress),
                  ),
              errorWidget: (context, url, error) => const Icon(Icons.error),
            ),
          ),
          SizedBox(
            height: 5,
          ),
          Flexible(
            child: CustomTextView(
              text: "Naughty But Nice Revolution",
              fontSize: 12.sp,
            ),
          ),
          SizedBox(height: 5,),
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
                    color: Colors.amber,
                  ),
                  itemSize: 12,
                  onRatingUpdate: (rating) {
                    print(rating);
                  },
                )
              ],
            ),
          ),
          const SizedBox(height: 10,),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 10),
            child: CustomButtonView(
                width: 180,
                height: 30.h,
                borderRadius: 30,
                text: "View More",
                buttonColor: cSecondaryOne,
                fontColor: Colors.white,
                onPressed: (){
                }),
          )
        ],
      ),
    );
  }
}
