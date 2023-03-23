import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';


class AdsPage extends StatelessWidget {
  const AdsPage({Key? key, this.isFromLocal = true}) : super(key: key);

  final bool? isFromLocal;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Padding(
          padding: EdgeInsets.symmetric(vertical: 10.h, horizontal: 10.w),
          child: AdsListItem(
              adsList:bloc.adsList
          ),
        ),
      ),
    );
  }

}
