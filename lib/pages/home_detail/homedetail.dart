import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';


import '../../resources/color_const.dart';
import '../../widgets/custom_button.dart';
import '../../widgets/custom_text.dart';
import 'home_detail_body_section.dart';

class YogaDetailScreen extends StatefulWidget {
  const YogaDetailScreen({
    Key? key,
  }) : super(key: key);



  @override
  State<YogaDetailScreen> createState() => _YogaDetailScreenState();
}

class _YogaDetailScreenState extends State<YogaDetailScreen> {
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    WidgetsFlutterBinding.ensureInitialized()
        .addPostFrameCallback((timeStamp) async {});

  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: NestedScrollView(
        headerSliverBuilder:
            (BuildContext context, bool innerBoxIsScrolled) {
          return <Widget>[
            SliverAppBar(
              leading: Builder(builder: (BuildContext context) {
                return GestureDetector(
                  onTap: () {
                    Navigator.pop(context);
                  },
                  child: Container(
                    margin: EdgeInsets.only(left: 10),
                    height: 20,
                    width: 20,
                    decoration: BoxDecoration(
                        shape: BoxShape.circle,
                        color: Colors.white
                    ),
                    child: const Icon(
                      Icons.arrow_back,size: 20,
                    ),
                  ),
                );
              }),
              title: Builder(builder: (BuildContext context) {
                return Padding(
                  padding: EdgeInsets.symmetric(
                    horizontal: 50.w,
                  ),
                  child: CustomTextView(
                    text: "Title",
                    fontColor: cBackGroundOne,
                    fontWeight: FontWeight.bold,
                    fontSize: 18.sp,
                  ),
                );
              }),
              iconTheme: const IconThemeData(
                color: Colors.black,
              ),
              backgroundColor: cBackGroundWhite,
              expandedHeight: MediaQuery.of(context).size.height / 2.5,
              floating: false,
              pinned: true,
              flexibleSpace: FlexibleSpaceBar(
                centerTitle: true,
                background: Container(
                    decoration: const BoxDecoration(
                        gradient: LinearGradient(colors: [
                          Color(0xffB0F1F3),
                          Color(0xffF7E2FF),
                        ])),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.end,
                      children: [
                        Flexible(
                          child: CachedNetworkImage(
                            height: 204.w,
                            fit: BoxFit.cover,
                            imageUrl:
                             "https:\/\/mindfulness.app.myanmarcafe.trade\/wp-content\/uploads\/2022\/10\/step-1.png",
                            progressIndicatorBuilder:
                                (context, url, downloadProgress) =>
                                Center(
                                  child: CircularProgressIndicator(
                                      value: downloadProgress.progress),
                                ),
                            errorWidget: (context, url, error) =>
                            const Icon(Icons.error),
                          ),
                        ),
                      ],
                    )),
              ),
            ),
          ];
        },
        body: Padding(
          padding: EdgeInsets.symmetric(horizontal: 16.w, vertical: 16.h),
          child:Column(
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Expanded(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        CustomTextView(
                          text: "hello title",
                          fontSize: 22.sp,
                          fontWeight: FontWeight.w700,
                        ),
                        SizedBox(
                          height: 5.h,
                        ),
                        CustomTextView(
                          text:

                           "00.45 Sec",
                          fontSize: 14.sp,
                          fontWeight: FontWeight.w500,
                          fontFamily: 'poppin',
                          fontColor: cBackGroundThree,
                        ),
                      ],
                    ),
                  ),
                  Container(
                    height: 30.h,
                    decoration: BoxDecoration(
                        color: cSecondaryOne,
                        borderRadius: BorderRadius.circular(30.r)),
                    child: MaterialButton(
                      onPressed: () {},
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        crossAxisAlignment:
                        CrossAxisAlignment.center,
                        children: [
                          Icon(
                            Icons.play_arrow_rounded,
                            color: Colors.white,
                            size: 18.sp,
                          ),
                          SizedBox(
                            width: 5.w,
                          ),
                          CustomTextView(
                            text: "Play",
                            fontColor: const Color(0xffFFFFFF),
                            fontSize: 14.sp,
                          ),
                        ],
                      ),
                    ),
                  ),
                ],
              ),
              Flexible(
                  child: YogaDetailListview(
                  ))
            ],
          ),
        ),
      ),
    );
  }
}


