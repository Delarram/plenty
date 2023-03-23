import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

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
      itemBuilder: (context, index) => SizedBox(
        height: 140,
        width: double.infinity,
        child: ClipRRect(
          borderRadius: BorderRadius.circular(13),
          child: CachedNetworkImage(
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
    );
  }
}