import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:newpj/bloc/ads_list_bloc.dart';
import 'package:newpj/resources/color_const.dart';
import 'package:newpj/widgets/custom_text.dart';
import 'package:provider/provider.dart';
import 'ads_all_listview.dart';


class AdsPage extends StatelessWidget {
  const AdsPage({Key? key, this.isFromLocal = true}) : super(key: key);

  final bool? isFromLocal;

  @override
  Widget build(BuildContext context) {
    List<String> images = [
      "https://cdn.pixabay.com/photo/2018/01/04/09/39/love-story-3060241_960_720.jpg",
      "https://cdn.pixabay.com/photo/2015/09/05/21/51/reading-925589_960_720.jpg",
      "https://cdn.pixabay.com/photo/2018/03/19/18/20/tea-time-3240766_960_720.jpg",
      "https://cdn.pixabay.com/photo/2017/03/02/05/14/bible-2110439_960_720.jpg",
    ];
    return ChangeNotifierProvider(
      create: (context) => AdsListBloc(),
      child: Consumer<AdsListBloc>(
        builder: (context, bloc, child) {
          return Scaffold(
            backgroundColor: cBackGroundSix,
            appBar:  AppBar(
              backgroundColor: cGreenColor,
              title: const CustomTextView(text: "Local Ads",),
            ),
            body: SingleChildScrollView(
              child: Padding(
                padding: EdgeInsets.symmetric(vertical: 10.h, horizontal: 20.w),
                child: AdsListItem(imageList: images[2],
                ),
              ),
            ),
          );
        },
      ),
    );
  }
}
