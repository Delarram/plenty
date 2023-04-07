import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:newpj/widgets/custom_text.dart';

class PopularDetail extends StatelessWidget {
  const PopularDetail({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: CustomTextView(text: "hello",),
      ),
      body: SingleChildScrollView(
        child: Column(children: [
          SizedBox(
            height: 0.4.sh,
            width: double.infinity,
            child: CachedNetworkImage(
              height: double.infinity,
              fit: BoxFit.fill,
              imageUrl: "",
              progressIndicatorBuilder:
                  (context, url, downloadProgress) => Center(
                child: CircularProgressIndicator(
                    value: downloadProgress.progress),
              ),
              errorWidget: (context, url, error) =>
              const Icon(Icons.error),
            ),
          ),
        ],),
      ),
    );
  }
}
