import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:newpj/resources/color_const.dart';
import 'package:newpj/widgets/custom_button.dart';
import '../../widgets/custom_text.dart';

class PopularListview extends StatelessWidget {
  const PopularListview({
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
        children: [
          ClipRRect(
            borderRadius: BorderRadius.only(topLeft: Radius.circular(13.r),topRight: Radius.circular(13.r)),
            child: CachedNetworkImage(
              height: 150,
              width: 200,
              fit: BoxFit.cover,
              imageUrl:
              "https://media.istockphoto.com/id/1193274889/photo/stack-of-books-on-the-table-of-public-library.jpg?s=612x612&w=0&k=20&c=Vf8FcfOTnOaGQevnSJRc416rolMJqt0Lvnc3y8SpOWE=",
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
          SizedBox(height: 10,),
          CustomButtonView(
              width: 180,
              height: 30.h,
              borderRadius: 30,
              text: "View More",
              buttonColor: cSecondaryOne,
              fontColor: Colors.white,
              onPressed: (){
              })
        ],
      ),
    );
  }
}
