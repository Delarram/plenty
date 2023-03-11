import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:newpj/pages/home_page/ads_lc.dart';
import 'package:newpj/pages/home_page/popular_book.dart';
import 'package:newpj/pages/home_page/popular_listview.dart';
import 'package:newpj/pages/home_page/summaries_listview.dart';
import 'package:newpj/pages/home_page/summeries_title.dart';
import '../../resources/color_const.dart';
import '../../widgets/custom_text.dart';

class Homepage extends StatefulWidget {
  const Homepage({
    Key? key,
  }) : super(key: key);

  @override
  State<Homepage> createState() => _HomepageState();
}

class _HomepageState extends State<Homepage> {
  @override
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: cBackGroundFive,
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
                          color: Colors.white,
                          border: Border.all(width: 3, color: cSecondaryOne)),
                    ),
                  );
                }),
                title: Builder(builder: (BuildContext context) {
                  return CustomTextView(
                    text: "This is the title",
                    fontColor: cBackGroundOne,
                    fontWeight: FontWeight.bold,
                    fontSize: 18.sp,
                  );
                }),
                iconTheme: const IconThemeData(
                  color: Colors.black,
                ),
                backgroundColor: cBackGroundWhite,
                expandedHeight: MediaQuery.of(context).size.height / 4,
                floating: false,
                pinned: true,
                flexibleSpace: FlexibleSpaceBar(
                  centerTitle: true,
                  background: Container(
                    decoration: const BoxDecoration(color: cBackGroundFive),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.end,
                      children: [
                        SizedBox(
                          height: 80,
                        ),
                        Flexible(child: LocalServiceItem()),
                      ],
                    ),
                  ),
                ),
              ),
            ];
          },
          body: SingleChildScrollView(
            child: Container(
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.only(
                      topRight: Radius.circular(20),
                      topLeft: Radius.circular(20)),
                  color:Colors.white,
              ),
              child: Column(
                children:  [
                  const SummariesTitle(),
                  const SizedBox(
                      height: 290,
                      child: SummariesListview()),
                  Container(height: 10,width: double.infinity,color: cBackGroundSix,),
                  const PopularBookTitle(),
                  const SizedBox(
                      height: 250,
                      child: PopularListview()),
                ],
              ),
            ),
          )
      ),
    );
  }
}
