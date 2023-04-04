import 'package:firebase_messaging/firebase_messaging.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:newpj/pages/home_page/ads_lc.dart';
import 'package:newpj/pages/home_page/best_seller.dart';
import 'package:newpj/pages/home_page/best_seller_listview.dart';
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


  void initState() {
    FirebaseMessaging.instance.getToken().then((newToken) {
      print("FCM Token");
      print(newToken);


    });
  }

  void requestPermission() async{
    FirebaseMessaging messaging = FirebaseMessaging.instance;
    NotificationSettings settings = await messaging.requestPermission(
      alert: true,
      announcement: false,
      badge: true,
      carPlay: false,
      criticalAlert: false,
      provisional: false,
      sound: true
    );

    if(settings.authorizationStatus == AuthorizationStatus.authorized){
      print("User granted permission");
    }else if(settings.authorizationStatus == AuthorizationStatus.provisional){
      print("User granted provisional permission");
    }else{
      print("User declined permission");
    }


  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: cBackGroundFive,
      body: NestedScrollView(
          headerSliverBuilder: (BuildContext context, bool innerBoxIsScrolled) {
            return <Widget>[
              SliverAppBar(
                leading: Builder(builder: (BuildContext context) {
                  return GestureDetector(
                    onTap: () {},
                    child: Container(
                      margin: const EdgeInsets.only(left: 10),
                      height: 20,
                      width: 20,
                      decoration: BoxDecoration(
                          shape: BoxShape.circle,
                          color: Colors.white,
                          border: Border.all(width: 3, color: Colors.yellow)),
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
                expandedHeight: MediaQuery.of(context).size.height / 3,
                floating: false,
                pinned: true,
                flexibleSpace: FlexibleSpaceBar(
                  centerTitle: true,
                  background: Container(
                    decoration: const BoxDecoration(color: cBackGroundSix),
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
              decoration: const BoxDecoration(
                borderRadius: BorderRadius.only(
                    topRight: Radius.circular(20),
                    topLeft: Radius.circular(20)),
                color: Colors.white,
              ),
              child: Column(
                children: [
                  const SummariesTitle(),
                  const SizedBox(height: 280, child: SummariesListview()),
                  Container(
                    height: 10,
                    width: double.infinity,
                    color: cBackGroundSix,
                  ),
                  const PopularBookTitle(),
                  const SizedBox(height: 280, child: PopularListview()),
                  Container(
                    height: 10,
                    width: double.infinity,
                    color: cBackGroundSix,
                  ),
                  const BestSellerTitle(),
                  const SizedBox(
                    height: 280,
                    width: double.infinity,
                    child: BestSellerListView(),
                  ),
                ],
              ),
            ),
          )),
    );
  }
}
