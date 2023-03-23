import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:newpj/widgets/custom_text.dart';
import 'package:carousel_slider/carousel_slider.dart';
import '../../resources/color_const.dart';


class LocalServiceItem extends StatefulWidget {

   LocalServiceItem({Key? key,})
      : super(key: key);

  List<String> localServiceList = [
    "https://images.wallpapersden.com/image/download/purple-sunrise-4k-vaporwave_bGplZmiUmZqaraWkpJRmbmdlrWZlbWU.jpg",
    "https://wallpaperaccess.com/full/2637581.jpg",
    "https://uhdwallpapers.org/uploads/converted/20/01/14/the-mandalorian-5k-1920x1080_477555-mm-90.jpg"
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
      borderRadius: BorderRadius.circular(12),
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

    return Column(
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.end,
          children: [
            Padding(
              padding: EdgeInsets.only(right: 10.w, top: 5.h,bottom: 11),
              child: CustomTextView(
                    text: "All",
                    fontColor: cSecondaryOne,
                    fontSize: 15.sp,
                    fontWeight: FontWeight.bold,
                  ),
            )
          ],
        ),
        Expanded(
          child: CarouselSlider(
            items: imageSliders,
            options: CarouselOptions(
                autoPlay: true,
                enlargeCenterPage: true,
                aspectRatio: 3.5,
                onPageChanged: (index, something) {
                  setState(() {
                    _current = index;
                  });
                }),
          ),
        ),
        Row(
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
                color: _current == index ? cPrimaryOne : Colors.white,
              ),
            );
          }).toList(),
        ),
      ],
    );
  }

}
