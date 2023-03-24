import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:newpj/pages/home_page/all_pages/ads_all_page.dart';
import 'package:newpj/widgets/custom_text.dart';
import 'package:carousel_slider/carousel_slider.dart';
import '../../resources/color_const.dart';


class LocalServiceItem extends StatefulWidget {

   LocalServiceItem({Key? key,})
      : super(key: key);

  List<String> localServiceList = [
    "https://cdn.pixabay.com/photo/2018/01/04/09/39/love-story-3060241_960_720.jpg",
    "https://cdn.pixabay.com/photo/2015/09/05/21/51/reading-925589_960_720.jpg",
    "https://cdn.pixabay.com/photo/2018/03/19/18/20/tea-time-3240766_960_720.jpg",
    "https://cdn.pixabay.com/photo/2017/03/02/05/14/bible-2110439_960_720.jpg",
  ];

  @override
  _LocalServiceItemState createState() => _LocalServiceItemState();
}

class _LocalServiceItemState extends State<LocalServiceItem> {
  int _current = 0;


  @override
  Widget build(BuildContext context) {
    final List<Widget> imageSliders = widget.localServiceList
        .map((item) => ClipRRect(
      // borderRadius: BorderRadius.circular(12),
      child: GestureDetector(
        onTap: (){
        },
        child: Container(
          width: double.infinity,
          height: double.infinity,
          decoration: BoxDecoration(
            image: DecorationImage(
                image: CachedNetworkImageProvider(item.toString()),
                fit: BoxFit.fill),
          ),
        ),
      ),
    ))
        .toList();

    return Stack(
      children: [
        Column(
          children: [
            // Row(
            //   mainAxisAlignment: MainAxisAlignment.end,
            //   children: [
            //     InkWell(
            //       onTap: (){
            //         Navigator.push(context, MaterialPageRoute(builder: (_)=>AdsPage()));
            //       },
            //       child: Container(
            //         padding: EdgeInsets.all(5),
            //         margin: EdgeInsets.only(right: 15,bottom: 5),
            //         decoration: BoxDecoration(
            //             borderRadius: BorderRadius.circular(12),
            //             color: cGreenColor
            //         ),
            //         child: CustomTextView(
            //               text: "All",
            //               fontColor:Colors.white,
            //               fontSize: 10.sp,
            //               fontWeight: FontWeight.bold,
            //             ),
            //       ),
            //     )
            //   ],
            // ),
            Expanded(
              child: CarouselSlider(
                items: imageSliders,
                options: CarouselOptions(
                    autoPlay: true,
                    viewportFraction: 1,
                    onPageChanged: (index, something) {
                      setState(() {
                        _current = index;
                      });
                    }),
              ),
            ),
          ],
        ),
        Align(
          alignment: Alignment.bottomCenter,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: widget.localServiceList.map((url) {
              int index = widget.localServiceList.indexOf(url);
              return Container(
                width: 12.h,
                height: 4.w,
                margin: EdgeInsets.symmetric(
                  vertical: 15.h,
                  horizontal: 4.w,
                ),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10),
                  color: _current == index ? cPrimaryOne : Colors.white,
                ),
              );
            }).toList(),
          ),
        ),
      ],
    );
  }

}
