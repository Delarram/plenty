import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:newpj/bloc/ads_list_bloc.dart';
import 'package:newpj/widgets/custom_text.dart';
import 'package:provider/provider.dart';

import 'ads_all_listview.dart';


class AdsPage extends StatelessWidget {
  const AdsPage({Key? key, this.isFromLocal = true}) : super(key: key);

  final bool? isFromLocal;

  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(
      create: (context) => AdsListBloc(),
      child: Consumer<AdsListBloc>(
        builder: (context, bloc, child) {
          return Scaffold(
            appBar:  AppBar(
              title: CustomTextView(text: "Local Ads",),
            ),
            body: SingleChildScrollView(
              child: Padding(
                padding: EdgeInsets.symmetric(vertical: 10.h, horizontal: 10.w),
                child: AdsListItem(imageList: bloc.images.toString()??"",
                ),
              ),
            ),
          );
        },
      ),
    );
  }
}
