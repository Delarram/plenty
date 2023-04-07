import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter/material.dart';


class TipScreen extends StatelessWidget {
  const TipScreen({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
   appBar: AppBar(
     leading: Icon(Icons.arrow_back_ios),
   ),
      body: Padding(
        padding: EdgeInsets.symmetric(horizontal: 10.w, vertical: 15.h),
        child: Column(
          children: [
            SizedBox(
              height: 10.h,
            ),
            Expanded(
              child: buildGridViewTips(),
            ),
          ],
        ),
      ),
    );
  }


  Widget buildGridViewTips() {
    return Container(
      decoration: BoxDecoration(borderRadius: BorderRadius.circular(8.r)),
      child: GridView.builder(
          gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
              crossAxisCount: 2,
              crossAxisSpacing: 2,
              mainAxisSpacing: 3,
              childAspectRatio: 0.9),
          itemCount:10,
          itemBuilder: (context, index) {
            return Container();
          }),
    );
  }
}
