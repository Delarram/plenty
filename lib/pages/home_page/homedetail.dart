import 'package:flutter/material.dart';
import 'package:newpj/widgets/custom_text.dart';



class HomeDetailScreen extends StatelessWidget {
  const HomeDetailScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Scaffold(
          body: NestedScrollView(
            headerSliverBuilder:
                (BuildContext context, bool innerBoxIsScrolled) {
              return [
                SliverAppBar(
                    expandedHeight: MediaQuery.of(context).size.height /4,
                    floating: false,
                    iconTheme: IconThemeData(color: Colors.black,),
                    backgroundColor: Colors.transparent,
                    pinned: true,
                    flexibleSpace: Positioned(
                      bottom: -7,
                      left: 0,
                      right: 0,
                      child: Container(
                        height: 33,
                        decoration:  BoxDecoration(
                            color: Colors.white,
                            borderRadius: BorderRadius.vertical(
                              top: Radius.circular(40),
                            ),
                        ),
                      ),
                    )),
              ];
            },
            body: Container(
             color: Colors.white,
              child: CustomTextView(text: "Hello",),
            ),
          ),
        ),
      ],
    );
  }
}


