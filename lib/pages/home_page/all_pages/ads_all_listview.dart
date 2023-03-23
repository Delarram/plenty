import 'package:flutter/cupertino.dart';

class AdsListItem extends StatelessWidget {
  const AdsListItem({
    Key? key,
    required this.adsList,
  }) : super(key: key);



  @override
  Widget build(BuildContext context) {
    return ListView.separated(
      physics: const NeverScrollableScrollPhysics(),
      shrinkWrap: true,
      itemCount: adsList.length,
      separatorBuilder: (BuildContext context, int index) {
        return SizedBox(
          height: 10.h,
        );
      },
      itemBuilder: (context, index) => Container(
        height: 140.h,
        width: double.infinity,
        child: ClipRRect(
          borderRadius: BorderRadius.circular(13.r),
          child: CachedNetworkImage(
            fit: BoxFit.fill,
            imageUrl: "",
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