import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:newpj/widgets/custom_text.dart';

class AdsListItem extends StatelessWidget {
  const AdsListItem({
    Key? key, required this.imageList,

  }) : super(key: key);

final String imageList;

  @override
  Widget build(BuildContext context) {
    return ListView.separated(
      physics: const NeverScrollableScrollPhysics(),
      shrinkWrap: true,
      itemCount: imageList.length,
      separatorBuilder: (BuildContext context, int index) {
        return const SizedBox(
          height: 10,
        );
      },
      itemBuilder: (context, index) => Container(
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(20)
        ),
        height: 250,
        width: double.infinity,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: ClipRRect(
                borderRadius: BorderRadius.circular(20),
                child: CachedNetworkImage(
                  height: 180,
                  width: double.infinity,
                  fit: BoxFit.fill,
                  imageUrl: imageList,
                  progressIndicatorBuilder: (context, url, downloadProgress) =>
                      Center(
                        child:
                        CircularProgressIndicator(value: downloadProgress.progress),
                      ),
                  errorWidget: (context, url, error) => const Icon(Icons.error),
                ),
              ),
            ),
            const Flexible(
              child: Padding(
                padding: const EdgeInsets.symmetric(horizontal: 12),
                child: CustomTextView(text: "This is the book u have ever \nseen decide ur future\nseen decide ur future hello hello hello",fontWeight: FontWeight.w500,fontSize: 18,maxLine: 2,),
              ),
            )
          ],
        )
      ),
    );
  }
}