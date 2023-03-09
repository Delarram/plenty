import 'package:flutter/material.dart';


import '../../resources/color_const.dart';
import '../../widgets/custom_button.dart';
import '../../widgets/custom_text.dart';


class HomeDetailBodySection extends StatelessWidget {
  const HomeDetailBodySection({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Padding(
        padding: const EdgeInsets.all(18),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisSize: MainAxisSize.min,
          children: [
            const CustomTextView(
              text: "Make Ur Account ",
              fontColor: cBackGroundOne,
              fontSize: 17,
              fontWeight: FontWeight.w700,
            ),
            const CustomTextView(
              text:
              "U can choose your fav books",
              fontColor: cBackGroundThree,
            ),

            CustomButtonView(
                width: double.infinity,
                height: 45,
                borderRadius: 20,
                text: "Send OTP",
                buttonColor: cPrimaryOne,
                fontColor: Colors.white,
                onPressed: () {
                }),
            const SizedBox(
              height: 100,
            ),
          ],
        ),
      ),
    );
  }
}
