import 'package:flutter/material.dart';



class RegisterScreen extends StatelessWidget {
  const RegisterScreen({Key? key}) : super(key: key);

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
                    expandedHeight: MediaQuery.of(context).size.height * 0.32,
                    floating: false,

                    iconTheme: IconThemeData(color: Colors.black,),
                    backgroundColor: Colors.transparent,
                    pinned: true,
                    flexibleSpace: Stack(
                      children: [
                         Positioned.fill(
                          child: Container(height: 29,width: 29,decoration: BoxDecoration(shape: BoxShape.circle,color: Colors.red),)
                          // FadeInImage(
                          //   image: AssetImage(iChildren),
                          //   placeholder: AssetImage(
                          //       iBackgroundImage),
                          //   fit: BoxFit.cover,
                          // ),
                        ),
                        Positioned(
                          bottom: -7,
                          left: 0,
                          right: 0,
                          child: Container(
                            height: 33,
                            decoration:  BoxDecoration(
                                color: Colors.black,
                                borderRadius: BorderRadius.vertical(
                                  top: Radius.circular(40),
                                ),
                            ),
                          ),
                        )
                      ],
                    )),
              ];
            },
            body: Container(
             color: Colors.white,
            ),
          ),
        ),
      ],
    );
  }
}


